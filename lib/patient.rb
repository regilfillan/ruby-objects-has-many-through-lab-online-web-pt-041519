class Patient
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name= name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.appointments.
  end
  
end