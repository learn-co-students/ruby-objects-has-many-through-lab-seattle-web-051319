class Appointment

    attr_reader :date, :patient, :doctor

    @@all = []

    def initialize(patient, date, doctor)
        # binding.pry
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end




end
