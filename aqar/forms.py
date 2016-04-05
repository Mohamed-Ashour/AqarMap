from django import forms
from models import property, UserProfile
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import get_user_model


class prop_search_form(forms.ModelForm):
    class Meta:
        model = property
        fields = (
            'category',
            'type',
            'city',
        )
        widgets = {
            'category': forms.Select(attrs={'class': 'form-control margin_10'}),
            'type': forms.Select(attrs={'class': 'form-control margin_10'}),
            'city': forms.Select( attrs={'class': 'form-control margin_10'}),
        }

class prop_insert_form(forms.ModelForm):
    class Meta:
        model = property
        fields = (
            'category',
            'type',
            'city',
            'area',
            'street',
            'sellerType',
            'title',
            'description',
            'services',
            'facilities',
            'size',
            'price',
            'payment_method',
            'picture',
        )

    def __init__(self, *args, **kwargs):
        super(prop_insert_form, self).__init__(*args, **kwargs)
        self.fields['category'].widget.attrs['class'] = 'form-control'
        self.fields['type'].widget.attrs['class'] = 'form-control'
        self.fields['city'].widget.attrs['class'] = 'form-control'
        self.fields['area'].widget.attrs['class'] = 'form-control'
        self.fields['street'].widget.attrs['class'] = 'form-control'
        self.fields['sellerType'].widget.attrs['class'] = 'form-control'
        self.fields['title'].widget.attrs['class'] = 'form-control'
        self.fields['description'].widget.attrs['class'] = 'form-control'
        self.fields['services'].widget.attrs['class'] = 'form-control'
        self.fields['facilities'].widget.attrs['class'] = 'form-control'
        self.fields['size'].widget.attrs['class'] = 'form-control'
        self.fields['price'].widget.attrs['class'] = 'form-control'
        self.fields['payment_method'].widget.attrs['class'] = 'form-control'
        self.fields['picture'].widget.attrs['class'] = 'form-control'

class UserRegisteration(forms.ModelForm):
    class Meta:
        model = get_user_model()
        fields = ['username', 'email' , 'first_name','last_name', 'phone', 'currancy', 'type', 'country','user_photo']
    def signup(self, request, user):
        user.phone = self.cleaned_data['phone']
        user.currancy = self.cleaned_data['currancy']
        user.type = self.cleaned_data['type']
        user.country = self.cleaned_data['country']
        user.user_photo = self.cleaned_data['user_photo']
        user.save()



class EditUser(forms.ModelForm):
    class Meta:        
        model = UserProfile
        fields = ['username', 'email' , 'first_name','last_name', 'phone', 'currancy', 'type', 'country']