class FilmsController < ApplicationController
  before_action :runs_before_action
  after_action :runs_after_action
  before_action :set_film_total
  def index
    @films = Film.all
  end
  
  def new
    @film = Film.new
  end
  
  def create
    # @film = Film.new
    # @film.title = params[:film] [:title]
    # @film.year = params[:film] [:year]
    film_params = params.require(:film).permit(:title, :year)
    @film = Film.new(film_params)
    if @film.save
      redirect_to films_path
    else
      render "new"
    end
  end

  def set_film_total
    @total_films = Film.all.length
  end

  def runs_before_action
    logger.info "-->This code runs before action <--"
  end

  def runs_after_action
    logger.info "--> This code runs after action <--"
  end
end
