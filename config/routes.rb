Rails.application.routes.draw do

  get("/", {:controller => "posts", :action => "index"})

  get("/posts/new", {:controller => "posts", :action => "new"})


end
