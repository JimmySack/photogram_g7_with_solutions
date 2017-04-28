class PicturesController < ApplicationController
  def new_form
    render("pic_templates/new_form.html.erb")
  end

  def create_row
# params lookk like : {"the_source" => "1" "the_caption" => "2"}
#create a new row for the photos table
#fill in its column values by pulling the information the user typed into the form out of the params hash
#save it

p = Photo.new
p.caption = params["the_caption"]
p.source = params ["the_source]"]
p.save


    render("pic_templates/create_row.html.erb")
  end

  def index
    @list_of_photos = Photo.all
    render("pic_templates/index.html.erb")
  end

  def show
    @my_photo = Photo.find(params["the_id"])
    render("pic_templates/show.html.erb")
  end

  def edit_form
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    render("pic_templates/update_row.html.erb")
  end

  def destroy_row
    render("pic_templates/destroy_row.html.erb")
  end
end
