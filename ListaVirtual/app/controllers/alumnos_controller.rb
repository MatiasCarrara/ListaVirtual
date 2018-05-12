class AlumnosController < ApplicationController

  def index
    @alumnos = Alumno.all
  end

  def show
    @alumno = Alumno.find(params[:id])
  end

  def new
  end

  def create
    @alumno = Alumno.new(alumno_params)
    if @alumno.save
      redirect_to @alumno
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def alumno_params
    params.require(:alumno).permit(:title, :text)
  end

end
