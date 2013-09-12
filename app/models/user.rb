class User < ActiveRecord::Base
	has_many :skills, through: :user_skills
	has_many :user_skills


	def proficiency_for(skill)
		self.user_skills.find_by_skill_id(skill.id).proficiency
	end

	def set_proficiency_for(skill,proficiency)
		a = self.user_skills.find_by_skill_id(skill.id)
		a.update_attributes(proficiency: proficiency)
	end

end

		# self.user_skills.each do |userskill|
		# 	if userskill.skill_id == skill.id
		# 		userskill.proficiency = proficiency
		# 		userskill.save
		# 	end
		# end
