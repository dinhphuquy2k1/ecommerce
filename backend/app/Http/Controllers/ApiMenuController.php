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
        return $this->sendResponseSuccess(Menu::with('items')->whereNull('parent_id')->get()->toArray());
    }
}
