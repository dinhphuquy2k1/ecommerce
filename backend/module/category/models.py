from django.db import models
from core.models import BaseModel


# Loại sản phẩm
class Category(BaseModel):
    name = models.CharField(max_length=255, blank=False, null=False)
    parent = models.ForeignKey('self', related_name='children', on_delete=models.CASCADE, null=True, blank=True)
    description = models.TextField(blank=True, null=True)

    class Meta:
        db_table = 'categories'

    def __str__(self):
        return self.name
