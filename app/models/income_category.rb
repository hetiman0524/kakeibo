class IncomeCategory < ActiveHash::Base
  include ActiveHash::Associations
  has_many :incomes

  self.data = [
    {id: 1, name: '給与'}, 
    {id: 2, name: '一時所得'}, 
    {id: 3, name: '事業・副業'}, 
    {id: 4, name: '年金'}, 
    {id: 5, name: '配当'}, 
    {id: 6, name: '不動産所得'}, 
    {id: 7, name: 'ポイント'}, 
    {id: 8, name: 'その他収入'},  
  ]
end
