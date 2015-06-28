class ChoresController < ApplicationController
  before_action :set_chore, only: [:show, :update, :destroy]

  # GET /chores
  # GET /chores.json
  def index
    @chores = Chore.all
    render json: @chores
  end

  # GET /chores/1
  # GET /chores/1.json
  def show
    render json: @chore
  end

  # POST /chores
  # POST /chores.json
  def create
    @chore = Chore.new(chore_params)

    if @chore.save
      render json: @chore, status: :created, location: @chore
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /chores/1
  # PATCH/PUT /chores/1.json
  def update
    @chore = Chore.find(params[:id])

    if @chore.update(chore_params)
      head :no_content
    else
      render json: @chore.errors, status: :unprocessable_entity
    end
  end

  # DELETE /chores/1
  # DELETE /chores/1.json
  def destroy
    @chore.destroy

    head :no_content
  end

  private

    def set_chore
      @chore = Chore.find(params[:id])
    end

    def chore_params
      params.require(:chore).permit(:description)
    end
end
