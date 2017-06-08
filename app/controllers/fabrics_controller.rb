class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all

    render("fabrics/index.html.erb")
  end

  def show
    @fabric = Fabric.find(params[:id])

    render("fabrics/show.html.erb")
  end

  def new
    @fabric = Fabric.new

    render("fabrics/new.html.erb")
  end

  def create
    @fabric = Fabric.new

    @fabric.diseno = params[:diseno]
    @fabric.peso = params[:peso]
    @fabric.ancho = params[:ancho]

    save_status = @fabric.save

    if save_status == true
      redirect_to("/fabrics/#{@fabric.id}", :notice => "Fabric created successfully.")
    else
      render("fabrics/new.html.erb")
    end
  end

  def edit
    @fabric = Fabric.find(params[:id])

    render("fabrics/edit.html.erb")
  end

  def update
    @fabric = Fabric.find(params[:id])

    @fabric.diseno = params[:diseno]
    @fabric.peso = params[:peso]
    @fabric.ancho = params[:ancho]

    save_status = @fabric.save

    if save_status == true
      redirect_to("/fabrics/#{@fabric.id}", :notice => "Fabric updated successfully.")
    else
      render("fabrics/edit.html.erb")
    end
  end

  def destroy
    @fabric = Fabric.find(params[:id])

    @fabric.destroy

    if URI(request.referer).path == "/fabrics/#{@fabric.id}"
      redirect_to("/", :notice => "Fabric deleted.")
    else
      redirect_to(:back, :notice => "Fabric deleted.")
    end
  end
end
