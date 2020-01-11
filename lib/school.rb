# code here!
require 'pry'
class School
   
    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        self.roster[grade] ||= []
        self.roster[grade] << name
        
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each { |grade, students| students.sort!}
    end

end
