class StudentsController < ApplicationController

    def index 
        @students = Student.all 
    end 

    def show 
        @students = Student.find(params[:id])
    end 
    
    def new 
        @student = Student.new 
    end 

    def create 
        @student = Student.new 
        @student.student = params[:first_name]
        @student.student = params[:last_name]
        @student.save 
        redirect_to student_path(@student)
    end 
    
    def edit 
    end 

    def update 
    end 

end
