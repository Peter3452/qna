class AnswersController < ApplicationController
  before_action :set_answer, only: [:edit, :update, :destroy]

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    redirect_to @question
  end

  def edit
  end

  def update
    @answer.update(answer_params)
    redirect_to @question
  end

  def destroy
    @answer.destroy
    redirect_to @question
  end

  private

  def set_answer
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end
  
  def answer_params
    params.require(:answer).permit(:body, :avatar)
  end
end
