class CreateFlights < ActiveRecord::Migration[4.2]
  def change
    create_table :flights do |t|
      t.integer :num_flight
      t.string :date
      t.string :depart
      t.string :from
      t.string :to
      t.string :duration
      t.string :cost
      t.string :passengers
    end
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :admin
      t.string :password
    end
    create_table :user_flights do |t|
      t.integer :id_flights
      t.integer :id_users
    end
    create_table :bookings do |t|
      t.integer :num_booking
      t.string :total
      t.integer :id_flights      
    end
    create_table :user_bookings do |t|
      t.integer :id_users
      t.integer :id_bookings
    end
  end
end
