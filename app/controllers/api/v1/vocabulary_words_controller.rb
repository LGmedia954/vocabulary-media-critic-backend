class Api::V1::VocabularyWordsController < ApplicationController

  def index
    vocabulary = VocabularyWord.all
    # render json: vocabulary
    render json: VocabularyWordSerializer.new(vocabulary)
  end

# I built out this part below for future use.
# Database is already seeded for 50 words.

  def create
    vocabulary_word = VocabularyWord.new(vocabulary_word_params)
    if vocabulary_word.save
      # render json: vocabulary_word, status: :accepted
      render json: VocabularyWordSerializer.new(vocabulary_word), status: :accepted
    else
      render json: {errors: vocabulary_word.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def vocabulary_word_params
    params.require(:vocabulary_word).permit(:word, :part_of_speech, :definition)
  end

end
