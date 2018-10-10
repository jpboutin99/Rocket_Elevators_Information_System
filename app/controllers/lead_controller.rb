class LeadController < ApplicationController

    def index
        
    end
    def new_lead
        lead = Lead.new(params["lead"].permit!)
        lead.valid?
        p lead.errors
        lead.save!
    end

end
