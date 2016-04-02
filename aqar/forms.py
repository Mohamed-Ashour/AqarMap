from django import forms
from models import property

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