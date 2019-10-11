class UsersController < ApplicationController
    
    def new 
        @user = User.new
    end

    def create
        @user = User.new(params)
        puts params['user']
        #respond_to do |format|
            if @user.save
                #format.html { redirect_to @user, notice: 'Operação realizada com sucesso!'}
                redirect_to @user, notice: 'Operação realizada com sucesso!'
                #format.json { render :show, status: :ok, location: @user}
            else 
                #format.html { render :new }
                #format.json { render json: @user.errors, status: :unprocessable_entity }
                render :new
            end
        #end
    end 

    private
    def set_user
        @user = User.find(params[:id])
    end

    def params
        params.require(:user).permit(:full_name, :location, :email, :password, :bio)
    end

end