class CreateSentences < ActiveRecord::Migration[6.1]
  def change
    create_table :sentences do |t|
      t.string :example
      t.integer :vocabulary_word_id

      t.timestamps
    end
  end
end
