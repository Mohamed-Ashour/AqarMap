from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def logout(request):
    return render(request, 'logout.html')


def register(request):
    return render(request, 'register.html')


def projects(request):
    return render(request, 'projects.html')


def add_property(request):
    return render(request, 'add_property.html')


def add_project(request):
    return render(request, 'add_project.html')


def notifications(request):
    return render(request, 'notifications.html')

def listing(request):
    return render(request, 'listing.html')




