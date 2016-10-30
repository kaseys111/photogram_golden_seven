Rails.application.routes.draw do

  get("/",              { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new",    { :controller => "photos", :action => "new_form" })

  get("/create", { :controller => "photos", :action => "create" })

  # Routes to READ photos
  get("/photos",        { :controller => "photos", :action => "index" })

  get("/photos/:id",    { :controller => "photos", :action => "show" })


end
