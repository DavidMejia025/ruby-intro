# Code to populate the database ...

product_details = { :barcode    => "AR-23414324",
                   :quantity => 10,
                   :name     => 'TV',
                   :store_id => 1}

product_details2 = { :barcode    => "PS-23414324",
                  :quantity => 5,
                  :name     => 'Playstation',
                  :store_id => 1}


store_details = { :name    => "Kiwi Mart",
                  :manager_id => 1 }
store_details2 = { :name    => "Oxo",
                  :manager_id => 1 }

manager_details = { :name    => "Juan"}

Product.create!([product_details, product_details2])
Store.create!([store_details, store_details2])
Manager.create!(manager_details)








