class InboundsController < ApplicationController
  def create
    @inbound = Inbound.create(inbound_params)
    if @inbound.save
      return head(200)
    else
      return head(422)
    end
  end


private

  def inbound_params
    params.require(:inbound).permit(:name, :email, :message, :site)
  end
end
