class Car < ActiveRecord::Base

  filterrific :default_filter_params => { :sorted_by => 'created_at_desc' },
              :available_filters => %w[
                sorted_by
                with_make
                with_fuel_type
                with_vroom_price_lt
              ]

  has_many :car_clients
  has_many :photos
  has_many :car_options
  belongs_to :inspector

  def to_s
  "#{id} - #{make} #{model} - #{year}"
  end

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("cars.created_at #{ direction }")
    when /^vroom_price_/
      order("cars.vroom_price #{ direction }")
    when /^year_/
      order("cars.year #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }


  scope :with_make, lambda { |makes|
    where(make: [makes])
  }

  scope :with_fuel_type, lambda { |fuel_types|
    where(fuel_type: [fuel_types])
  }  

  scope :with_vroom_price_lt, lambda { |vroom_prices|
    where('cars.vroom_price < ?', vroom_prices)
  }  

  def self.options_for_sorted_by
    [
      ['- Trier par -', 'created_at_desc'],
      ['Prix croissant', 'vroom_price_asc'],
      ['Prix décroissant', 'vroom_price_desc'],
      ['Année croissant', 'year_asc'],
      ['Année décroissante', 'year_desc']
    ]
  end

  def self.options_for_select_make
    order('make').map { |e| [e.make] }
  end

end
