class Doctor
    
    attr_reader :name

    @@all = []

    def initialize(name)
        # binding.pry
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        # binding.pry
        Appointment.new(patient, date, self)
    end 

    def appointments
        Appointment.all.select do |appointment|
            # binding.pry
            appointment.doctor == self
        end
    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end


end