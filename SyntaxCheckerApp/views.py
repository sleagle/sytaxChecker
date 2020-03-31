from django.shortcuts import render
from django.http import HttpResponse
from SyntaxCheckerApp.validate_grammar import validate_grammar


# Create your views here.
def hi(request):
    return render(request, 'SyntaxCheckerApp/app.html')


def checksyntax(request):
    sentence = str(request.POST["txtArea"])

    sentence_breakdown = sentence.split()
    sentence_len = sentence_breakdown.__len__()

    response_obj = validate_grammar(sentence_breakdown, sentence_len)

    return render(request, 'SyntaxCheckerApp/response.html',  {'responseObj': response_obj, 'request': sentence})
