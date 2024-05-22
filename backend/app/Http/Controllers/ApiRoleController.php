<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Role;

class ApiRoleController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        $roles = Role::with('permissions')->get()->toArray();
        foreach ($roles as &$role) {
            $role['permissions'] = implode(', ', array_column($role['permissions'], 'permission_name'));
        }
        return $this->sendResponseSuccess($roles);
    }
}
