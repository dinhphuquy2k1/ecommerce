<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ApiMenuController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function getMenu(): JsonResponse
    {
        $menus = Menu::all()->toArray();
        $ret = $this->recursiveMenu($menus);
        return $this->sendResponseSuccess($ret);
    }

    public function recursiveMenu(array $menus, $parentId = null): array
    {
        $result = [];
        foreach ($menus as $menu) {
            if ($parentId == $menu['parent_id']) {
                $category = [
                    'key' => $menu['id'],
                    'id' => $menu['id'],
                    'label' => $menu['label'],
                    'icon' => $menu['icon'],
                    'route' => $menu['route'],
                    'display' => $menu['display'],
                    'parent_id' => $menu['parent_id'],
                    'items' => $this->recursiveMenu($menus, $menu['id']),
                ];
                $result[] = $category;
            }
        }
        return $result;
    }
}
