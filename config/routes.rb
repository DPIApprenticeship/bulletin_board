Rails.application.routes.draw do

  get("/", {:controller => "posts", :action => "index"})

  get("/posts/new", {:controller => "posts", :action => "new"})
  get("/posts/create", {:controller => "posts", :action => "create"})
  get("/posts/edit/:id", {:controller => "posts", :action => "edit"})
  get("/posts/update/:id", {:controller => "posts", :action => "update"})
  get("/posts/delete/:id", {:controller => "posts", :action => "destroy"})
  get("/posts/:id", {:controller => "posts", :action => "show"})



end
