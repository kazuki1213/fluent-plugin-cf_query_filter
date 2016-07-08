# Fluent::Plugin::CfQueryFilter

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-cf_query_filter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-cf_query_filter

## Configuration

```
## File input
<source>
  @type tail
  path /var/log/cloudfront.log
  pos_file /var/log/cloudfront.pos
  tag cloudfront.access
  format tsv
  keys day,time,x_edge_location,sc_bytes,c_ip,cs_method,cs_Host,cs_uri_stem,sc_status,cs_Referer,cs_User_Agent,cs_uri_query,cs_Cookie,x_edge_result_type,x_edge_request_id,x_host_header,cs_protocol,cs_bytes,time_take
</source>

## custiom filter
<filter cloudfront.access>
  @type cf_query
</filter>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Test it (`GEM_HOME=vendor bundle install; GEM_HOME=vendor bundle exec rake test`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

