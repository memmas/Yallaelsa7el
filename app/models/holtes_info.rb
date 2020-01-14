class HoltesInfo < ApplicationRecord


    def self.searchDestination(search)   
            where("Destination LIKE ?", "%#{search}%")
    end

    def self.searchOwner_Name(search)       
            where("Owner_Name LIKE ?", "%#{search}%")
    end

    def self.searchMobile_Number(search)        
            where("Mobile_Number LIKE ?", "%#{search}%")
    end

    def self.searchURL(search)
            where("URL LIKE ?", "%#{search}%")
    end

    def self.searchNumber_of_rooms(search)
        where("Number_of_rooms LIKE ?", "%#{search}%")
    end
    def self.searchNumber_of_beds(search)
        where("Number_of_beds LIKE ?", "%#{search}%")
    end
    def self.searchAccomodates(search)
        where("Accomodates LIKE ?", "%#{search}%")
    end

end
