class BootAppsController < ApplicationController
    before_action :set, only: [ :show, :update, :destroy, :edit ]
    
    def index
        @boot_apps= BootApp.all
    end
    
    
    def new
        @boot_app= BootApp.new
    end
    
    
    def create
        @boot_app= BootApp.create(function_params)
        if @boot_app.save
            redirect_to new_boot_app_path
        else
            render 'new'
        end
    end
    
    
    def edit
        # @boot_app=BootApp.find(params[:id])
    end
    
    
    def update
        # @boot_app=BootApp.find(params[:id])
        if @boot_app.update(function_params)
        redirect_to boot_apps_path
    else
        render 'edit'
        end
    end
    
    
    def show 
        #  @boot_app=BootApp.find(params[:id])
    end
    
    
    def destroy
        #  @boot_app=BootApp.find(params[:id])
         @boot_app.destroy
         redirect_to boot_apps_path, notice:"you have deleted a blog"
    end
    
    
    private
    def function_params
        params.require(:boot_app).permit(:name, :email, :content)
    end
    
    def set 
       @boot_app= BootApp.find(params[:id])
    end
        
    
    
end
