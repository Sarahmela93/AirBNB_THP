class Dog < ApplicationRecord
    belongs_to :strolls
    belongs_to :dogsitter, through: :stroll
end
