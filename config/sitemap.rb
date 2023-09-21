# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://galayacht.com"

SitemapGenerator::Sitemap.create do
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

    add '/home', :changefreq => 'daily', :priority => 0.9
    add '/produits', :changefreq => 'daily', :priority => 0.9

    # Add sign-in and sign-up URLs to the sitemap
    add '/demandes/new', :changefreq => 'daily', :priority => 0.8, :lastmod => Time.now
    add '/espace_bailleur/index', :changefreq => 'daily', :priority => 0.8, :lastmod => Time.now

    Produit.find_each do |produit|
      add produit_path(produit), :lastmod => produit.updated_at
    end
end