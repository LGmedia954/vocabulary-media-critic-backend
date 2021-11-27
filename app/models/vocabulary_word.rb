class VocabularyWord < ApplicationRecord
  has_many :sentences, dependent: :destroy
  #accepts_nested_attributes_for :sentences
  
  validates :word, presence: true
  validates :part_of_speech, presence: true
  validates :definition, presence: true
end
