class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end


  def show
    id = params["id"]

    i = Photo.find(id)

    @img_src = i.source

    @desc = i.caption

  end


  def new_form
    render ("/photos/new_form.html.erb")
  end


  def create
    p = Photo.new
    p.source = params["url"]
    p.caption = params["caption"]

    if p.source != nil
      p.save
    end

    redirect_to("http://localhost:3000")
  end
end
