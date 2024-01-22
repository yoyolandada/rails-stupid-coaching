class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @answer = ''
    if params[:question].capitalize == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].capitalize.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
