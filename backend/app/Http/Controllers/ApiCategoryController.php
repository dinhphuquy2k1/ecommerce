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
        $categories = Category::all()->toArray();
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
        $properties = Category::with('properties')->find($id);
        if (!$properties) {
            return $this->sendResponseSuccess();
        }
        return $this->sendResponseSuccess($properties->toArray());
    }
}
