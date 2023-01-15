from django import forms
from foodapp.models import Userdetails
from foodapp.models import Image

class UserInfo(forms.ModelForm):
    class Meta:
        model = Userdetails
        fields = "__all__"

        
class ImageUpload(forms.ModelForm):
    class Meta:
        model=Image
        fields="__all__"
        
        
class LoginForm(forms.Form):
    username = forms.CharField(max_length=63)
    password = forms.CharField(max_length=63, widget=forms.PasswordInput)