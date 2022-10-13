desc 'Prevents asset compiling for API only Rails app'
task skip_precompile: [:environment] do
    raise 'Skipping asset precompile in production --- API only app has no assets to compile' if Rails.env.production?
end