require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://example.com'
SitemapGenerator::Sitemap.create do
  add '/', :changefreq => 'daily', :priority => 0.9
  add '/about', :changefreq => 'weekly'
  add '/library', :changefreq => 'weekly'
  add '/basics_ppc', :changefreq => 'weekly'
  add '/basics_seo', :changefreq => 'weekly'
  add '/basics_social', :changefreq => 'weekly'
  add '/plans', :changefreq => 'weekly'
end
SitemapGenerator::Sitemap.ping_search_engines # called for you when you use the rake task