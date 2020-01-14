class HotelInfosController < ApplicationController


    def index
        @search = params["search"]
        
        if @search.present?
            
            @Destination = @search["Destination"]
            @Owner_Name = @search["Owner_Name"]
            @Mobile_Number = @search["Mobile_Number"]
            @Number_of_rooms = @search["Number_of_rooms"]
            @URL = @search["URL"]
            @Number_of_beds = @search["Number_of_beds"]
            @Accomodates = @search["Accomodates"]
            if @Destination.present?
        
            @HoltesInfos = HoltesInfo.searchDestination(@search["Destination"])
            
            else
                if @Owner_Name.present?
        
                    @HoltesInfos = HoltesInfo.searchOwner_Name(@search["Owner_Name"])
                else
                    if @Mobile_Number.present?
        
                        @HoltesInfos = HoltesInfo.searchMobile_Number(@search["Mobile_Number"])
                    else
                        if @URL.present?
        
                            @HoltesInfos = HoltesInfo.searchURL(@search["URL"])
                        else
                            if @Number_of_rooms.present?
        
                                @HoltesInfos = HoltesInfo.searchNumber_of_rooms(@search["Number_of_rooms"])
                            else
                                if @Number_of_beds.present?
        
                                    @HoltesInfos = HoltesInfo.searchNumber_of_beds(@search["Number_of_beds"])
                                else
  
                                    if @Accomodates.present?
        
                                        @HoltesInfos = HoltesInfo.searchAccomodates(@search["Accomodates"])
                                    else
                                        @HoltesInfos = HoltesInfo.all
                                    end
                                end
                            end
                        end
                    end
                end
            end
            
           
            
          

            
        

            
           

           
         

          
            
        else
            @HoltesInfos = HoltesInfo.all
        end
        
    end

    def create
    end
  
end
