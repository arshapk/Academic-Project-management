from django.shortcuts import render
from role.models import Role
from login.models import Login

# Create your views here.
def roles(request):


    if request.method == "POST":
        obj = Role()
        obv = Login()
        obv.type=request.POST.get("type")





        obj.t_id=1
        obj.r_id=2
        obv.uid=6
        obj.project_coordinator = request.POST.get("coo")
        obj.hod = request.POST.get("hod")
        obj.internal_guide = request.POST.get("Internal")
        obj.batch= request.POST.get("year")
        obj.date= request.POST.get("date")
        obj.save()
        obv.save()
    return render(request,'role/role.html')
def viewrole(request):

    objlist = Role.objects.all()
    context = {
        'objval': objlist,
    }

    return render(request,'role/viewrole.html',context)


