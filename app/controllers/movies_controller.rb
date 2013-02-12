class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.json
  def index
    # loop through each movie and get it's vote count
    # push those into an array and sort it?

    @movies = Movie.order('title asc').limit(20)
    @vote = Vote.new
    # @sorted = (@movies + @votes)

    # @sorted = @movies.sort_by &:created_at

    # @movies_to_sort = Array.new

    # @movies.each do |movie|
    #   @movies_to_sort << movie
    #   @votes = movie.votes.where(:movie_id => movie.id).count
    # end


    # @movie_votes = Array.new
    # @movie_names = Array.new
    # @movie_vote_tally = Hash.new

    # loop through Vote and get look at the id and get it's vote count
    # @votes = Vote.order('id asc').limit(50)

    # @movies.each do |movie|
      # movie_hash = {movie => movie.votes.count }
      # @movies_to_sort << movie_hash
      # @movie_vote_tally[movie.title] = movie.votes.count
      # @movie_votes << movie.votes.count
      # @movie_names << movie.title
    # end
    # return @movies_to_sort


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])
    @vote = Vote.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @movie = Movie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(params[:movie])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @movie = Movie.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to movies_url }
      format.json { head :no_content }
    end
  end
end
