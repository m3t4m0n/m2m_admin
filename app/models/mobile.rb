class Mobile < ApplicationRecord
  has_many :carreservrequests, dependent: :destroy
end
