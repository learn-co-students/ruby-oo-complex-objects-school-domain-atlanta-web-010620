class School 
    attr_accessor :roster
    def initialize(name) 
        @name = name 
        @roster = Hash.new
    end

    def add_student(name,grade)
        if @roster[grade].class != Array 
            @roster[grade]=[]
        end             
        @roster[grade] << name
    end

    def grade(grade) 
        @roster[grade]
    end

    def sort 
        @roster.sort.to_h
        @roster.each do |k,v|
            v.sort!
        end
        @roster 

    end
     


end
