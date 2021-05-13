
class API::V1::UsersController < ApplicationController

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
            	  render json: { succes: true, user: @user }
              else
                render json: { error: @user.errors }, status: 422
              end
            end


            def update
              @user = User.find(params[:id])

              if @user.update(user_params)
                render json: @user
              else
                render json: { error: 'Unable to create User' }
              end
            end


            def destroy
              @user = User.find(params[:id])
              @article.destroy

              render json: @user
            end	


            private
 
            def user_params
            params.permit(:name, :email, :password, :password_confirmation)
            end




            

        end
   
