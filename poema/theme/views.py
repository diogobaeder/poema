from django.shortcuts import render

from mezzanine.blog.models import BlogPost
from mezzanine.pages.models import Page


def home(request):
    posts = (BlogPost.objects.prefetch_related('categories').all()
             .order_by('-publish_date')[:9])
    try:
        main_pillar = Page.objects.get(title='Pilares')
    except Page.DoesNotExist:
        pillars = []
    else:
        pillars = Page.objects.filter(parent=main_pillar)

    return render(request, 'index.html', {
        'posts': posts,
        'pillars': pillars,
    })
