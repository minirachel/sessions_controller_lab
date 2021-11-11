class SessionsController < ApplicationController

    def new
    end

    def create
        #if not logged in OR name is not valid
        #if name exists AND not an active session
        if !session.empty?
            redirect_to '/'
        else
            if params[:name] && !params[:name].empty?
                session[:name] = params[:name]
            else    
                redirect_to '/login'
            end
        end
    end

    def destroy
        if !session[:name].nil? 
            session.delete :name
        end
    end
end
