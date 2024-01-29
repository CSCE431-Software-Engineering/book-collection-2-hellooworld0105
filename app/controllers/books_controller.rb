class BooksController < ApplicationController
    def index 
        if(request.referer)
            if URI(request.referer).path.include? "/read" 
                flash[:notice] = "Read Book: " + URI.decode_www_form_component(URI(request.referer).path[6..])
            end
        end
    
        begin 
            @books = Book.all
        rescue => e
            puts e.message
            flash[:notice] = "Error in database connection"
        end
        
    end
end
