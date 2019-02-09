class Order < ApplicationRecord

  def self.get_id
    # seems broken in high connection because no lock lol seems unlikely to happen for this site tho
    # could be broken because race condition 
    self.maximum(:id) ? self.maximum(:id) + 1 : 1
  end

  def self.generate_no_faktur
    'FAK'+self.get_id.to_s.rjust(6,'0')
  end
end
