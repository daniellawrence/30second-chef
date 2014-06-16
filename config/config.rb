namespace :deploy do

  desc 'Install hello'
  task :restart do
    do roles(:app), in: :sequence, wait: 5 do
      sh('apt-get install -y hello')
    end
    
  end

end
