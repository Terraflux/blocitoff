class ItemsController < ApplicationController

  def create
  	@user = current_user
  	@item = Item.new(item_params)
  	@item.user = @user
  	if @item.save
  		flash[:notice] = "Item Saved"
  	else
  		flash[:error] = "Save Failed"
  	end

  end


  private
  def item_params
  	params.require(:item).permit(:name)
  end

end
