<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\DB;

class ApiCategoryController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        $categories = Category::with('children')->whereNull('parent_id')->get()->toArray();
        $ret = [];
        foreach ($categories as $category) {
            $ret[] = [
                'key' => $category['id'],
                'label' => $category['name'],
                'children' => $this->recursiveCategory($category['children']),
            ];
        }
        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param $data
     * @return array
     */
    public function recursiveCategory($data): array
    {
        foreach ($data as &$category) {
            $category['key'] = $category['id'];
            $category['label'] = $category['name'];
            if ($category['children']) {
                $category['children'] = $this->recursiveCategory($category['children']);
            }
        }
        return $data;
    }

    /**
     * Lấy danh sách property theo id category
     * @param int $id
     * @return JsonResponse
     */
    public function getProperties(int $id): JsonResponse
    {
        $properties = Category::with('properties')->find($id);
        if (!$properties) {
            return $this->sendResponseSuccess();
        }
        return $this->sendResponseSuccess($properties->toArray());
    }
}
