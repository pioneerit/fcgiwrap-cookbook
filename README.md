fcgiwrap Cookbook
=================
Install fcgiwrap. More faster and stable then nginx_simplecgi.
fcgiwrap is a simple server for running CGI applications over FastCGI. It hopes to provide clean CGI support to Nginx (and other web servers that may need it).


Requirements
------------
For RHEL needs packages:
- autoconf
- make

TODO: depend on `build-essential`


e.g.
#### packages
- `toaster` - fcgiwrap needs toaster to brown your bagel.

Attributes
----------
TODO: Add to cookbook attributes for configure

e.g.
#### fcgiwrap::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['fcgiwrap']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

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
