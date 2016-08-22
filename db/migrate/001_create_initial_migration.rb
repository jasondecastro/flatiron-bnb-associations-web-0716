class CreateInitialMigration < ActiveRecord::Migration
  def change
    create_table :cities do | t |
      t.string :name
    end

    create_table :listings do | t |
      t.string :title
      t.string :description
      t.string :address
      t.string :listing_type
      t.float :price
      t.integer :neighborhood_id
      t.integer :host_id
    end

    create_table :neighborhoods do | t |
      t.string :name
      t.integer :city_id
    end

    create_table :reservations do | t |
      t.timestamp :checkin
      t.timestamp :checkout
      t.integer :guest_id
      t.integer :user_id
      t.integer :host_id
      t.integer :listing_id
    end

    create_table :reviews do | t |
      t.string :description
      t.integer :rating
      t.integer :guest_id
      t.integer :reservation_id
    end

    create_table :users do | t |
      t.string :name
      t.integer :host_id
      t.integer :guest_id
      t.integer :listing_id
    end

    create_table :trips do | t |
      t.string :name
      t.integer :guest_id
    end
  end
end