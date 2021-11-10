class CreateVocabularyWords < ActiveRecord::Migration[6.1]
  def change
    create_table :vocabulary_words do |t|
      t.string :word
      t.string :part_of_speech
      t.text :definition

      t.timestamps
    end
  end
end
