class Patient
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

  def new_appointment(doctor,date)
    appointment = Appointment.new(date,self, doctor)
    #@appointments << appointment
  end

  def appointments
    Appointments.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.collect { |appointment| appointment.patient}
  end

end
