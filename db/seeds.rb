# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#1.upto(12) do |i|
  #Month.create(id: i, month: "#{i}月")
#end

#categories = ["食費","交通費","外食費","趣味","日用品","自動車","衣類","スポーツ","医療費","税金","光熱費","住宅費","保険","自己投資","通信費","その他"]

#categories.each do |c|
  #Category.create(name: c)
#end

# coding: utf-8

Category.create(:name => '食費')
Category.create(:name => '交通費')
Category.create(:name => '外食費')
Category.create(:name => '趣味')
Category.create(:name => '日用品')
Category.create(:name => '自動車')
Category.create(:name => '衣類')
Category.create(:name => 'スポーツ')
Category.create(:name => '医療費')
Category.create(:name => '税金')
Category.create(:name => '光熱費')
Category.create(:name => '住宅費')
Category.create(:name => '保険')
Category.create(:name => '自己投資')
Category.create(:name => '通信費')
Category.create(:name => 'その他')

Month.create(:month => '1月')
Month.create(:month => '2月')
Month.create(:month => '3月')
Month.create(:month => '4月')
Month.create(:month => '5月')
Month.create(:month => '7月')
Month.create(:month => '8月')
Month.create(:month => '9月')
Month.create(:month => '10月')
Month.create(:month => '11月')
Month.create(:month => '12月')