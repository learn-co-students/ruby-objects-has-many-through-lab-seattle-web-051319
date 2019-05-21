require 'pry'

class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    #binding.pry
    Appointment.all.select {|ap| ap.doctor == self}

  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    Appointment.all.collect do |p|
      # binding.pry
      p.patient
    end
  end

  def self.all
    @@all
  end

end
