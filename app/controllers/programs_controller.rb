class ProgramsController < ApplicationController
    def index
        @program = Program.all 
    end

    def new
        @program = Program.new
    end

    def create
        @program = Program.new(program_params)
        if @program.save
            redirect_to(programs_path)
        else
            render :new
        end    
    end 
    
    def show
    end

end
