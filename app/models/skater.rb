class Skater < ApplicationRecord
    has_many :boards, dependent: :destroy
end
