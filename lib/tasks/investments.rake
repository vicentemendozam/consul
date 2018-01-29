namespace :investments do
  namespace :internal_comments do
    desc "Migrate internal_comments textarea to a first comment on internal thread"
    task migrate_to_thread: :environment do
      comments_author = Administrator.first.user
      Budget::Investment.where.not(internal_comments: [nil, '']).each do |investment|
        Comment.create(investment, comments_author, investment.internal_comments)
      end
    end
  end
end
