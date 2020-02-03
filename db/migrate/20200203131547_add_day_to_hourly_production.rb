class AddDayToHourlyProduction < ActiveRecord::Migration[6.0]
  def change
    add_column :hourly_productions, :day, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
