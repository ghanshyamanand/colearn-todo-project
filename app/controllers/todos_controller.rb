class TodosController < ApplicationController
  def index
    # here we have only one todo
    # @todo_item1 = "Milk"

    # now we will have array of todos
    @todo_array = ['Milk','Butter','Tea','Coffee']
  end
end
