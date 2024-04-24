<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\DB;
use App\Enums\PropertyType;

class ApiCategoryController extends Controller
{
    private $categoryIds = [
        '1',
        '9'
    ];

    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        $categories = Category::whereIn('id', $this->categoryIds)->orWhereNotNull('parent_id')->get()->toArray();
        $ret = $this->recursiveCategory($categories);
        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param array $categories
     * @param $parentId
     * @return array
     */
    public function recursiveCategory(array $categories, $parentId = null): array
    {
        $result = [];
        foreach ($categories as $category) {
            if ($parentId == $category['parent_id']) {
                $category = [
                    'label' => $category['name'],
                    'key' => $category['id'],
                    'parent_id' => $category['parent_id'],
                    'children' => $this->recursiveCategory($categories, $category['id']),
                ];
                $result[] = $category;
            }
        }
        return $result;
    }

    /**
     * Lấy danh sách property theo id category
     * @param int $id
     * @return JsonResponse
     */
    public function getProperties(int $id): JsonResponse
    {
        $properties = Category::with('properties.property_values')->find($id);
        if (!$properties) {
            return $this->sendResponseSuccess();
        }
        $properties['propertyType'] = collect(PropertyType::getInstances())->map(function ($instance) {
            return [
                'value' => $instance->value,
                'description' => $instance->description,
            ];
        })->toArray();
        return $this->sendResponseSuccess($properties->toArray());
    }
}
