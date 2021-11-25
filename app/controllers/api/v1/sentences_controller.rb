class Api::V1::SentencesController < ApplicationController

  def index
    sentences = Sentence.all
    # render json: sentences
    # render json: SentenceSerializer.new(sentences)
    
    options = {include: [:vocabulary_word]}
    render json: SentenceSerializer.new(sentences, options)
  end

  def show
    sentence = Sentence.find(sentence_params[:id])
    options = {include: [:vocabulary_word]}
    render json: SentenceSerializer.new(sentences, options)
  end

  def create
    vocabulary_word = VocabularyWord.find(vocabulary_word_params[:id])
    sentence = Sentence.new(sentence_params)
    
    if sentence.save
      # render json: sentence, status: :accepted
      render json: SentenceSerializer.new(sentence), status: :accepted
    else
      render json: {errors: sentence.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    vocabulary_word = VocabularyWord.find(vocabulary_word_params[:id])
    sentence = Sentence.find(sentence_params[:id])
    sentence.destroy

    render json: {message: "success"}, status: :accepted
  end

  private

  def sentence_params
    params.require(:sentence).permit(:example, :vocabulary_word_id)
  end

end