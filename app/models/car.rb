class Car < ActiveRecord::Base
  extend FriendlyId
  friendly_id :car_url, use: :slugged

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


  def car_url
    "#{reference_interne} #{marque} #{modele} #{annee} #{motorisation} #{finition}"
  end


  def to_s
  "#{reference_interne} - #{marque} #{modele} - #{annee}"
  end

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^created_at_/
      order("cars.created_at #{ direction }")
    when /^prix_n7_/
      order("cars.prix_n7 #{ direction }")
    when /^annee_/
      order("cars.annee #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }


  scope :with_marque, lambda { |marque|
    where(marque: [marque])
  }

  scope :with_energie, lambda { |energie|
    where(energie: [energie])
  }  

  scope :with_prix_n7, lambda { |prix_n7|
    where('cars.prix_n7 < ?', prix_n7)
  }  

  def self.options_for_sorted_by
    [
      ['Trier par', 'created_at_desc'],
      ['Prix croissant', 'prix_n7_asc'],
      ['Prix décroissant', 'prix_n7_desc'],
      ['Année croissant', 'annee_asc'],
      ['Année décroissante', 'annee_desc']
    ]
  end

  def self.options_for_select_marque
    order('marque').map { |e| [e.marque] }.uniq
  end

end
