class CreateItems < ActiveRecord::Migration
  def change

  	create_table :categories do |t|
  		t.string 						:name
  		t.timestamps
  	end

    create_table :items do |t|
    	t.references 				:category
    	t.string 						:title
    	t.text 							:desciption
    	t.json							:details
    	t.integer						:price
      t.timestamps 				null: false
    end
  end
end
