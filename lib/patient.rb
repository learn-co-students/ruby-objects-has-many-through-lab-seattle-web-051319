require "pry"
class Patient
attr_accessor :doctor, :appointment
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end


def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def doctors

  appointments.collect do |appointment|
    # binding.pry
    appointment.doctor
  end
end

end
