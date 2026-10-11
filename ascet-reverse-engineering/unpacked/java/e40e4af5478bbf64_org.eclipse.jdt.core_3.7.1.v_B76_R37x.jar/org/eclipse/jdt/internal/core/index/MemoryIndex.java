/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.index;

import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.util.SimpleWordSet;

public class MemoryIndex {
    public int NUM_CHANGES = 100;
    SimpleLookupTable docsToReferences = new SimpleLookupTable(7);
    SimpleWordSet allWords = new SimpleWordSet(7);
    String lastDocumentName;
    HashtableOfObject lastReferenceTable;

    MemoryIndex() {
    }

    void addDocumentNames(String substring, SimpleSet results) {
        Object[] paths = this.docsToReferences.keyTable;
        Object[] referenceTables = this.docsToReferences.valueTable;
        if (substring == null) {
            int i = 0;
            int l = referenceTables.length;
            while (i < l) {
                if (referenceTables[i] != null) {
                    results.add(paths[i]);
                }
                ++i;
            }
        } else {
            int i = 0;
            int l = referenceTables.length;
            while (i < l) {
                if (referenceTables[i] != null && ((String)paths[i]).startsWith(substring, 0)) {
                    results.add(paths[i]);
                }
                ++i;
            }
        }
    }

    void addIndexEntry(char[] category, char[] key, String documentName) {
        HashtableOfObject referenceTable;
        if (documentName.equals(this.lastDocumentName)) {
            referenceTable = this.lastReferenceTable;
        } else {
            referenceTable = (HashtableOfObject)this.docsToReferences.get(documentName);
            if (referenceTable == null) {
                referenceTable = new HashtableOfObject(3);
                this.docsToReferences.put(documentName, referenceTable);
            }
            this.lastDocumentName = documentName;
            this.lastReferenceTable = referenceTable;
        }
        SimpleWordSet existingWords = (SimpleWordSet)referenceTable.get(category);
        if (existingWords == null) {
            existingWords = new SimpleWordSet(1);
            referenceTable.put(category, existingWords);
        }
        existingWords.add(this.allWords.add(key));
    }

    HashtableOfObject addQueryResults(char[][] categories, char[] key, int matchRule, HashtableOfObject results) {
        Object[] paths = this.docsToReferences.keyTable;
        Object[] referenceTables = this.docsToReferences.valueTable;
        if (matchRule == 8 && key != null) {
            int i = 0;
            int l = referenceTables.length;
            while (i < l) {
                HashtableOfObject categoryToWords = (HashtableOfObject)referenceTables[i];
                if (categoryToWords != null) {
                    int j = 0;
                    int m = categories.length;
                    while (j < m) {
                        SimpleWordSet wordSet = (SimpleWordSet)categoryToWords.get(categories[j]);
                        if (wordSet != null && wordSet.includes(key)) {
                            EntryResult result;
                            if (results == null) {
                                results = new HashtableOfObject(13);
                            }
                            if ((result = (EntryResult)results.get(key)) == null) {
                                result = new EntryResult(key, null);
                                results.put(key, result);
                            }
                            result.addDocumentName((String)paths[i]);
                            break;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        } else {
            int i = 0;
            int l = referenceTables.length;
            while (i < l) {
                HashtableOfObject categoryToWords = (HashtableOfObject)referenceTables[i];
                if (categoryToWords != null) {
                    int j = 0;
                    int m = categories.length;
                    while (j < m) {
                        SimpleWordSet wordSet = (SimpleWordSet)categoryToWords.get(categories[j]);
                        if (wordSet != null) {
                            char[][] words = wordSet.words;
                            int k = 0;
                            int n = words.length;
                            while (k < n) {
                                char[] word = words[k];
                                if (word != null && Index.isMatch(key, word, matchRule)) {
                                    EntryResult result;
                                    if (results == null) {
                                        results = new HashtableOfObject(13);
                                    }
                                    if ((result = (EntryResult)results.get(word)) == null) {
                                        result = new EntryResult(word, null);
                                        results.put(word, result);
                                    }
                                    result.addDocumentName((String)paths[i]);
                                }
                                ++k;
                            }
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        return results;
    }

    boolean hasChanged() {
        return this.docsToReferences.elementSize > 0;
    }

    void remove(String documentName) {
        if (documentName.equals(this.lastDocumentName)) {
            this.lastDocumentName = null;
            this.lastReferenceTable = null;
        }
        this.docsToReferences.put(documentName, null);
    }

    boolean shouldMerge() {
        return this.docsToReferences.elementSize >= this.NUM_CHANGES;
    }
}

