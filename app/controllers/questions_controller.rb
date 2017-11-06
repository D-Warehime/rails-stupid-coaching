class QuestionsController < ApplicationController

  def answer
    @answer = params[:query]
    coach_answer
  end

  def ask
  end

  def coach_answer
    if @answer.downcase == "i am going to work right now!"
      @response = ""
    elsif @answer.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end

    if @answer == @answer.upcase
      @coach_response = "I can feel your motivation! #{@response}"
    else
      @coach_response = @response
    end
  end
end
