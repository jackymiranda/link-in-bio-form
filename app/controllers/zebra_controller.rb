class ZebraController < ApplicationController
  def insert_item

    render({ :template => "item_templates/backdoor" })
  end

  def create
    
    i = Item.new

    i.link_url = params.fetch("link_url")
    i.link_description = params.fetch("description")
    i.thumbnail_url = params.fetch("thumbnail")

    i.save

    #render({ :template => "item_templates/create" })

    redirect_to("/")  
  end
end
