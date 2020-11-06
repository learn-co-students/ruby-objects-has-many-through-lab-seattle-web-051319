class Doctor 
  
  attr_accessor :name, :patients, :appointments 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    @appointments << appt
    @patients << patient
    return appt
  end
  
  def self.all
    return @@all
  end
    
end