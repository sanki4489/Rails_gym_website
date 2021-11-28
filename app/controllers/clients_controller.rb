class ClientsController < ApplicationController
    def index
        @client = Client.all 
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save
            redirect_to(clients_path)
        else
            render :new
        end    
    end 

 private
  def client_params
  params.require(:client).permit(:program_id, :name, :phone, :address, :weight, :level, :sex, :height, :age, :goals, :email, :timings)
  end   
end
