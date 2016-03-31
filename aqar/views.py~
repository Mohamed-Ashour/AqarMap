from django.http import HttpResponse, Http404
from django.shortcuts import render
from aqar.models import property, user_profile, User, project, project_property


def index(request):
    return render(request, 'index.html')


def properties(request):
    props = property.objects.all()
    return render(request, 'properties.html', {'properties':props})


def property_details(request, id):
    try:
        prop = property.objects.get(id=id)
    except:
        raise Http404("Property not found")
    return render(request, 'property_details.html', {'property':prop})


def login(request):
    return render(request, 'login.html')


def logout(request):
    return render(request, 'logout.html')


def register(request):
    return render(request, 'register.html')


def projects(request):
    projs = project.objects.all()
    return render(request, 'projects.html', {'projects':projs})


def project_details(request, id):
    try:
        proj = property.objects.get(id=id)
    except:
        raise Http404("Project not found")
    return render(request, 'project_details.html', {'project':proj})


def add_property(request):
    return render(request, 'add_property.html')


def add_project(request):
    return render(request, 'add_project.html')


def notifications(request):
    return render(request, 'notifications.html')


def listing(request):
    return render(request, 'listing.html')


