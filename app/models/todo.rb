# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  todo_item  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ActiveRecord::Base
end