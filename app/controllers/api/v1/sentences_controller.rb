class Api::V1::SentencesController < ApplicationController

  def index
    sentences = Sentence.all
    # render json: sentences
    render json: SentenceSerializer.new(sentences)
    # details = {
    #   include: [:vocabulary_word]
    # }
    # add relationship in serializer
    # render json: SentenceSerializer.new(sentences, details)
  end

  def create
    sentence = Sentence.new(sentence_params)
    if sentence.save
      # render json: sentence, status: :accepted
      render json: SentenceSerializer.new(sentence), status: :accepted
    else
      render json: {errors: sentence.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:example, :vocabulary_word_id)
  end

end