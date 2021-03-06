require 'pry'

class Api::V1::SentencesController < ApplicationController

  def index
    sentences = Sentence.all
    # render json: sentences
    # render json: SentenceSerializer.new(sentences)
    
    options = {include: [:vocabulary_word]}
    render json: SentenceSerializer.new(sentences, options)
  end

  def show
    sentence = Sentence.find(params[:id])
    render json: SentenceSerializer.new(sentence)
  end

  def create
    sentence = Sentence.new(sentence_params)
    #byebug
    if sentence.save
      # render json: sentence, status: :accepted
      render json: SentenceSerializer.new(sentence), status: :accepted
    else
      render json: {errors: sentence.errors.full_messages}
    end
  end

  def destroy
    sentence = Sentence.find(params[:id])
    sentence.destroy

    render json: {message: "Sentence deleted"}, status: :accepted
  end

  private

  def sentence_params
    params.require(:sentence).permit(:example, :vocabulary_word_id, vocabulary_word: [:id, :word])
  end

end