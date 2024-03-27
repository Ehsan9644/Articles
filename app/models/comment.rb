class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  after_create :status_change, if: ->{self.article.status != 'public'}
  private
  def status_change
   
    self.article.update(status:'public') 
  end
  private
  
end