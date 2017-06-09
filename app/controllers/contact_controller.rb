class ContactController < ApplicationController
  def form
    render("contact.html.erb")
  end

  def edit_delete
    render("edit_delete.html.erb")
  end

end
