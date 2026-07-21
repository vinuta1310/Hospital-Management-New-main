class DashboardController < ApplicationController
  def index
  end

  def hospitals
    @hospitals = Hospital.all
  end

  def doctors
    @doctors = Doctor.all
  end

  def patients
    @patients = Patient.all
  end
end
