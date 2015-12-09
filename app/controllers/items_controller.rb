class ItemsController < ApplicationController

  def create
  	@user = current_user
  	@item = Item.new(item_params)
  	@item.user = @user
  	@new_item = Item.new
  	if @item.save
  		flash[:notice] = "Item Saved"
  	else
  		flash[:error] = "Save Error"
  	end

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  def destroy
  	@item = Item.find(params[:id])
  	if @item.destroy
  		flash[:notice] = "Item Deleted"
  	else
  		flash[:error] = "Delete Error"
  	end

  	respond_to do |format|
  		format.html
  		format.js
  	end

  end

  private
  def item_params
  	params.require(:item).permit(:name)
  end

end
