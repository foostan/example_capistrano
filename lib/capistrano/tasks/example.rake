namespace :deploy do
  task :updating do
    run_locally do
      execute "uptime"
    end

    on roles(:web) do
      execute "uptime"
    end
  end
end
