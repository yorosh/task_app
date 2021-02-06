class User < ApplicationRecord
validate :date_before_start
validate :date_before_finish 




  validates :title, presence: true


def date_before_start
  
  return if start_date.blank?
  errors.add(:start_date, "は今日以降のものを選択してください") if start_date < Date.today
end

def date_before_finish
  
  return if last_date.blank? || start_date.blank?
  errors.add(:last_date, "は開始日以降のものを選択してください") if last_date < start_date
end
end
