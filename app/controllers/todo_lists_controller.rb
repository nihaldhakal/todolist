class TodoListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update]

  def index
    @list = TodoList.all
  end

  def new
    @list = TodoList.new
  end

  def create
    @list = TodoList.new(todo_list_params)
    respond_to do |format|
      if @list.save
        format.html { redirect_to  @list, notice: 'Todo list was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @list.update(todo_list_params)
        format.html { redirect_to @list, notice: 'Race was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    
  end

  private

  def set_list
    @list = TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:title, :description)
  end

end
