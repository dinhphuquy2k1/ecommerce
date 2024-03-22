from django.db import models
from core.models import BaseModel
from common.enums.PropertyEnum import PropertyType


# Loại sản phẩm
class Category(BaseModel):
    name = models.CharField(max_length=255, blank=False, null=False)
    parent = models.ForeignKey('self', related_name='children', on_delete=models.CASCADE, null=True, blank=True)
    description = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'categories'

    def __str__(self):
        return self.name


# Loại sản phẩm
class Property(BaseModel):
    name = models.CharField(max_length=255, null=False, blank=False)  # tên thuộc tính
    type = models.IntegerField(default=PropertyType.TEXT.value, null=False,
                               blank=False)  # loại thuộc tính (radio, checkbox, ...)
    categories = models.ManyToManyField('Category', through='CategoryProperty', related_name='properties')

    class Meta:
        db_table = 'properties'

    def __str__(self):
        return self.name


class CategoryProperty(BaseModel):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    property = models.ForeignKey(Property, on_delete=models.CASCADE)
    required = models.BooleanField(default=False)

    class Meta:
        db_table = 'categories_properties'


class PropertyValue(BaseModel):
    property = models.ForeignKey(Property, related_name='property_values', on_delete=models.CASCADE)
    value = models.CharField(max_length=255)

    class Meta:
        db_table = 'property_values'
