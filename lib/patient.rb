require 'pry'

class Patient
    attr_accessor :name, :appointment, :doctor
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        new_appt = Appointment.new(date, self, doctor)
        new_appt
        
    end

    def appointments
        Appointment.all.select { |apt| apt.patient == self}
    end

    def doctors
        self.appointments.collect { |apt| apt.doctor }
    end

end
