class CreateUserSkillJoin < ActiveRecord::Migration
  def change
  	create_table :user_skills do |t|
  		t.integer :user_id
  		t.integer :skill_id
  		t.integer :proficiency

  		#ask about add column
  	end
  end
end
