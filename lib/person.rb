# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        # binding.pry
        
    end

    def happiness=(happiness)
        if(happiness < 0 || happiness > 10)
            @happiness = happiness.clamp(0,10)
        else
            @happiness = happiness
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if(hygiene < 0 || hygiene > 10)
            @hygiene = hygiene.clamp(0,10)
        else
            @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account = self.bank_account + amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend = Person.new(friend)
        self.happiness = self.happiness + 3
        friend.name.happiness = friend.name.happiness + 3
        "Hi #{friend.name.name}! It's #{self.name}. How are you?"
        # binding.pry
    end

    def start_conversation(friend, topic)
        friend = Person.new(friend)
        if topic == "politics"
            friend.name.happiness = friend.name.happiness - 2
            self.happiness = self.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.name.happiness = friend.name.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end

    end

end

# binding.pry