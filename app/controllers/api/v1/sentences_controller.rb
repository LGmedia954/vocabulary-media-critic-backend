class Api::V1::SentencesController < ApplicationController

  def index
    sentences = Sentence.all
    # render json: sentences
    # render json: SentenceSerializer.new(sentences)
    
    details = {
      include: [:vocabulary_word]
    }
    render json: SentenceSerializer.new(sentences, details)
  end

  def show
    sentence = Sentence.find(params[:id])
    render json: sentence
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

  def destroy
    sentence = Sentence.find(params[:id])
    sentence.destroy

    render json: {message: "success"}, status: :accepted
  end

  private

  def sentence_params
    params.require(:sentence).permit(:example, :vocabulary_word_id)
  end

end