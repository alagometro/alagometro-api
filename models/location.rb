class Location < ActiveRecord::Base
  has_many :statuses

  def status
    statuses.order('created_at DESC').first
  end

  def to_api
    {
      title: address,
      lat: location.split(',').first,
      lng: location.split(',').last,
      level: status.level,
      last_update: status.updated_at
    }
  end
end
