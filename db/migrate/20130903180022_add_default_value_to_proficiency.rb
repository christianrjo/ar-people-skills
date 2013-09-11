class AddDefaultValueToProficiency < ActiveRecord::Migration
  def change
  	change_column :user_skills, :proficiency, :integer, default: 0
  end
end
