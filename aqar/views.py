from django.http import HttpResponse, Http404
from django.shortcuts import render, render_to_response
from aqar.models import property, user_profile, User, project, project_property
from forms import prop_search_form

def index(request):
    form = prop_search_form()
    context = {
        'form':form
    }
    return render(request, 'index.html', context)


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
    form = prop_search_form()
    return render(request, 'notifications.html', {'form':form})





def listing(request):
   # pro=property.objects.all().filter(user_id=user_profile.user)
    pro=property.objects.all().filter(user_id=1)
    #return HttpResponse(pro.title)
    return render_to_response('listing.html',{'pro':pro})
    #return render(request,"listing.html")


