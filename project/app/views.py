from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.http import HttpRequest, HttpResponse
from app.models import Registration
from app.forms import Userinfo
from . import forms

# Create your views here.

def index(request):
    return render(request, "index.html")

def registration(request):
    return render(request, "website/registration.html")

def registration_website(request):
    return render(request, "registration form/index.html")


def insert1(request):
    if request.method == 'POST':
        fname = request.POST['fname']
        lname = request.POST['lname']
        uname = request.POST['uname']
        email = request.POST['email']
        password = request.POST['password']
        user = User.objects.create_user(first_name=fname, last_name=lname,
                                        username=uname, email=email, password=password)
        user.save()
        return render(request, "index.html")
    else:
        return HttpResponse('<script> alert("Submission Error...!!!") </script>')
    
    
    
    
def insert2(request):
    if request.method == "POST":
        form = Userinfo(request.POST)
        if form.is_valid():
            try:
                form.save()
                return redirect('regweb')

            except:
                pass
    else:
        form = Userinfo()
    return render(request, 'register.html', {'form': form})

    
    

