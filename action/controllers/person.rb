class PeopleController < ApplicationController

    def new 
        @person = Person.new
    end 

    def create
        @person = Person.new(person_params)
        if @person.save
            session[:person_id] = @person.id
        else 
            flash[:message] = "Incorrect Password or Email"
        end 
    end 

    def show
        if logged_in?
            @user = current_user
        end 
    end 


    private
    
    def person_params 
        params.require(:params).permit(:address, :first_name, :middle_name, :last_name, :email, :phone_number, :tin_last4)
    end

end 