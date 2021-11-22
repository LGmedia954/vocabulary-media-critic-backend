class VocabularyWordSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :word, :part_of_speech, :definition, :sentences

  has_many :sentences
end
