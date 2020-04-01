from django.shortcuts import render
from feedback.models import Feedback
from django.db import connection
import datetime
# Create your views here.
def addfeedback(request):
    objlist = Feedback.objects.filter(sender_id=request.session["student"])
    if request.method == "POST":
        obj = Feedback()
        obj.sender_id = request.session["student"]
        obj.feedback = request.POST.get("feedback")
        obj.f_date = datetime.date.today()
        obj.save()
    return render(request,'feedback/addfeedbackstud.html')

def viewstud(request):
    objlist = Feedback.objects.filter(sender_id=request.session["student"])
    # objlist = Feedback.objects.get(idd)
    context = {
        'objval': objlist,
    }

    return render(request,'feedback/feedbackstud.html',context)


def viewhod(request):
    objlist = connection.cursor()
    objlist.execute("SELECT * FROM student a ,feedback b WHERE a.st_id=b.sender_id")

    context = {
        'objval': objlist.fetchall(),

    # objlist = Feedback.objects.all()
    # context = {
    #     'objval': objlist,
    }
    return render(request,'feedback/feedbackhod.html',context)