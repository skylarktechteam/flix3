class MoviesController < ApplicationController
	def about
	end

	def index
		@movies = Movie.all
	end

	def privacy
		render 'privacy_policy'
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def murder
		@movie = Movie.find(1)
		render 'show'
	end

	def new
		@movie = Movie.new
	end

	def create

		movie_params = params.require(:movie).permit(:title, :description, :has_subtitles, :placement, :mpaa_rating, :release_date,  :ticket_price , :runtime, :poster_image, :director, :producer, :studio )

		@movie = Movie.new(movie_params)

		if @movie.save

			redirect_to @movie, notice: 'Movie was created successfuly.'
		else
			render action: 'new'
		end
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		@movie = Movie.find(params[:id])
		movie_params = params.require(:movie).permit(:title, :description, :has_subtitles, :placement, :mpaa_rating, :release_date,  :ticket_price , :runtime, :poster_image )
		if @movie.update(movie_params)
		redirect_to @movie, notice: 'Movie was successfully updated'
		else
		render action: 'edit'
	end

	end


end
