class ItemsController < ApplicationController
    before_action :redirect_user
    # # Routed from POST /items/:id/add_to_cart
    # def add_to_cart
    # # Get the item from the path
    #     @item = Item.find(params[:id])
   
    # # Load the cart from the session, or create a new empty cart.
    #     cart = session[:cart] || []
    #     cart << @item.id
   
    #     # Save the cart in the session.
    #     session[:cart] = cart
    # end

    private
    def item_params
    end

end
