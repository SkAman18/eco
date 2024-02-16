from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm,UsernameField,PasswordChangeForm
from django.contrib.auth.models import User
from . models import Customer


class LoginForm(AuthenticationForm):
    username= UsernameField(widget=forms.TextInput(attrs={'autofocus':'true','class':'form-control','placeholder':'Enter username'}))
    password=forms.CharField(widget=forms.PasswordInput(attrs={'autocomplete':'currect-password','class':'form-control','placeholder':'Enter password'}))



class CustomerRegistrationForm(UserCreationForm):
    
    first_name=forms.CharField(label="First Name",
            widget=forms.TextInput(attrs={'class':'form-control border-primary','placeholder':'Enter first name'}))
    last_name=forms.CharField(label="Last Name",
            widget=forms.TextInput(attrs={'class':'form-control border-primary','placeholder':'Enter last name'}))
    username=forms.CharField(widget=forms.TextInput(attrs={'autofocus':'true','class':'form-control','placeholder':'Enter username'}))
    email=forms.EmailField(label="Email-ID",widget=forms.EmailInput(attrs={'class':'form-control'}))
    password1=forms.CharField(label="password",widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'Enter password'}))
    password2=forms.CharField(label="Confrim Password",widget=forms.PasswordInput(attrs={'class':'form-control','placeholder':'enter Confrim password'}))

class Meta:
        model = User
        fields = ['username','email','password1','password2']

class MyPasswordResetForm(PasswordChangeForm):
     pass     

class CustomerProfileForm(forms.ModelForm):
    class Meta:
         model = Customer
         fields = ['name' , 'locality', 'city' ,'mobile', 'state', 'zipcode']
         widgets = {
              'name': forms.TextInput(attrs={'class':'form-control'}),
              'locality': forms.TextInput(attrs={'class':'form-control'}),
              'city': forms.TextInput(attrs={'class':'form-control'}),
              'mobile': forms.NumberInput(attrs={'class':'form-control'}),   
              'state': forms.Select(attrs={'class':'form-control'}),   
              'zipcode': forms.NumberInput(attrs={'class':'form-control'}),   
            }
        
