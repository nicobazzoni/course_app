class AddCourseToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :course, :string
  end
end
