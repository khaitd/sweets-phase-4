class VendorSweetsController < ApplicationController

def create
    vendor_sweet = VendorSweet.create!(vendor_sweet_params)
    if vendor_sweet.valid?
        render json: vendor_sweet, status: :created
    else
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end


def destroy
    vendor_sweet = VendorSweet.find_by(id: params[:id])
    if vendor_sweet
        vender_sweet.destroy
        head :no_content
    else
        render json: { error: "VendorSweet not found" }, status: :not_found
    end

end


end

private

  def vendor_sweet_params
    params.permit(:price, :vendor_id, :sweet_id)
  end