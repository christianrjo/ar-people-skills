class User < ActiveRecord::Base
	has_many :skills, through: :user_skills
	has_many :user_skills


	def proficiency_for(skill)
		self.user_skills.each do |userskill|
			if userskill.skill_id == skill.id
				return userskill.proficiency
			end
		end
	end

	def set_proficiency_for(skill,proficiency)
		self.user_skills.each do |userskill|
			if userskill.skill_id == skill.id
				userskill.proficiency = proficiency
				userskill.save
			end
		end
	end

end
