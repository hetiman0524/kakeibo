class ExpenseCategory < ActiveHash::Base
  include ActiveHash::Associations
  has_many :expense_contents

  self.data = [
    {id: 1, name: '食費'}, 
    {id: 2, name: '交通費'}, 
    {id: 3, name: '外食費'}, 
    {id: 4, name: '趣味'}, 
    {id: 5, name: '日用品'}, 
    {id: 6, name: '自動車'}, 
    {id: 7, name: '衣類'}, 
    {id: 8, name: 'スポーツ'},  
    {id: 9, name: '医療費'}, 
    {id: 10, name: '税金'}, 
    {id: 11, name: '光熱費'}, 
    {id: 12, name: '住宅費'}, 
    {id: 13, name: '保険'}, 
    {id: 14, name: '自己投資'}, 
    {id: 15, name: '通信費'}, 
    {id: 16, name: 'その他'},  
  ]
end
