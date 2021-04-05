
## TL;DR
Using Django Rest Framework, serializing 400 complex PostGIS `geography` columns took about 4.5 seconds. Using GeoDjango's [AsGeoJSON](https://docs.djangoproject.com/en/3.1/ref/contrib/gis/functions/#asgeojson) and `json.loads()` to serialize reduced that time to 1.2 seconds. 

However, using `AsGeoJson` and then writing out the JSON by hand (in this case as a [Formatted String Literal](https://docs.python.org/3/tutorial/inputoutput.html#tut-f-strings), also known as an "f-string") produced a time of only *348 milliseconds* (0.35 seconds), more than 10x faster than the DRF implementation, and 3x faster than using Django's serializers. It is this last method, producing the JSON directly as a string, which is often overlooked. 

## The Usual Way - A Serialization Library

Almost all Django-based REST APIs use some sort of serialization framework. 
[Django Rest Framework](https://www.django-rest-framework.org) is among the most popular, and is the one I chose for the "normal" way of serializing GeoDjango objects. There are [faster frameworks than DRF](https://voidfiles.github.io/python-serialization-benchmark/) available, but in every case they are slower than other approaches. 

## The Faster Way - Use Django's Serializers 
A large improvement in serialization speed can be had by not using a serialization framework, and creating a dictionary directly from the returned row(s). In this technique, we must use `json.loads()` because we need to parse the string into something that a serializer can turn into a useful JSON string. This is also the source of most of processing time. 

One can look at the view returned by `/django-invalid` to see what happens if we take out the critical `json.loads()` step. Because the GeoJSON is in simple strings, and Django's serializers have no way to know that they contain valid JSON, they are surrounded by double quotes, making them not parseable by a client (well, they are parseable, they just won't be JavaScript objects, but rather useless text). 

## The Fastest Way - Don't Touch the String

The key to extremely fast serialization is to recognize that the string returned from `AsGeoJSON` is *already a string containing valid JSON*. It is wasteful to parse that string into a "[sea of objects](https://en.wikipedia.org/wiki/Object-oriented_programming)" and then serialize it *back into the string we started with*. 

So we simply write out the JSON as an f-string, skipping, of course, the double quotes around the "string" that we *know* is valid JSON. 

We can do this because JSON is such a simple format, and in this case it is no more code total than the Django built-in serializers or using a serialization framework. Admittedly, this kind of direct production of JSON will feel a bit uncomfortable for many programmers used to using higher-level abstractions, but in many cases it is worth doing, especially for production sites with high traffic. Even shaving 200ms off the response time for an API endpoint is worthwhile, even though it might not be noticeable to any individual user, because lower response times mean serving *far more users per second on the same hardware*, and achieving lower average latency times for all users.

## Try It Yourself
The full code I used is in this repo, including a database script that can be loaded using `psql` to make it easy to create the large polygons. I have also included [pyinstrument](https://github.com/joerick/pyinstrument), to make it very easy to see the extra (and unnecessary) work done by the first two approaches above. Add `?profile` to the end of any URL to see the output. 
