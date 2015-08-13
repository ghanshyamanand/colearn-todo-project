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

require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
