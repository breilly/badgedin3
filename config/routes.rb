Badgedin3::Application.routes.draw do
  resources :messages
  match "/contact", to: "messages#new"

  resources :badges

  mount StripeEvent::Engine => '/stripe'
  get "content/gold"
  get "content/silver"
  get "content/platinum"
  
  match "/plans", to: "plans#index"
  match "/library", to: "library#index"
  match "/basics_ppc", to: "library#basics_ppc"
  match "/basics_seo", to: "library#basics_seo"
  match "/basics_social", to: "library#basics_social"
  match "/walkthroughs_ppc", to: "library#walkthroughs_ppc"
  match "/walkthroughs_seo", to: "library#walkthroughs_seo"
  match "/walkthroughs_social", to: "library#walkthroughs_social"
  match "/walkthroughs_ppc/negative_keywords", to: "walkthroughs_ppc#negative_kws"
  match "/walkthroughs_seo/wp_all_in_one", to: "walkthroughs_seo#wpallinone"
  match "/walkthroughs_social/fb_ad_targeting", to: "walkthroughs_social#fbadtargeting"
  match "/privacy", to: "legal#privacy"
  match "/terms", to: "legal#terms"
  match "/about", to: "legal#about"
  
  match "/basics_ppc/how_se_work/organic_ppc", to: "basics_ppc#howsework_organic_ppc"
  match "/basics_ppc/how_se_work/web_crawlers", to: "basics_ppc#howsework_webcrawlers" 
  match "/basics_ppc/how_se_work/why", to: "basics_ppc#howsework_why" 
  match "/basics_ppc/PPC_101/bids", to: "basics_ppc#ppc101_bid"
  match "/basics_ppc/PPC_101/rankings", to: "basics_ppc#ppc101_rankings"
  match "/basics_ppc/PPC_101/google_quatlity_score", to: "basics_ppc#ppc101_google_qs"
  match "/basics_ppc/PPC_101/quality_score", to: "basics_ppc#ppc101_qs"
  match "/basics_ppc/PPC_101/intro_to_ppc", to: "basics_ppc#ppc101"
  match "/basics_ppc/search_engine_structure/ad_groups", to: "basics_ppc#sestructure_adgroups"
  match "/basics_ppc/search_engine_structure/campaigns", to: "basics_ppc#sestructure_campaigns"
  match "/basics_ppc/search_engine_structure/keywords", to: "basics_ppc#sestructure_keywords"
  match "/basics_ppc/search_engine_structure/matchtypes", to: "basics_ppc#sestructure_matchtypes"
  match "/basics_ppc/search_engine_structure/overview", to: "basics_ppc#sestructure_overview"
  match "/basics_ppc/tracking_and_reporting/metrics", to: "basics_ppc#trackingreporting_metrics"
  match "/basics_ppc/tracking_and_reporting/reporting", to: "basics_ppc#trackingreporting_reporting"
  match "/basics_ppc/tracking_and_reporting/tracking", to: "basics_ppc#trackingreporting_tracking"
  
  match "/basics_seo/how_se_work/organic_ppc", to: "basics_seo#howsework_organic_ppc"
  match "/basics_seo/how_se_work/web_crawlers", to: "basics_seo#howsework_webcrawlers" 
  match "/basics_seo/how_se_work/why", to: "basics_seo#howsework_why"
  match "/basics_seo/offsite/alternative_solutions", to: "basics_seo#offsite_alternative_solutions"
  match "/basics_seo/offsite/articles", to: "basics_seo#offsite_articles"
  match "/basics_seo/offsite/directories_and_forums", to: "basics_seo#offsite_directories_forums"
  match "/basics_seo/offsite/guest_posts_and_comments", to: "basics_seo#offsite_guestposts_comments"
  match "/basics_seo/offsite/overview", to: "basics_seo#offsite_overview"
  match "/basics_seo/offsite/promotional", to: "basics_seo#offsite_promotional"
  match "/basics_seo/onsite/freshness", to: "basics_seo#onsite_freshness"
  match "/basics_seo/onsite/keywords", to: "basics_seo#onsite_keywords"
  match "/basics_seo/onsite/links", to: "basics_seo#onsite_links"
  match "/basics_seo/onsite/meta_and_title_tags", to: "basics_seo#onsite_metatitletags"
  match "/basics_seo/onsite/sitemap", to: "basics_seo#onsite_sitemap"
  match "/basics_seo/se_tools/bing_webmaster", to: "basics_seo#setools_bing_webmaster"
  match "/basics_seo/se_tools/common_settings", to: "basics_seo#setools_common_settings"
  match "/basics_seo/se_tools/google_webmaster", to: "basics_seo#setools_google_webmaster"
  match "/basics_seo/seo101/intro_to_seo", to: "basics_seo#seo101"
  match "/basics_seo/seo101/onsite_offsite", to: "basics_seo#seo101_onsiteoffsite"
  match "/basics_seo/seo101/websites", to: "basics_seo#seo101_websites"
  match "/basics_seo/tracking_and_reporting/free_tools", to: "basics_seo#trackingreporting_freetools"
  match "/basics_seo/tracking_and_reporting/metrics", to: "basics_seo#trackingreporting_metrics"
  match "/basics_seo/tracking_and_reporting/paid_tools", to: "basics_seo#trackingreporting_paidtools"
  match "/basics_seo/tracking_and_reporting/reports", to: "basics_seo#trackingreporting_reports"
  
  match "/basics_social/fb_admin/basics", to: "basics_social#fbadmin_basic"
  match "/basics_social/fb_admin/complete", to: "basics_social#fbadmin_complete"
  match "/basics_social/fb_engage_measure/engagement", to: "basics_social#fbengagemeasure_engagement"
  match "/basics_social/fb_engage_measure/measurement", to: "basics_social#fbengagemeasure_measurement"
  match "/basics_social/fb_likes/part1", to: "basics_social#fblikes"
  match "/basics_social/fb_likes/part2", to: "basics_social#fblikes2"
  match "/basics_social/fb_likes/part3", to: "basics_social#fblikes3"
  match "/basics_social/fb_timeline/part1", to: "basics_social#fbtimeline"
  match "/basics_social/fb_timeline/part2", to: "basics_social#fbtimeline2"
  match "/basics_social/fb_timeline/part3", to: "basics_social#fbtimeline3"
  
  match "/basics_ppc/how_se_work/quiz", to: "basicsquizzes_ppc#howsework_quiz"
  match "/basics_ppc/how_se_work/badge", to: "basicsquizzes_ppc#howsework_badge"
  match "/basics_ppc/PPC_101/quiz", to: "basicsquizzes_ppc#ppc101_quiz"
  match "/basics_ppc/PPC_101/badge", to: "basicsquizzes_ppc#ppc101_badge"
  match "/basics_ppc/search_engine_structure/quiz", to: "basicsquizzes_ppc#sestructure_quiz"
  match "/basics_ppc/search_engine_structure/badge", to: "basicsquizzes_ppc#sestructure_badge"
  match "/basics_ppc/tracking_and_reporting/quiz", to: "basicsquizzes_ppc#trackingreporting_quiz"
  match "/basics_ppc/tracking_and_reporting/badge", to: "basicsquizzes_ppc#trackingreporting_badge"

  match "/basics_seo/how_se_work/quiz", to: "basicsquizzes_seo#howsework_quiz"
  match "/basics_seo/how_se_work/badge", to: "basicsquizzes_seo#howsework_badge"
  match "/basics_seo/offsite/quiz", to: "basicsquizzes_seo#offsite_quiz"
  match "/basics_seo/offsite/badge", to: "basicsquizzes_seo#offsite_badge"
  match "/basics_seo/onsite/quiz", to: "basicsquizzes_seo#onsite_quiz"
  match "/basics_seo/onsite/badge", to: "basicsquizzes_seo#onsite_badge"
  match "/basics_seo/seo101/quiz", to: "basicsquizzes_seo#seo101_quiz"
  match "/basics_seo/seo101/badge", to: "basicsquizzes_seo#seo101_badge"
  match "/basics_seo/se_tools/quiz", to: "basicsquizzes_seo#setools_quiz"
  match "/basics_seo/se_tools/badge", to: "basicsquizzes_seo#setools_badge"
  match "/basics_seo/tracking_and_reporting/quiz", to: "basicsquizzes_seo#trackingreporting_quiz"
  match "/basics_seo/tracking_and_reporting/badge", to: "basicsquizzes_seo#trackingreporting_badge"
 
  match "/basics_social/fb_admin/quiz", to: "basicsquizzes_social#fbadmin_quiz"
  match "/basics_social/fb_admin/badge", to: "basicsquizzes_social#fbadmin_badge"
  match "/basics_social/fb_engage_measure/quiz", to: "basicsquizzes_social#fbengagemeasure_quiz"
  match "/basics_social/fb_engage_measure/badge", to: "basicsquizzes_social#fbengagemeasure_badge"
  match "/basics_social/fb_likes/quiz", to: "basicsquizzes_social#fblikes_quiz"
  match "/basics_social/fb_likes/badge", to: "basicsquizzes_social#fblikes_badge"
  match "/basics_social/fb_timeline/quiz", to: "basicsquizzes_social#fbtimeline_quiz"
  match "/basics_social/fb_timeline/badge", to: "basicsquizzes_social#fbtimeline_badge"
  
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
end