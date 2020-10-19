class Location < ActiveRecord::Base
  has_many :statuses

  def status
    statuses.order('created_at DESC').first
  end

  def as_json(options={})
    super(options.merge({:methods => :status}))
  end
end
