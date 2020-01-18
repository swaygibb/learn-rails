class Owner

    def name
        name = 'Foobar Gibbs'
    end

    def birthdate
        birthdate = Date.new(1985, 10, 12)
    end

    def countdown
        Rails.logger.debug 'DEBUG: entering owner countdown'
        today = Date.today
        birthday = Date.new(today.year, birthdate.month, birthdate.day)
        if birthday > today
            countdown = (birthday - today).to_i
        else
            countdown = (birthday.next_year - today).to_i
        end
    end

end