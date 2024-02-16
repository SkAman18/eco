from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth import views as auth_view
from . forms import LoginForm,MyPasswordResetForm

urlpatterns = [
    path("", views.home,name="home"),
    path("about/",views.about,name="about"),
    path("category/<slug:val>", views.CategoryView.as_view(),name="category"),
    path("category-title/<val>", views.CategoryTitle.as_view(),name="category-title"),
    path("product-detail/<slug:pk>", views.ProductDetail.as_view(),name="product-detail"),
    path("profile/", views.ProfileView.as_view(), name="profile"),
    path('add_to_cart/<int:product_id>/', views.add_to_cart, name='adddcart-page'),
    path("cart/", views.viewCart, name="viewcart"),
    path('remove/<int:id>/', views.remove_cart, name='remcart-page'),
    path("order/", views.viewOrders, name="order-page"),
    path("initiate-payment/", views.initiate_payment, name="initiate_payment"),
    path("payment-success/", views.payment_success, name="payment_success"),
    path("payment-failed/", views.payment_failed, name="payment_failed"),
    

    path("registration/", views.CustomerRegistrationView.as_view(),name="customerregistration"),
    path("accounts/login/", auth_view.LoginView.as_view(template_name="app/login.html",authentication_form=LoginForm) , name="login"),
    path("password_reset/", auth_view.PasswordResetView.as_view(template_name="app/password_reset.html",form_class=MyPasswordResetForm) , name="password_reset"),
    path("logout/", auth_view.LogoutView.as_view(next_page='login'), name="logout"),


]+static (settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
