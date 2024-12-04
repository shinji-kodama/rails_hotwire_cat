class Cat < ApplicationRecord

  # 名前: 必須
  validates :name, presence: true

  # 年齢: 必須 + integer + 0以上
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  # `ransackable_attributes`で検索対象とするカラムを指定
  def self.ransackable_attributes(auth_object = nil)
    %w[name age]
  end

  # `ransackable_associations`で検索対象とする関連を指定
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
