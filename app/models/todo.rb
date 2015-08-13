# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  todo_item  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  completed  :boolean
#
class Todo < ActiveRecord::Base
  validates :todo_item, presence: true

  def self.fetch_all_records
    all
  end

  def self.update_checkbox todos
    todos.each do |todo_item|
      todo_item.update_checkbox
    end
  end

  def update_checkbox
    update(completed: true)
  end

  def self.not_completed todo
    find(todo).update(completed:false)
  end
end
