from django.http import HttpResponse, Http404
from django.shortcuts import render, render_to_response, redirect
from aqar.models import property, UserProfile, proj, pr_property, notifier, DelListing
from forms import prop_search_form, prop_insert_form, EditUser
from django.contrib.auth.decorators import login_required


# home page
def index(request):
    form = prop_search_form(initial={'city': 'cairo', 'type': 'for_sell', 'category': 'apartment'})
    context = {
        'form': form
    }
    return render(request, 'index.html', context)


# searching for properties
def properties(request):
    if 'category' in request.POST:
        pcategory = request.POST['category']
        ptype = request.POST['type']
        pcity = request.POST['city']
        pmin_price = int(request.POST['min_price'])
        pmax_price = int(request.POST['max_price'])
        props = property.objects.filter(category=pcategory, type=ptype, city=pcity, price__lte=pmax_price,
                                        price__gte=pmin_price)
    else:
        props = property.objects.all()

    form = prop_search_form(initial={'city': 'cairo', 'type': 'for_sell', 'category': 'apartment'})
    context = {
        'form': form,
        'properties': props
    }
    return render(request, 'properties.html', context)


# show property details
@login_required
def property_details(request, id):
    try:
        prop = property.objects.get(id=id)
    except:
        raise Http404("Property not found")
    return render(request, 'property_details.html', {'property': prop})


#show all projects
@login_required
def projects(request):
    projs = proj.objects.all()
    return render(request, 'projects.html', {'projects': projs})


# show project details
@login_required
def project_details(request, id):
    try:
        proj = property.objects.get(id=id)
    except:
        raise Http404("Project not found")
    return render(request, 'project_details.html', {'project': proj})


# add property
@login_required
def add_property(request):
    if request.method == "POST":

        form = prop_insert_form(request.POST)
        if form.is_valid():
            prop = form.save(commit=False)
            prop.user_id = request.user
            prop.save()

    form = prop_insert_form()

    return render(request, 'add_property.html', {'form': form})


# edit property
@login_required
def edit_property(request, id):
    try:
        prop = property.objects.get(pk=id)
        form = prop_insert_form(instance=prop)
    except:
        raise Http404("Project not found")
    if request.method == "POST":
        form = prop_insert_form(request.POST, instance=prop)
        if form.is_valid():
            prop = form.save(commit=False)
            prop.user_id = request.user
            prop.save()
    else:
        form = prop_insert_form(instance=prop)
    return render(request, 'edit_property.html', {'form': form})


# add project
@login_required
def project(request):
    return render(request, 'add_project.html')


# add project property 1
@login_required
def add_project(request):
    if request.method == 'POST':
        pro_name = request.POST['p_n']
        u_email = request.POST['u_email']
        p_loc = request.POST['p_loc']
        p_details = request.POST['p_details']
        p_services = request.POST['p_services']
        p_fac = request.POST['p_fac']
        p_price = request.POST['p_price']
        #  u_id=request.POST['u_id']
        p_pic = request.FILES.get('p_pic')
        obj = proj(Pro_Name=pro_name, detailes=p_details, location=p_loc, services=p_services, facilities=p_fac,
                   img=p_pic, exp_price=p_price, p_email=u_email, user_id_id=request.user.id)
        obj.save()

    return render(request, 'add_property2.html')


# add project property 2
@login_required
def add_project_property(request):
    request.session['list_type'] = request.POST.get('listing_type')
    request.session['list_section'] = request.POST.get('List_Section')
    request.session['city'] = request.POST.get('city')
    request.session['area'] = request.POST.get('area')
    request.session['street'] = request.POST.get('Street')
    return render(request, 'add_property_1.html')
    #######################Page Two ##########################


# add project property 2
@login_required
def add_project_property_1(request):
    v = 1
    obj = pr_property(prop_type=request.session['list_type'], p_section=request.session['list_section'],
                      city=request.session['city'],
                      area=request.session['area'], street=request.session['street'], size=request.POST.get('size'),
                      title=request.POST.get('title'), description=request.POST.get('description'),
                      view=request.POST.get('view'),
                      rooms=request.POST.get('rooms'), floor=request.POST.get('floor'), Baths=request.POST.get('baths'),
                      year_bulit=request.POST.get('year'),
                      finish_type=request.POST.get('finish'), img=request.FILES.get('img'),
                      video=request.POST.get('video')
                      , project_id_id=v, sellerRole=request.POST.get('Seller_Role'),
                      payment=request.POST.get('payment_method'),
                      price=request.POST.get('price'), phone=request.POST.get('number'))
    print request.POST.get('img')
    obj.save()
    return render(request, 'add_project.html')


################################3To display Projects
###################First#############################


