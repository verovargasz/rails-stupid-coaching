class QuestionsController < ApplicationController
  def ask
    @questions = ''
  end

  def answer
    @question = params[:coach_ask]

    @answer = if @question.include? '?'
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work right now!'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
