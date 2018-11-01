class CreateWebmails < ActiveRecord::Migration
  def change
    create_table :webmails do |t|
      
      # t.저장할데이터타임 :구성이름
      
      t.string :to_m
      t.string :from_m
      t.string :title
      t.text :content
      
      t.timestamps null: false
    end
  end
end
