require 'pry'

class Patient

    attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|ap| ap.patient == self }
  end

  def doctors
    Appointment.all.collect {|ap| ap.doctor}
  end

  def self.all
    @@all
  end

end
