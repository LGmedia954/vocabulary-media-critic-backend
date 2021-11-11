class Api::V1::VocabularyWordsController < ApplicationController

  def index
    @vocabulary = VocabularyWord.all
    # render json: @vocabulary
    render json: VocabularyWordSerializer.new(@vocabulary)
  end

  def create
    vocabulary_word = VocabularyWord.new(vocabulary_word_params)
    if vocabulary_word.save
      render json: vocabulary_word, status: :accepted
    else
      ender json: {errors: vocabulary_word.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def vocabulary_word_params
    params.require(:vocabulary_word).permit(:word, :part_of_speech, :definition)
  
  end

end
