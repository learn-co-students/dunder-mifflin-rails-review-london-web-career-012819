class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @dogs = Dog.all.sort{|left, right| left.employees.size <=> right.employees.size}.reverse
  end

  def adoptable
    @adoptable = []
    @dogs = Dog.all
    @dogs.each do |dog|
      if dog.employees.count == 0
        @adoptable << dog
      end
    end
    @adoptable
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @adoptable = Dog.find(params[:id])
  end

  def update
    @adoptable = Dog.find(params[:id])
    @adoptable.update(dog_params)
    redirect_to @adoptable
  end


  private

  def dog_params
    params.require(:dog).permit(:employee_ids)
  end
end
