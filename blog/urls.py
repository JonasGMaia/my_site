from django.urls import path
from blog import views

urlpatterns = [
    path('', views.PostView.as_view()),
    path('post/<slug:slug>/', views.PostDetail.as_view())
]