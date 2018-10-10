require 'csv'

namespace :import do 
  desc "Import users from csv"

  task users: :environment do 
    filename = File.join Rails.root, "UserList.csv"
    counter = 0



    CSV.foreach(filename, headers: true) do |row|
        #Id,Email,	encrypted_password,	reset_password_token, reset_password_sent_at, Remember_created_at, Created_at, Updated_at, First_name, Last_name, Title,	
        user = User.create!(email: row["Email"], first_name: row["First name"],last_name: row["Last name"], title: row["Title"],created_at: row["Created at"], password: "test1234")
    end

  end
end