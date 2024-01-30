class ReadController < ApplicationController
    def read
        @title = params[:title]
        @urltitle = URI.encode_www_form_component("#{@title}")
        begin
            @book = Book.where(:title => @title)
            @@book = @book
        rescue
            flash[:notice] = "Error Reading Database"
            redirect_to "/read/#{@title}"
        end
    end
end
