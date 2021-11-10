class SentenceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :example, :v_word_id, :vocabulary_word
  # belongs_to :vocabulary_word
end
