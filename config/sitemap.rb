# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.nationale-7.fr"

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #

  SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fogprovider: 'AWS',
  awsaccesskeyid: 'AKIAICXQRWCM6HQ5HDSA',
  awssecretaccesskey: '
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',
  fogdirectory: 'nationale7v1')

  SitemapGenerator::Sitemap.sitemaps_host = "https://s3.amazonaws.com/nationale7v1/"

  SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
  SitemapGenerator::Sitemap.public_path = 'tmp/'

SitemapGenerator::Sitemap.create do
    Car.find_each do |car|
      add car_path(car.slug), :lastmod => car.updated_at
    end
  add '/comment-ca-marche'
  add '/les-prix-nationale-7'
end
