class Song < ApplicationRecord
  belongs_to :genre,  dependent: :destroy
end
