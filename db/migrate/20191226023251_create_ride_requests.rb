class CreateRideRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :ride_requests do |t|
    	t.references :user
    	t.string :destination
    	t.references :ride
    	t.string :status

      t.timestamps
    end
  end
end
