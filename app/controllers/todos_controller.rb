class TodosController < ApplicationController

  before_action :common_functions



  # def index
  #   # here we have only one todo
  #   # @todo_item1 = "Milk"

  #   # now we will have array of todos
  #   # @todo_array = ['Milk','Butter','Tea','Coffee']

  #   # now we will fetch from data base
  #   # @todo_array = Todo.fetch_all_records
  #   # @new_todo = Todo.new
  #   # Read http://apidock.com/rails/ActionController/Base/render
  #   # render :nothing => true
  #   # render :index
  #   #render :action => "index", :layout => "ghanshyam"

  #   # this will not execute the method , it will only render the view
  #   #render :action => "delete"

  #   # this will execute the method first and then go to view
  #   #redirect_to :action => 'deleted'
  # end

  def add
    # this will not execute because it will not execute the method so instalce variable wont be present in view and it will show error
    # render :index
    #@todo = Todo.create(todo_item:params[:todo_text])
    @todo = Todo.create(todo_item: params[:todo][:todo_item])
    unless @todo.valid?
      flash[:error] = @todo.errors.full_messages.join("<br>").html_safe
    else
      flash[:success] = ("Todo added successfully ").html_safe
   end
   redirect_to :action => 'index'
  end

  def complete
    if params["todos_checkbox"].nil?
      flash[:error] = ("No todo item selected").html_safe
    else
      todos = Todo.find(params["todos_checkbox"])
      Todo.update_checkbox(todos)
    end
    redirect_to :action => 'index'
  end

  def not_complete
    Todo.not_completed(params[:todo_item])
    redirect_to :action => 'index'
  end

  def destroy
    Todo.delete_item params[:todo_item]
    flash[:success] = ("Todo deleted successfully ").html_safe
    redirect_to :action => 'index'
  end

  private

    def common_functions
      @todo_array = Todo.fetch_all_records
      @new_todo = Todo.new
    end

end
