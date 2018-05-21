require 'rails/generators/named_base'

module Shatter 
    module Generators 
        class Shatter < Rails::Generators::NamedBase 
            
            desc "Generates separate files for a model's association, validation, operation and query logic."
            source_root File.expand_path('../templates', __FILE__)

            def generate_refinements
                template "associations.rb", "app/models/#{file_name}/associations.rb"
                template "operations.rb", "app/models/#{file_name}/operations.rb"
                template "queries.rb", "app/models/#{file_name}/queries.rb"
                template "validations.rb", "app/models/#{file_name}/validations.rb"
            end
                
            def inject_refinements
                inject_into_class "app/models/#{file_name}.rb", file_name.singularize.camelcase do 
                    "include #{file_name.singularize.camelcase}::Associations\ninclude #{file_name.singularize.camelcase}::Operations\ninclude #{file_name.singularize.camelcase}::Queries\ninclude #{file_name.singularize.camelcase}::Validations\n"  
                end
            end
            
        end
    end
end