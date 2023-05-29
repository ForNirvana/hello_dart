void main() {
  /*
  * The Uri class provides functions to encode and decode strings for use in 
  * URIs (which you might know as URLs). These functions handle characters that 
  * are special for URIs, such as and . The Uri class also parses and exposes the 
  * components of a URI—host, port, scheme, and so on.&=
  */

  /// Encoding and decoding fully qualified URIs
  
  /*
  * To encode and decode characters except those with special meaning in a 
  * URI (such as , , , ), use the and methods. These methods are good for encoding 
  * or decoding a fully qualified URI, leaving intact special 
  * URI characters./:&#encodeFull()decodeFull()
  */

  var uri = 'https://example.org/api?foo=some message';

  var encoded = Uri.encodeFull(uri);
  assert(encoded == 'https://example.org/api?foo=some%20message');

  var decoded = Uri.decodeFull(encoded);
  assert(uri == decoded);

  /// Encoding and decoding URI components
  
  /*
  * To encode and decode all of a string’s characters that have special meaning 
  * in a URI, including (but not limited to) , , and , use the and 
  * methods./&:encodeComponent()decodeComponent()
  */

  var uri1 = 'https://example.org/api?foo=some message';

  var encoded1 = Uri.encodeComponent(uri);

  var decoded1 = Uri.decodeComponent(encoded);
  assert(uri == decoded);

  /// Parsing URIs
  
  /*
  * If you have a Uri object or a URI string, you can get its parts using Uri 
  * fields such as . To create a Uri from a string, use the static method:pathparse()
  */  

  var uri2 = Uri.parse('https://example.org:8080/foo/bar#frag');

  assert(uri2.scheme == 'https');
  assert(uri2.host == 'example.org');
  assert(uri2.path == '/foo/bar');
  assert(uri2.fragment == 'frag');
  assert(uri2.origin == 'https://example.org:8080');

  /// Building URIs
  
  /*
  * You can build up a URI from individual parts using the constructor:Uri()
  */ 

  var uri3 = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  assert(uri3.toString() == 'https://example.org/foo/bar?lang=dart#frag');

  /*
  * If you don’t need to specify a fragment, to create a URI with a http or https
  * scheme, you can instead use the Uri.http or Uri.https factory constructors:
  */ 

  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});

  assert(httpUri.toString() == 'http://example.org/foo/bar?lang=dart');
  assert(httpsUri.toString() == 'https://example.org/foo/bar?lang=dart');

  print("OK.");

}
