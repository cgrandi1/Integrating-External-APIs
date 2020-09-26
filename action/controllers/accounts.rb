 
class AccountController < ApplicationController
    def index
        @accounts = Acount.all
        render json: @accounts
    end

    def show 
        @account = Account.find(params[:id])
        render json: @account
    end

    private 

    def create
        @account = @person.accounts.new(account_params)
        if @account.save
            render json: @account
        else 
            render json: {error: 'Error Creating Account'}
    end 

    def destroy 
        @account = Account.find(params[:id])
        @account.destroy
        render json: @recipe
    end
end 