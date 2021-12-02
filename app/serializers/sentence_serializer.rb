class SentenceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :example, :vocabulary_word_id, :vocabulary_word
  
  belongs_to :vocabulary_word
end
