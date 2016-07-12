require 'rack/utils'
class Fluent::CfQueryFilter < Fluent::Filter
  Fluent::Plugin.register_filter('cf_query', self)
  def filter(tag, time, record)
    return nil unless record['date'].start_with?('2')
    Rack::Utils.parse_nested_query(record['cs-uri-query'])
  end
end
