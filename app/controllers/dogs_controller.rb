class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sorted
    @dogs = Dog.all.sort_by { |dog| dog.employees.length }.reverse
    render 'sorted'
  end
end
