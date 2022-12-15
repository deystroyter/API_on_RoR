class Apply < ApplicationRecord
  belongs_to :geek
  belongs_to :job

  validates :job_id, presence: true
  validates :geek_id, presence: true


  def mark_delete
    self.update(deleted: true)
  end
end
