class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.order('grade DESC').map do |s|
            s.grade
        end
    end

    def highest_grade
        render json: Student.all.order('grade DESC').first
    end

end
