class AddVocabToSentences < ActiveRecord::Migration[6.1]
  def change
    add_reference :sentences, :vocabulary_word, null: false, foreign_key: true
  end
end