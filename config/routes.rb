Rails.application.routes.draw do

  get("/", {:controller => "posts", :action => "index"})

  get("/posts/new", {:controller => "posts", :action => "new"})
  get("/posts/create", {:controller => "posts", :action => "create"})
  get("/posts/:id", {:controller => "posts", :action => "show"})


end
