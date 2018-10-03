class QuoteController < ApplicationController

    def index
        
    end
    def quote_post
        quote = Quote.new
        nb_floors = params['nb_floors1'] if params['nb_floors1']
        nb_floors = params['nb_floors2'] if params['nb_floors2']
        nb_floors = params['nb_floors3'] if params['nb_floors3']
        nb_floors = params['nb_floors4'] if params['nb_floors4']
        quote.nb_floors =  nb_floors
        quote.save
    end
end
