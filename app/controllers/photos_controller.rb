class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end


  def show
  @id = params["id"]

    i = Photo.find(@id)

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


  def destroy
    id = params["id"]

    i = Photo.find(id)

    i.destroy

    redirect_to("http://localhost:3000")
  end


  def edit_form
    @id = params["id"]

    i = Photo.find(@id)

    @i = i.inspect

    @img_src = i.source

    @desc = i.caption

    render("/photos/edit_form.html.erb")
  end


  def update_row
    id = params["id"]

    i = Photo.find(id)

    i.caption = params["caption"]
    i.source = params["url"]

    i.save

    redirect_to("http://localhost:3000")
  end
end
