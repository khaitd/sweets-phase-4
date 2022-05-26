class VendorsController < ApplicationController


    def index
        vendors = Vendor.all
        render json: vendors
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
           render json: vendor, serializer: VendorWithVenderSweetsSerializer
        else
            render json: { error: "Vendor not found" }, status: :not_found
        end   
    end


end
