class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end

    def show
        find_author
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.create(author_params)
        redirect_to authors_path
    end

    def edit
        find_author
    end

    def update
        find_author
        @author.update(author_params)
        redirect_to author_path(@author)
    end

    def destroy
        find_author
        @author.destroy
        redirect_to authors_path
    end

    private

    def author_params
        params.require(:author).permit(:name, :birth_year)
    end

    def find_author
        @author = Author.find(params[:id])
    end

end
