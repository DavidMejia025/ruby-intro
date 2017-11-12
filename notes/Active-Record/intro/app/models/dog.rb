class Dog < ActiveRecord::Base
  validates :age, :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 20 }

  validate :names_must_start_with_ozu

  def names_must_start_with_ozu
    unless name =~ /^ozu.+$/
      errors.add(:name, "must start with ozu")
    end
  end


end
