class Sushi < ApplicationRecord
  has_many :ingredients
  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank?  }

  validates :name, presence: true, uniqueness: true
  validate :starts_with_x

  def created_time
    self.created_at.strftime("%B %e, %Y at %l:%M %p")
  end


  private

    def starts_with_x
      if name != "" && name[0].downcase == "x"
        errors.add(:x, "cannot be the first letter")
      end
    end

end
