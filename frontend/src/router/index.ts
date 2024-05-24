import {createRouter, createWebHistory, RouteRecordRaw} from 'vue-router'

const routes: Array<RouteRecordRaw> = [
    {
        path: '/',
        name: 'home',
        components: {
            home: () => import('@/views/user/HomeView.vue'),
        },
        children: [
            {
                path: '',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    content: () => import('@/views/user/components/Home.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: '/setting',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    menu: () => import('@/views/user/components/MenuSetting.vue'),
                    content: () => import('@/views/user/components/OrderHistory.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
        ],
    },
    {
        path: '/admin',
        name: 'admin',
        components: {
            home: () => import('@/views/admin/HomeView.vue'),
        },
        children: [
            {
                path: 'homepage',
                components: {
                    header: () => import('@/views/admin/components/Header.vue'),
                    content: () => import('@/views/admin/components/AddProduct.vue'),
                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                },
            },
            {
                path: 'dashboard',
                children: [
                    {
                        path: '',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'order',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/ProductList.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'product',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                ],
            },
            {
                path: 'product',
                children: [
                    {
                        path: '',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                    {
                        path: 'manage',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/ProductList.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'create',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                    {
                        path: 'batch',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                ],
            },
            {
                path: 'order',
                children: [
                    {
                        path: '',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'cancellation',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'return',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    }
                ],
            },
            {
                path: 'profile',
                children: [
                    {
                        path: 'seller-profile',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/SellerProfile.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        },
                    },
                    {
                        path: 'account-setting',
                        children: [
                            {
                                path: '',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'user-management',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/UserManagement.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'payment',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/Payment.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'qualification',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'tax-infomation',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'warehouse',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/WareHouse.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'holiday-mode',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'delegation-login',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'message-setting',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                        ]
                    }
                ],
            },
        ],
    },
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
