from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.
def hi(request):
    return render(request, 'SyntaxCheckerApp/app.html')


def checksyntax(request):
    return HttpResponse("Hi")
