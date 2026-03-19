from django.http import HttpResponse
from django.views import generic
from blog.models import Post


class PostView(generic.TemplateView):
    template_name = "blog/index.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['posts'] = Post.objects.filter(status=1).order_by("-created_on")
        return context

class PostDetail(generic.DetailView):
    model = Post
    template_name = "post_detail.html"