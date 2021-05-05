module Api
    module V1
        class UsersController < ApplicationController

            def index
              @users = User.all
              render json: @users
            end


            def show
              @user = User.find(params[:id])
              render json: @user
            end


            def create
            	@user = User.new(user_params)
            	if @user.save
            		render json: @user.to_json
                else
                	render json: { errord 'нихуя не работает'}
                end
            end



            private
 
            def user_params
            params.require(:user).permit(:name, :email, :password)
            end




            

        end
    end
end