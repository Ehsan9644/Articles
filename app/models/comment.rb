class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  after_create :status_change, if: ->{self.article.status != 'public'}
after_save :done, if: ->{self.article.exist? }
  private
  def status_change
   
    self.article.update(status:'public') 
  end
  private
  def done
   
    puts "Article saved"
  end
end