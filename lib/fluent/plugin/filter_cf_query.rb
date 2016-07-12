class Fluent::CfQueryFilter < Fluent::Filter
  Fluent::Plugin.register_filter('cf_query', self)
  def filter(tag, time, record)
    return nil unless record['date'].start_with?('2')
    Hash[URI.decode_www_form(record['cs-uri-query'])]
  end
end
