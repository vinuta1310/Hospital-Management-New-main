class HospitalsController < ApplicationController
  before_action :set_hospital, only: %i[show edit destroy update]
  def index
      @hospitals = Hospital.page(params[:page]).per(20)    
  end

  def new
    @hospital = Hospital.new
  end

  def show
    @doctors = @hospital.doctors
  end

  def edit
  end

  def create
    @hospital = Hospital.new(params_hospital)

    if @hospital.save
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update
    if @hospital.update(params_hospital)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @hospital.destroy
    else
      redirect_to hospitals_path, notice: "Hospital not found"
    end
  end

  private

  def params_hospital
    params.require(:hospital).permit(:name)
  end

  def set_hospital
    @hospital = Hospital.find(params[:id])
  end
end
