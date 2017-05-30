from django.shortcuts import render

from mezzanine.blog.models import BlogPost


def home(request):
    posts = (BlogPost.objects.prefetch_related('categories').all()
             .order_by('-publish_date')[:9])

    return render(request, 'index.html', {
        'posts': posts,
    })
