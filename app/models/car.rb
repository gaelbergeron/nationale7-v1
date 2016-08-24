class Car < ActiveRecord::Base

  filterrific :default_filter_params => { :sorted_by => 'created_at_desc' },
              :available_filters => %w[
                sorted_by
                with_marque
                with_energie
                with_prix_n7
              ]

  has_many :car_clients
  has_many :photos
  has_many :car_options
  # belongs_to :inspector

  def to_s
  "#{id} - #{marque} #{modele} - #{annee}"
  end

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("cars.created_at #{ direction }")
    when /^vroom_price_/
      order("cars.prix_n7 #{ direction }")
    when /^year_/
      order("cars.annee #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }


  scope :with_marque, lambda { |makes|
    where(marque: [makes])
  }

  scope :energie, lambda { |fuel_types|
    where(energie: [fuel_types])
  }  

  scope :with_prix_n7_lt, lambda { |vroom_prices|
    where('cars.prix_n7 < ?', vroom_prices)
  }  

  def self.options_for_sorted_by
    [
      ['- Trier par -', 'created_at_desc'],
      ['Prix croissant', 'prix_n7_asc'],
      ['Prix décroissant', 'prix_n7_desc'],
      ['Année croissant', 'annee_asc'],
      ['Année décroissante', 'annee_desc']
    ]
  end

  def self.options_for_select_make
    order('marque').map { |e| [e.marque] }
  end

end
