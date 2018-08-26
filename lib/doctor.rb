class Doctor
  attr_accessor :name

  @@all = []
  #@appointments = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    appointment = Appointment.new(date,patient,self)
    #@appointments << appointment
  end

  def appointments
    Appointments.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect { |appointment| appointment.patient}
  end

end
