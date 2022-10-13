namespace :assets do
    desc 'prevent compiling of assets'
    task stop_compile: [ 'skip_precompile', 'assets:precompile' ]
  end

  
['assets:precompile'].each do |t|
    Rake::Task[t].enhance ['skip_precompile']
end