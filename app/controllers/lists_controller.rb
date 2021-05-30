class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list), notice: 'List created'
    else
      render :new
    end
  end

  def destroy
    @list.destroy

    redirect_to lists_path, notice: 'List was successfully destroyed'
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:comment, :movie_id)
  end
end
