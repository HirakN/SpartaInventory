class Supplier < ApplicationRecord
	has_many :items, dependent: :nullify
end