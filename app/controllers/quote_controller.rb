class QuoteController < ApplicationController

    def index
        
    end
    def quote_post
        quote = Quote.new(params[:quote].permit!)
        quote.save
    end
end
