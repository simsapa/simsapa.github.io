# Localhost API

Simsapa starts a server on `http://localhost:4848` where it can receive queries and commands.

The routes are defined in [simsapa/app/api.py](https://github.com/simsapa/simsapa/blob/main/simsapa/app/api.py).

Some examples:

Open the Sutta Study Window:

``` shell
curl 'http://localhost:4848/open_window/Sutta%20Study'
```

Open the Lookup Window and run a dictionary search:

``` shell
curl 'http://localhost:4848/lookup_window_query/pāṭimokkha'

curl -X POST --json '{ "query_text": "kamma" }' 'http://localhost:4848/lookup_window_query'
```

In the Sutta Study, open MN 2 in the first panel and find 'āsava', while also run a dictionary search for 'āsava'. Does not open the Sutta Study window if not already open.

``` shell
curl -X POST --json '{ "sutta_panels": [ {"sutta_uid": "mn2/pli/ms", "find_text": "āsava"} ], "lookup_panel": {"query_text": "āsava"} }' 'http://localhost:4848/sutta_study'
```

Or in a Python script:

``` python
import requests

params = { "sutta_panels": [ {"sutta_uid": "mn2/pli/ms", "find_text": "sappurisadhamma"} ], "lookup_panel": {"query_text": "sappurisadhamma"} }

requests.post("http://localhost:4848/sutta_study", json=params)
```

## Public routes

The following routes provide useful interfaces for external plugins and other apps to communicate with Simsapa.


```
@app.route('/suttas_fulltext_search', methods=['POST'])
```

Run a fulltext sutta query and return the results.

```
@app.route('/dict_combined_search', methods=['POST'])
```

Run a combined (DPD lookup + fulltext) dictionary query and return the results.

```
@app.route('/dict_words_flat_completion_list', methods=['GET'])
```

Return a list of words and roots from the DPD dictionary. This is a useful size for the plugins to load as autocompletion. A list of words from all dictionaries is too long for this purpose.

```
@app.route('/sutta_titles_flat_completion_list', methods=['GET'])
```

Returns a list of all sutta titles.

```
@app.route('/sutta_and_dict_search_options', methods=['GET'])
```

Returns values for search option dropdowns.

```
@app.route('/lookup_window_query/<string:word>', methods=['GET'])
@app.route('/lookup_window_query/<string:word>/<string:dict_label>', methods=['GET'])
@app.route('/lookup_window_query', methods=['POST'])
```

Run a lookup in the Lookup Window. This opens and raises the window.

```
@app.route('/sutta_study_lookup/<string:word>', methods=['GET'])
@app.route('/sutta_study_lookup/<string:word>/<string:dict_label>', methods=['GET'])
@app.route('/sutta_study_lookup', methods=['POST'])
```

Run a lookup in the dictionary panel of Sutta Study Window.

```
@app.route('/sutta_search', methods=['POST'])
```

Send commands to the Sutta Search Window.

```
@app.route('/sutta_study', methods=['POST'])
```

Send commands to the Sutta Study Window.

```
@app.route('/dictionary_search', methods=['POST'])
```

Send commands to the Dictionary Search Window.

```
@app.route('/suttas/<string:sutta_ref>', methods=['GET'])
@app.route('/suttas/<string:sutta_ref>/<string:lang>', methods=['GET'])
@app.route('/suttas/<string:sutta_ref>/<string:lang>/<string:source_uid>', methods=['GET'])
```

Retreive a sutta.

```
@app.route('/words/<string:word>', methods=['GET'])
@app.route('/words/<string:word>/<string:dict_label>', methods=['GET'])
@app.route('/words/<string:word>.json', methods=['GET'])
@app.route('/words/<string:word>/<string:dict_label>.json', methods=['GET'])
```

Retreive a dictionary word.

```
@app.route('/open_window', defaults={'window_type': ''})
@app.route('/open_window/<string:window_type>', methods=['GET'])
```

Open and raise a specific application window.

## Private routes

The following routes are meant to be used internally by Simsapa.

    @app.route('/queues/<string:queue_id>', methods=['POST'])
    @app.route('/assets/<path:filename>', methods=['GET'])
    @app.route('/generate_graph', methods=['POST'])
    @app.route('/get_bookmarks_with_range_for_sutta', methods=['POST'])
    @app.route('/get_bookmarks_with_quote_only_for_sutta', methods=['POST'])
