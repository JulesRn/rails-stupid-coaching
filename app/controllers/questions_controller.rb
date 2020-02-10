class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''

    if @question == ''
      @answer = 'TELL ME SOMETHIN\'!'
    elsif @question.ends_with?('?')
      @answer = 'SILLY QUESTION, GET DRESSED AND GOT TO WORK!'
    elsif @question == 'I am going to work'
      @answer = 'GREAT!'
    else
      @answer = 'I DON\'T CARE, GET DRESSED AND GO TO WORK'
    end
  end
end
