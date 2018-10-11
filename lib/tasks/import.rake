require 'csv'

namespace :import do 
  desc "Import users from csv"

  task users: :environment do 
    filename = File.join Rails.root, "UserList.csv"

    CSV.foreach(filename, headers: true) do |row|
        user = User.create!(email: row["Email"], first_name: row["First name"],last_name: row["Last name"], title: row["Title"],created_at: row["Created at"], password: "test1234")
    end
  end

  task addresses: :environment do 
    filename = File.join Rails.root, "Addresses.csv"

    CSV.foreach(filename, headers: true) do |row|
        address = Address.create!(address_type: row["Address Type"], status: row["Status"], entity: row["Entity"], street_address: row["StreetAddress"], suite_or_apt: row["Suite or App"], city: row["City"], zip_code: row["ZipCode"], created_at: row["Created At"], updated_at: row["Updated At"], country: row["Country"], notes: row["Notes"])
    end
  end

  task customers: :environment do 
    filename = File.join Rails.root, "customers.csv"

    CSV.foreach(filename, headers: true) do |row|
        user = User.where(email: row["ContactEmail"]).first
        address = Address.where(street_address: row["StreetAddress"]).first
        customer = Customer.create!(user_id: user.id, business_name: row["BusinessName"], address_id: address.id, contact_full_name: row["ContactName"], contact_phone: row["ContactTelephone"], contact_email: row["ContactEmail"], business_description: row["CompanyDescription"], technician_full_name: row["TechnicianName"], technician_phone: row["TechnicianTelephone"], technician_email: row["TechnicianEmail"], created_at: row["Created At"], updated_at: row["Updated At"])
    end
  end

  task buildings: :environment do 
    filename = File.join Rails.root, "buildings.csv"

    CSV.foreach(filename, headers: true) do |row|
        customerID = Customer.order("RAND()").first.id
        address = Address.where(street_address: row["StreetAddress"]).first
        building = Building.create!(customer_id: customerID, address_id: address.id, administrator_full_name: row["Adm Name"], administrator_phone: row["Adm Phone"], administrator_email: row["Adm Email"], technician_full_name: row["TechnicianName"], technician_phone: row["TechnicianTelephone"], technician_email: row["TechnicianEmail"], created_at: row["Created At"], updated_at: row["Updated At"])
    end
  end
end

