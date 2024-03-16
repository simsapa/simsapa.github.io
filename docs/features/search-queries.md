# Search Queries

## Search Modes in Brief

Sutta references are matched first. Typing **mn8**, **sn 56.11**, **iti92** will list those suttas.

**Fulltext Match:** it searches the content for keywords using the query expressions, non-accented letters matching accented ones. (I.e. it makes a query in the tantivy fulltext index and assigns scores to the results.)

<!--
Fulltext search is faster and more flexible than the Exact Match (SQL) search, but yields many partial matches.
-->

Fulltext search matches words in full, not in part, e.g. 'bodhi' will not match 'bodhisatta', but words are stemmed and will match declensions, e.g. 'bodhiṁ / bodhiyā'.

Searching with a single Pāli word will return results which **include the inflected forms**, the results ranked by the frequency of the term.

When searching for an exact text, use two or three words wrapped in double quotes, e.g.
**"amatogadhā sabbe dhammā"** (including the quote marks).

Prefixing the word with the '+' sign means a term must be included, the '-' signs means it must be excluded.

**bhikkhu +kamma -vipaka** means should include 'bhikkhu', must include 'kamma', must exclude 'vipaka'.

<!--
**Exact Match:** it searches the content for exact matches. (I.e. it makes SQL queries with **%query text%**.)

Exact Match (via SQL) matches in part, i.e. if the query is exactly contained somewhere in the content. E.g. 'vitakka' will match 'kāma**vitakka**ṁ', but there is no stemming, and will not match 'vitakkeyya'.
-->

**Title / Headword Match:** it searches only the titles of suttas or the headwords of dictionary words. (SQL queries)

## Fulltext Match Queries

Powered by the [tantivy](https://github.com/quickwit-oss/tantivy) fulltext search engine. Read more in the [QueryParser](https://docs.rs/tantivy/latest/tantivy/query/struct.QueryParser.html) docs.

The words in a query term are related as OR by default. **kamma vipāka** searches for entries which SHOULD include **kamma** OR **vipāka**, but not MUST include.

Prefixing the word with the '+' sign means a term must be included, the '-' signs means it must be excluded.

**bhikkhu +kamma -vipaka** means should include 'bhikkhu', must include 'kamma', must exclude 'vipaka'.

The texts are indexed with Pāli, English, etc. grammar stemmers, so declension forms will also match in the appropriate language.

- **dukkha** will match **dukkhaṁ / dukkhā / dukkhāni / dukkhena** etc.,
- **bhikkhu kamma vipaka** will match **bhikkhave kammānaṁ vipāko**,
- **monk receives robes** will match **monks receiving robes**.

Latin terms are expanded to include diacritics, **patipada** will match **paṭipadā**.

A pharse query is expressed with quote marks: **"paṭhamena jhānena"**.

The query can match parts of the document:

- **title:sticks cessation** - match 'sticks' in the title, 'cessation' in the content
- **word:kamma +work** - match 'kamma' in the headword, must include 'work' in the content
- **uid:pj4** - the uid should include 'pj4'
- **upekkhindriyaṁ -source:cst4** - match 'upekkhindriyaṁ' in the content, exclude all cst4 documents
- **calmness +source:thanissaro** - match 'calmness' in the content, only in documents by Bh. Thanissaro
- **+"buddhas of the past" +source:bodhi** - must include the phrase 'buddhas of the past', only in documents by Bh. Bodhi

#### Regex search (.* icon)

This option will parse the query as a regex pattern, but limited to globbing expressions, such as: `.* .+ a* a+`

The `.` (dot) matches any single character, `*` (asterisk) means 'zero or more' or the previous character, `+` (plus) means 'one or more'.

- **a\*vitak.\*** - the word start with zero or more of 'a', followed by 'vitak', followed by zero or more characters
- **.\*vitak.\*** - match any word containing 'vitak'
- **vitak.\*** - match starting with 'vitak'

#### Fuzzy search (~ icon)

This option allows matching words which may differ from the query by N number of characters (i.e. the [Levenshtein Distance](https://devopedia.org/levenshtein-distance)).

Fuzzy search is not availble together with regex patterns.

<!--

## Exact Match Queries

Joining terms with **AND** creates filtered SQL queries.

**kamma vipāka**: will match texts which contain the exact expression 'kamma vipāka' (including the space).

**kamma AND vipāka**: will match texts which contain both 'kamma' and 'vipāka', anywhere in the text (including 'kammavipāka').

-->
