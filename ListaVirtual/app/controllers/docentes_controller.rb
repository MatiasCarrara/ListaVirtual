class DocentesController < ApplicationController

  def index
    @docentes = Docente.all
  end

  def show
    @docente = Docente.find(params[:id])
  end

  def new
  end

  def edit
    @docente = Docente.find(params[:id])
  end

  def create
    @docente = Docente.new(docente_params)
    if @docente.save
      redirect_to @docente
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    @docente = Docente.find(params[:id])

    if @docente.update(docente_params)
      redirect_to @docente
    else
      render 'edit'
    end
  end

  def destroy
    @docente = Docente.find(params[:id])
    @docente.destroy

    redirect_to docentes_path
  end

  private

  def docente_params
    params.require(:docente).permit(:nombre, :apellido, :materia, :clases)
  end

end
