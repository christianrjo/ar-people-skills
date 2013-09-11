class Skill < ActiveRecord::Base
  has_many :user_skills
  has_many :users, through: :user_skills
  validates :name, uniqueness: true

  def user_with_proficiency(proficiency)
    self.user_skills.each do |userskill|
        if userskill.proficiency == proficiency
            return userskill.user
        end
    end
end

end
