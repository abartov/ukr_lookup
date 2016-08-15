ukr_lookup
==========

This is a trivial shim to facilitate GET queries to the Cybermova service, accepting and returning UTF-8 and querying and interpreting Cybermova's cp1251 encoding.  

##Usage
the tool is a tiny Sinatra application, and needs to be hosted somewhere.  Assuming you keep the default port of 2014, after running it with:

```bash
./run.sh
```

you should be able to query (for example) http://localhost:2014/lookup?word=мова and get a response

##Author

Blame [Asaf Bartov](mailto:asaf.bartov@gmail.com) for this.

## License
The code is in the public domain.  See the LICENSE file for details.

