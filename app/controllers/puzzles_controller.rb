class PuzzlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @puzzles = Puzzle.all
  end

  def show
    @puzzle = Puzzle.find(params[:id])
  end

  def new
    @puzzle = Puzzle.new
  end

  def edit
    @puzzle = Puzzle.find(params[:id])
  end

  def create
    @puzzle = Puzzle.new(puzzle_params)

    if @puzzle.save
      redirect_to @puzzle
    else
      render 'new'
    end
  end

  def update
    @puzzle = Puzzle.find(params[:id])

    if @puzzle.update(puzzle_params)
      redirect_to @puzzle
    else
      render 'edit'
    end
  end

  def destroy
    @puzzle = Puzzle.find(params[:id])
    @puzzle.destroy

    redirect_to puzzles_path
  end

  private
    def puzzle_params
      params.require(:puzzle).permit(:name, :game)
    end
end
