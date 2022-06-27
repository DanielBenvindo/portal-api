class EscolasController < ApplicationController
  before_action :set_escola, only: %i[ show update destroy ]

  # GET /escolas
  def index
    @escolas = Escola.all

    render json: @escolas
  end

  # GET /escolas/1
  def show
    render json: @escola
  end

  # POST /escolas
  def create
    @escola = Escola.new(escola_params)

    if @escola.save
      render json: @escola, status: :created, location: @escola
    else
      render json: @escola.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /escolas/1
  def update
    if @escola.update(escola_params)
      render json: @escola
    else
      render json: @escola.errors, status: :unprocessable_entity
    end
  end

  # DELETE /escolas/1
  def destroy
    @escola.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escola
      @escola = Escola.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def escola_params
      params.require(:escola).permit(:cnpj, :nome, :end, :cep, :tel, :diretor, :email)
    end
end
