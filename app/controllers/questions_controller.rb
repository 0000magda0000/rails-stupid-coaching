class QuestionsController < ApplicationController
  def ask
    if params[:question].present?
      @question = params[:question]

    end
  end

  def answer
    unless params[:question].present?
      @question = ""
    else @question = params[:question]
    end
    if @question.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
