from django.contrib import admin
from . models import *

# Register your models here.
@admin.register(Product)
class ProductModelAdmin(admin.ModelAdmin):
    list_display=['id' , 'title' , 'discounted_price', 'category' , 'product_image']

@admin.register(Customer)
class CustomerModelAdmin(admin.ModelAdmin):
    list_display=['id' , 'user' , 'locality', 'city' , 'state', 'zipcode']   


#@admin.register(Cart)
#class CartModelAdmin(admin.ModelAdmin):
    #list_display=['id', 'user', 'product', 'quantity'] 
    

@admin.register(Order)
class OrderAdmin(admin.ModelAdmin):
    list_display=('user', 'address', 'product', 'quantity', 'payment_status')    
         