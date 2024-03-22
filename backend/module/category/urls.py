from django.urls import path
from . import api

# router = DefaultRouter()
# router.register(r'category', CategoryAPIView.as_view(), basename='category')
# urlpatterns = router.urls

urlpatterns = [
    path('category/', api.category_list)
]
