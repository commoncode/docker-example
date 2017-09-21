from django.http import HttpResponse


def index(request):
    return HttpResponse(
        "<html>"
        "<head><title>Django in a Container</title></head>"
        "<body><h1>I'm in a Container!</h1></body>"
        "</html>"
    )
