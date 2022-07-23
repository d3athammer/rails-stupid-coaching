class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @reply =
      if @answer.include? '?'
        'Silly question, get dressed and go to work!'
      elsif @answer == 'I am going to work'
        'Great!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
