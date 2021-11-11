class RemoveColumnSentences < ActiveRecord::Migration[6.1]
  def change
    remove_column :sentences, :vocabulary_word_id, :integer
  end
end
