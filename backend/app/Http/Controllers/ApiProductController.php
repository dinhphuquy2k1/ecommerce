<?php

namespace App\Http\Controllers;

use App\Models\Media;
use App\Models\Variant;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Brand;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;

class ApiProductController extends Controller
{

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        $dataValidator = Validator::make(
            $request->all(),
            [
                'medias' => 'required|array',
                'medias.*' => 'required|file|mimetypes:image/*,video/mp4|max:2048',
                'variants' => 'nullable|required_without:variant',
                'variant' => 'required_without:variants',
                'product' => 'required|json',
                'category_id' => 'required|exists:categories,id',
            ],
            [
                'medias.required' => 'Phương tiện không được để trống',
                'medias.array' => 'Phương tiện yêu cầu là 1 mảng',
                'medias.*.required' => 'Vui lòng tải lên ít nhất 1 phương tiện',
                'medias.*.mimetypes' => 'Phương tiện phải là hình ảnh hoặc video',
                'medias.*.max' => 'Kích thước file không được vượt quá :max kilobytes',
                'product.required' => 'Dữ liệu về sản phẩm không được trống',
                'product.json' => 'Dữ liệu sản phẩm phải là định dạng JSON',
                'category_id.required' => 'Id category không được để trống',
                'category_id.exists' => 'Id category không tồn tại',
            ]
        );

        if ($request['variant']) {
            $variantValidator = Validator::make(
                json_decode($request['variant'], true),
                [
                    'retailPrice' => 'required|numeric|max:999999999',
                    'quantity' => 'required|numeric|max:999999',
                ],
                [
                    'retailPrice.required' => 'Giá bán lẻ không được để trống',
                    'retailPrice.numeric' => 'Giá bán lẻ phải là một số',
                    'retailPrice.max' => 'Giá không được vượt quá :max',
                    'quantity.required' => 'Số lượng không được để trống',
                    'quantity.numeric' => 'Số lượng phải là một số',
                    'quantity.max' => 'Số lượng được vượt quá :max',
                ]
            );
        } else {
            $variantsValidator = Validator::make(
                json_decode($request['variants'], true),
                [
                    '*.variant_name_*' => 'required',
                    '*.variant_option_*' => 'required|string',
                    '*.retail_price' => 'required|numeric|max:999999999',
                    '*.sku_seller' => 'string|nullable',
                    '*.quantity' => 'required|numeric|max:999999',
                ],
                [
                    '*.variant_name_*.required' => 'Tên biến thể không được để trống',
                    '*.variant_option_*.required' => 'Giá trị biến thể không được để trống',
                    '*.retail_price.required' => 'Giá bán lẻ không được để trống',
                    '*.retail_price.numeric' => 'Giá bán lẻ phải là một số',
                    '*.retail_price.max' => 'Giá không được vượt quá :max',
                    '*.quantity.required' => 'Số lượng không được để trống',
                    '*.quantity.numeric' => 'Số lượng phải là một số',
                    '*.quantity.max' => 'Số lượng được vượt quá :max',
                ]
            );
        }

        $productValidator = Validator::make(
            json_decode($request['product'], true),
            [
                'product_name' => 'required|string',
                'description' => 'required|string',
                'use_sample_size' => 'boolean',
                'size_id' => 'nullable|exists:sizes,id',
                'brand.brand_name' => 'required|string',
            ],
            [
                'product_name.required' => 'Tên sản phẩm không được để trống',
                'size_id.exists' => 'Mã kích thước không tồn tại',
                'description.required' => 'Mô tả không được để trống',
            ]);

        if ($dataValidator->fails() || $productValidator->fails() || ($request['variant'] && $variantValidator->fails()) || ($request['variants'] && $variantsValidator->fails())) {
            $errors = [];
            if ($dataValidator->fails()) {
                $errors = $dataValidator->errors();
            }
            if ($productValidator->fails()) {
                $errors = array_merge($productValidator->errors()->toArray(), $errors);
            }
            if ($request['variant'] && $variantValidator->fails()) {
                $errors = array_merge($variantValidator->errors()->toArray(), $errors);
            }

            if ($request['variants'] && $variantsValidator->fails()) {
                $errors = array_merge($variantsValidator->errors()->toArray(), $errors);
            }
            return $this->sendResponse(ResponseAlias::HTTP_UNPROCESSABLE_ENTITY, $errors);
        }

        $medias = $request->file('medias');
        $product = json_decode($request['product'], true);
        $variants = $request['variants'] ? json_decode($request['variants'], true) : [];
        try {
            $mediaAttributes = [];
            foreach ($medias as $media) {
                $mediaAttributes[] = [
                    'media_url' => $media->store('images', 'public')
                ];
            }
            $product['brand'] = json_encode([
                'brand_name' => $product['brand']['brand_name'],
            ]);
            $product['category_id'] = $request['category_id'];
            $product['properties'] = $request['properties'] ?? null;
            // ko có biến thể
            if (!$product['has_variant']) {
                $variant = json_decode($request['variant'], true);
                $product['product_price'] = $variant['retailPrice'];
                $product['product_quantity'] = $variant['quantity'];
            }
            DB::beginTransaction();
            $productID = Product::insertGetId($product);
            foreach ($mediaAttributes as &$item) {
                $item['product_id'] = $productID;
            }
            Media::insert($mediaAttributes);

            // có biến thể
            if ($product['has_variant']) {
                foreach ($variants as &$variant) {
                    $variant = [
                        'content' => json_encode($variant),
                        'product_id' => $productID,
                        'variant_price' => $variant['retail_price'],
                        'variant_quantity' => $variant['quantity'],
                    ];
                }

            }

            Variant::insert($variants);
            DB::commit();
            return $this->sendResponseSuccess();
        } catch (\Throwable $th) {
            dd($th);
            DB::rollBack();
            return $this->sendResponseBadRequest();
        }
        return $this->sendResponseSuccess();
    }
}
