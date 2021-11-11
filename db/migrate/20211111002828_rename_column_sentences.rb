class RenameColumnSentences < ActiveRecord::Migration[6.1]
  def change
    rename_column :sentences, :v_word_id, :vocabulary_word_id
  end
end