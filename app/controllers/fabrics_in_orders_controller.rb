class FabricsInOrdersController < ApplicationController
  def index
    @fabrics_in_orders = FabricsInOrder.all

    render("fabrics_in_orders/index.html.erb")
  end

  def show
    @fabrics_in_order = FabricsInOrder.find(params[:id])

    render("fabrics_in_orders/show.html.erb")
  end

  def new
    @fabrics_in_order = FabricsInOrder.new

    render("fabrics_in_orders/new.html.erb")
  end

  def create
    @fabrics_in_order = FabricsInOrder.new

    @fabrics_in_order.order_id = params[:order_id]
    @fabrics_in_order.fabric_id = params[:fabric_id]

    save_status = @fabrics_in_order.save

    if save_status == true
      redirect_to("/fabrics_in_orders/#{@fabrics_in_order.id}", :notice => "Fabrics in order created successfully.")
    else
      render("fabrics_in_orders/new.html.erb")
    end
  end

  def edit
    @fabrics_in_order = FabricsInOrder.find(params[:id])

    render("fabrics_in_orders/edit.html.erb")
  end

  def update
    @fabrics_in_order = FabricsInOrder.find(params[:id])

    @fabrics_in_order.order_id = params[:order_id]
    @fabrics_in_order.fabric_id = params[:fabric_id]

    save_status = @fabrics_in_order.save

    if save_status == true
      redirect_to("/fabrics_in_orders/#{@fabrics_in_order.id}", :notice => "Fabrics in order updated successfully.")
    else
      render("fabrics_in_orders/edit.html.erb")
    end
  end

  def destroy
    @fabrics_in_order = FabricsInOrder.find(params[:id])

    @fabrics_in_order.destroy

    if URI(request.referer).path == "/fabrics_in_orders/#{@fabrics_in_order.id}"
      redirect_to("/", :notice => "Fabrics in order deleted.")
    else
      redirect_to(:back, :notice => "Fabrics in order deleted.")
    end
  end
end
