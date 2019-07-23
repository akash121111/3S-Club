class UserAddressesController < ApplicationController
    def update
        @user=User.find(session[:user_id])
        @user_address=UserAddress.find(params[:id])
        if @user_address.update(user_address_params)
            flash[:success]="Address Updated Successfully"
            redirect_to '/user_details/'+@user.user_detail.id.to_s+'/edit'
        else
            flash[:danger]=@user_address.errors.first[1]
            redirect_to '/user_details/'+@user.user_detail.id.to_s+'/edit'
        end
    end
    private

    def user_address_params
        params.require(:user_address).permit(:address_line_1,:address_line_2,:city,:pincode,:state,:country)
    end
end
