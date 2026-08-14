# Search Queries

## Search Help

Use the search bar to look in the **Suttas** (S), **Dictionary** (D) or **Library** (L) areas. Choose the area with the S / D / L buttons, then pick a search mode from the dropdown.

### Search modes

Sutta references are matched first. Typing **mn8**, **sn 56.11**, **iti92** will list those suttas.

- **Fulltext Match** -- word-based full-text search over the whole text. Pāli words are stemmed, so a query matches its inflected forms. Best for finding a word anywhere in the texts.
- **Contains Match** -- literal substring match. Finds the exact letters you typed, wherever they occur.
- **Title Match** -- matches only the titles of suttas or books.
- **Combined** (Dictionary) -- runs a DPD lookup together with the word deconstructor, the most helpful default for dictionary searches.
- **DPD Lookup** -- looks up headwords and roots in the Digital Pāḷi Dictionary.
- **Headword Match** -- matches dictionary headwords.

### Fulltext Search Examples

The fulltext search uses [tantivy's query syntax](https://docs.rs/tantivy/latest/tantivy/query/struct.QueryParser.html). The 'must' (+) and 'negative' (-) terms are particulary useful for filtering results.

Words don't have to be exactly near each other, e.g. **so ce evam vadeyya** will also find **so ce** bhikkhu **evaṁ vadeyya**

Prefixing a term with + and - can control "Must" or "Must not" include.

**santam padam abhisamecca** -- each term may be included, but ok if not all are found.

**santam padam +abhisamecca** -- 'abhisamecca' must be included, even if the others may be absent.

**santam padam -abhisamecca** -- 'abhisamecca' must not be included.

Fulltext matches Pāli declensions but doesn't do partial word matches, so **upasan** doesn't find anything (not a valid declension stem) until you type **upasankama**.

The *Contains Match* is for exact partial matches.

### Typing a query

- Search-as-you-type runs a plain text query once it is **4 or more characters** long; a recognised reference such as `mn8` runs from **3**. This way, short text queries which would match too many results are held back while you type.
- Press the **search button** (or the Enter key) to run a query without waiting: a **3-character** query runs straight away, while a **1- or 2-character** query first asks you to confirm, because it can return many results.
- In the **Dictionary** area, a one- or two-letter word such as `i` or `ko` can be looked up as a dictionary id by using the `/dpd` form (`i/dpd`, `ko/dpd`). Confirming the short-query prompt does this for you.

### References open directly

- A sutta reference such as `SN 56.11`, `Dhp 183` or a book uid such as `bmc.0` opens that text.
- A dictionary reference such as `dhamma 1.01`, `34626/dpd` or `dhamma-1-01/dpd` opens that entry.

### Language filter

The language dropdown limits results to one language. **Language** (the first option) means no filter -- results from all languages are shown.

### Query length summary

  Length   Search-as-you-type                               Search button
  -------- ------------------------------------------------ ------------------
  0        nothing                                          nothing
  1        held back                                        confirm dialog
  2        held back                                        confirm dialog
  3        reference (`mn8`) runs; text (`eva`) held back   runs, no confirm
  4        text (`dasa`) runs                               runs, no confirm

