require 'pg'
class AddBookViewController < ApplicationController
    def create
        title = params[:title]
        author = params[:author]
        price = params[:price]
        pub_date = params[:published_date]

        begin
            Book.create(:title => title, :author => author, :price => price, :published_date => pub_date)
            flash[:notice] = "Created Book: #{title}"
            redirect_to '/'
        rescue
            flash[:notice] = "Error: Invalid Entry"
            redirect_to '/addbook'
        end
    end
end
