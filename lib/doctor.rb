require 'pry'

class Doctor
    attr_accessor :name, :patient, :appointment
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
      new_apt = Appointment.new(date, patient, self)
      new_apt
    end

    def appointments
        Appointment.all.select { |apt| apt.doctor == self}
    end

    def patients
     patt = Appointment.all.select { |pat| pat.doctor == self}
        patt.map { |pat| pat.patient }
    end

end
