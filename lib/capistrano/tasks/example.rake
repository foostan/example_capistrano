namespace :deploy do
  task :updating do
    run_locally do
      roles(:web).each do |srv|
        execute :rsync, fetch(:deploy_from), "#{srv.user}@#{srv.hostname}:#{fetch(:deploy_to)}"
      end
    end
  end
end
