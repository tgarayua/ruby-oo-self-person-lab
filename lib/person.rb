require 'pry'

class Person

    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def happiness
        @happiness = 10 if @happiness > 10 
        @happiness = 0 if @happiness < 0 
        @happiness
    end


    def hygiene
        @hygiene = 10 if @hygiene > 10 
        @hygiene = 0 if @hygiene < 0 
        @hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene +=  4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

end