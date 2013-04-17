fcgiwrap Cookbook
=================
Install fcgiwrap. More faster and stable then nginx_simplecgi.
fcgiwrap is a simple server for running CGI applications over FastCGI. It hopes to provide clean CGI support to Nginx (and other web servers that may need it).


Requirements
------------
- `build-essential` cookbook


Changelog
------------
- Ubuntu support. More flexible with attributes. Used at nagios [srodrig0209](https://github.com/srodrig0209/fcgiwrap-cookbook)


Attributes
----------
- `node['fcgiwrap']['user']`  = 'www-data' - user for fcgiwrap script
- `node['fcgiwrap']['group']` = 'www-data' - group for fcgiwrap script
- `node['fcgiwrap']['socket']` = '/var/run/fcgiwrap.socket' - path to fcgiwrap socket
- `node['fcgiwrap']['pkgs']` - requirements packages based on OS.

Usage
-----
#### fcgiwrap::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `fcgiwrap` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[fcgiwrap]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: alexander@saharchuk.com
