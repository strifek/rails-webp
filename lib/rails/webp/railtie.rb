require 'sprockets/processing'

module Rails
  module WebP
    class Railtie < ::Rails::Railtie
      extend Sprockets::Processing

      initializer :webp, group: :all do |app|
        app.config.assets.configure do |env|
          env.register_postprocessor 'image/jpeg', PostProcessor
          env.register_postprocessor 'image/png', PostProcessor
        end
      end
    end
  end
end
