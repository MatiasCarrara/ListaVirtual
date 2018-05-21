class AlumnosController < ApplicationController

  def index
    @alumnos = Alumno.all
  end

  def show
    @alumno = Alumno.find(params[:id])
  end

  def new
  end

  def edit
    @alumno = Alumno.find(params[:id])
  end

  def create
    @alumno = Alumno.new(alumno_params)
    if @alumno.save
      redirect_to @alumno
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    @alumno = Alumno.find(params[:id])

    if @alumno.update(alumno_params)
      redirect_to @alumno
    else
      render 'edit'
    end
  end

  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy

    redirect_to alumnos_path
  end

  private

  def alumno_params
    params.require(:alumno).permit(:nombre, :apellido)
  end

end
