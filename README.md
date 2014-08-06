vcloud-storage
==============

vCloud Storage is a CLI tool and Ruby library that supports the creation and management of independent and dependent disks in VMware vCloud. This gem is build on top of the [vCloud Core gem](https://rubygems.org/gems/vcloud-core) and based of the [vCloud Edge Gateway](https://github.com/gds-operations/vcloud-edge_gateway) gem.

## Installation

WIP

<!---
Add this line to your application's Gemfile:

    gem 'vcloud-storage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vcloud-storage
--->
## Usage

WIP

## Credentials

Please see the [vcloud-tools usage documentation](http://gds-operations.github.io/vcloud-tools/usage/).

## The vCloud API

vCloud Tools currently use version 5.1 of the [vCloud API](http://pubs.vmware.com/vcd-51/index.jsp?topic=%2Fcom.vmware.vcloud.api.doc_51%2FGUID-F4BF9D5D-EF66-4D36-A6EB-2086703F6E37.html). Version 5.5 may work but is not currently supported. You should be able to access the 5.1 API in a 5.5 environment, and this *is* currently supported.

The default version is defined in [Fog](https://github.com/fog/fog/blob/244a049918604eadbcebd3a8eaaf433424fe4617/lib/fog/vcloud_director/compute.rb#L32).

If you want to be sure you are pinning to 5.1, or use 5.5, you can set the API version to use in your fog file, e.g.

`vcloud_director_api_version: 5.1`

## Debugging

`export EXCON_DEBUG=true` - this will print out the API requests and responses.

`export DEBUG=true` - this will show you the stack trace when there is an exception instead of just the message.

## Testing

WIP

<!---
Run the default suite of tests (e.g. lint, unit, features):

    bundle exec rake

Run the integration tests (slower and requires a real environment):

    bundle exec rake integration

You need access to a suitable vCloud Director organization to run the integration tests. See the [integration tests
README](/spec/integration/README.md) for further details.
--->
### References

* [vCloud Director Independent Disk Documentation](http://pubs.vmware.com/vcd-51/topic/com.vmware.vcloud.api.doc_51/GUID-84327141-54B3-4E00-9BA8-745DFBE313C3.html)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[fog]: http://fog.io/
