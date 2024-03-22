from .models import Category
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from .serializers import CategorySerializer
from rest_framework.response import Response


@api_view(['GET'])
def category_list(request):
    queryset = Category.objects.all()
    serializer = CategorySerializer(queryset, many=True)

    return Response(serializer.data)