# show all projects
def get_data(request):
    query_results = proj.objects.all()
    return render_to_response("show_Products.html", {"project": query_results})


# show project details
@login_required
def display_project_data(request):
    delitem = proj.objects.get(Pro_Name=request.GET['project_name'])
    print delitem.Pro_Name
    project = {"project_Name": delitem.Pro_Name, "Location": delitem.location, "Description": delitem.detailes,
               "Services": delitem.services, "Payment": delitem.facilities}
    prop_data = pr_property.objects.all().filter(project_id_id=delitem.id)

    return render_to_response("show_Product_Details.html", {"project": project, "prop_project": prop_data})


# add project property
@login_required
def add_pro(request):
    return render(request, 'add_property2.html')


# add notification to notifications
@login_required
def AddNotify(request):
    form1 = prop_search_form()
    if request.method == 'POST':
        print 'test post method work '

    return render(request, 'notifications.html', {'form': form1})


# add notification to database
@login_required
def notifications(request):
    form1 = prop_search_form()
    if request.method == 'POST':
        print 'test post method work '
        print request.POST['category']
        print request.POST['min_price']
        print request.POST['type']
        print request.POST['city']
        print request.POST['max_price']
        category = request.POST['category']
        type = request.POST['type']
        city = request.POST['city']
        min_price = request.POST['min_price']
        max_price = request.POST['max_price']
        myNot = notifier(user_id_id=1, location=city, property_type=type, section=category, min_price=min_price,
                         max_price=max_price)
        myNot.save()
    noty = notifier.objects.all().filter(user_id=request.user.id)
    return render(request, 'notifications.html', {'noty': noty, 'form': form1})


# show properties list
@login_required
def listing(request):
    # pro=property.objects.all().filter(user_id=user_profile.user)
    pro = property.objects.all().filter(user_id=request.user.id)
    allProjectDeleted = DelListing.objects.all().filter(user_id=request.user.id)
    return render_to_response('listing.html', {'pro': pro, 'allProjectDeleted': allProjectDeleted})
    # return render(request,"listing.html")


# delete property from list
@login_required
def delFormListing(request, uid):
    delitem = property.objects.get(id=uid)
    titleD = delitem.title
    categoryD = delitem.category
    sizeD = delitem.size
    priceD = delitem.price
    saveData = DelListing(user_id_id=request.user.id, title=titleD, propertyType=categoryD, size=sizeD, price=priceD)
    saveData.save()
    property.objects.filter(id=uid).delete()
    # return render_to_response('listing.html')
    return redirect('listing')


# delete notifications
@login_required
def delFormNoty(request, uid):
    notifier.objects.filter(id=uid).delete()
    noty = notifier.objects.all().filter(user_id=request.user.id)
    # return  render_to_response('notifications.html',{'noty':noty})
    return redirect('notifications')


# edit user data
@login_required
def setting(request):
    if request.method == 'GET':
        form = EditUser(instance=request.user)
    elif request.method == 'POST':
        form = EditUser(request.POST, instance=request.user)
        if form.is_valid():
            form.save()
    return render(request, 'setting.html', {'form': form})


# show project property details
@login_required
def property_details(request, uid):
    get_pro = pr_property.objects.all().filter(project_id_id=uid)
    get_project = proj.objects.all().filter(id=uid)
    return render(request, "Display_Project_data.html", {"project_data": get_pro, "proj_data": get_project})


##################################################EDit project##########################################################
###################################################3Edit Project#################################################

# show user's projects
@login_required
def display_User_project(request):
    pro = proj.objects.all().filter(user_id_id=request.user.id)
    return render_to_response('User_Product.html', {'pro': pro})


##################################################EDit project##########################################################

# edit project
@login_required
def editProject(request, pid):
    pro = proj.objects.all().filter(id=pid)
    return render(request, 'edit_Project.html', {'pro': pro})


#######################################################################################################################

# edit project
@login_required
def edit_Pdata(request):
    pro_name = request.POST['p_n']
    u_email = request.POST['u_email']
    p_loc = request.POST['p_loc']
    p_details = request.POST['p_details']
    p_services = request.POST['p_services']
    p_fac = request.POST['p_fac']
    p_price = request.POST['p_price']
    # u_id=request.POST['u_id']
    p_pic = request.FILES.get('p_pic')
    img = "/photos/" + p_pic
    proj.objects.all().filter(id=request.POST.get('p_id')).update(Pro_Name=pro_name, detailes=p_details, location=p_loc,
                                                                  services=p_services, facilities=p_fac, img=img,
                                                                  exp_price=p_price, p_email=u_email,
                                                                  user_id_id=request.user.id)
    return render(request, 'User_Product.html')
