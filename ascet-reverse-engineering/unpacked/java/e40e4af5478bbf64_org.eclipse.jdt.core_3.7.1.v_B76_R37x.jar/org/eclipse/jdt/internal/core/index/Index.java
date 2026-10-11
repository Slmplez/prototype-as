/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.DiskIndex;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.MemoryIndex;
import org.eclipse.jdt.internal.core.search.indexing.ReadWriteMonitor;

public class Index {
    public String containerPath;
    public ReadWriteMonitor monitor;
    static final char DEFAULT_SEPARATOR = '/';
    public char separator = (char)47;
    static final char JAR_SEPARATOR = "|".charAt(0);
    protected DiskIndex diskIndex;
    protected MemoryIndex memoryIndex;
    static final int MATCH_RULE_INDEX_MASK = 399;

    public static boolean isMatch(char[] pattern, char[] word, int matchRule) {
        if (pattern == null) {
            return true;
        }
        int patternLength = pattern.length;
        int wordLength = word.length;
        if (patternLength == 0) {
            return matchRule != 0;
        }
        if (wordLength == 0) {
            return (matchRule & 2) != 0 && patternLength == 1 && pattern[0] == '*';
        }
        switch (matchRule & 0x18F) {
            case 0: {
                return patternLength == wordLength && CharOperation.equals(pattern, word, false);
            }
            case 1: {
                return patternLength <= wordLength && CharOperation.prefixEquals(pattern, word, false);
            }
            case 2: {
                return CharOperation.match(pattern, word, false);
            }
            case 128: 
            case 256: {
                if (CharOperation.camelCaseMatch(pattern, word, false)) {
                    return true;
                }
                return patternLength <= wordLength && CharOperation.prefixEquals(pattern, word, false);
            }
            case 8: {
                return pattern[0] == word[0] && patternLength == wordLength && CharOperation.equals(pattern, word);
            }
            case 9: {
                return pattern[0] == word[0] && patternLength <= wordLength && CharOperation.prefixEquals(pattern, word);
            }
            case 10: {
                return CharOperation.match(pattern, word, true);
            }
            case 136: 
            case 264: {
                return pattern[0] == word[0] && CharOperation.camelCaseMatch(pattern, word, false);
            }
        }
        return false;
    }

    public Index(String fileName, String containerPath, boolean reuseExistingFile) throws IOException {
        this.containerPath = containerPath;
        this.monitor = new ReadWriteMonitor();
        this.memoryIndex = new MemoryIndex();
        this.diskIndex = new DiskIndex(fileName);
        this.diskIndex.initialize(reuseExistingFile);
        if (reuseExistingFile) {
            this.separator = this.diskIndex.separator;
        }
    }

    public void addIndexEntry(char[] category, char[] key, String containerRelativePath) {
        this.memoryIndex.addIndexEntry(category, key, containerRelativePath);
    }

    public String containerRelativePath(String documentPath) {
        int index = documentPath.indexOf("|");
        if (index == -1) {
            index = this.containerPath.length();
            if (documentPath.length() <= index) {
                throw new IllegalArgumentException("Document path " + documentPath + " must be relative to " + this.containerPath);
            }
        }
        return documentPath.substring(index + 1);
    }

    public File getIndexFile() {
        return this.diskIndex == null ? null : this.diskIndex.indexFile;
    }

    public boolean hasChanged() {
        return this.memoryIndex.hasChanged();
    }

    public EntryResult[] query(char[][] categories, char[] key, int matchRule) throws IOException {
        HashtableOfObject results;
        if (this.memoryIndex.shouldMerge() && this.monitor.exitReadEnterWrite()) {
            try {
                this.save();
            }
            finally {
                this.monitor.exitWriteEnterRead();
            }
        }
        int rule = matchRule & 0x18F;
        if (this.memoryIndex.hasChanged()) {
            results = this.diskIndex.addQueryResults(categories, key, rule, this.memoryIndex);
            results = this.memoryIndex.addQueryResults(categories, key, rule, results);
        } else {
            results = this.diskIndex.addQueryResults(categories, key, rule, null);
        }
        if (results == null) {
            return null;
        }
        EntryResult[] entryResults = new EntryResult[results.elementSize];
        int count = 0;
        Object[] values = results.valueTable;
        int i = 0;
        int l = values.length;
        while (i < l) {
            EntryResult result = (EntryResult)values[i];
            if (result != null) {
                entryResults[count++] = result;
            }
            ++i;
        }
        return entryResults;
    }

    public String[] queryDocumentNames(String substring) throws IOException {
        SimpleSet results;
        if (this.memoryIndex.hasChanged()) {
            results = this.diskIndex.addDocumentNames(substring, this.memoryIndex);
            this.memoryIndex.addDocumentNames(substring, results);
        } else {
            results = this.diskIndex.addDocumentNames(substring, null);
        }
        if (results.elementSize == 0) {
            return null;
        }
        String[] documentNames = new String[results.elementSize];
        int count = 0;
        Object[] paths = results.values;
        int i = 0;
        int l = paths.length;
        while (i < l) {
            if (paths[i] != null) {
                documentNames[count++] = (String)paths[i];
            }
            ++i;
        }
        return documentNames;
    }

    public void remove(String containerRelativePath) {
        this.memoryIndex.remove(containerRelativePath);
    }

    public void reset() throws IOException {
        this.memoryIndex = new MemoryIndex();
        this.diskIndex = new DiskIndex(this.diskIndex.indexFile.getCanonicalPath());
        this.diskIndex.initialize(false);
    }

    public void save() throws IOException {
        if (!this.hasChanged()) {
            return;
        }
        int numberOfChanges = this.memoryIndex.docsToReferences.elementSize;
        this.diskIndex.separator = this.separator;
        this.diskIndex = this.diskIndex.mergeWith(this.memoryIndex);
        this.memoryIndex = new MemoryIndex();
        if (numberOfChanges > 1000) {
            System.gc();
        }
    }

    public void startQuery() {
        if (this.diskIndex != null) {
            this.diskIndex.startQuery();
        }
    }

    public void stopQuery() {
        if (this.diskIndex != null) {
            this.diskIndex.stopQuery();
        }
    }

    public String toString() {
        return "Index for " + this.containerPath;
    }

    public boolean isIndexForJar() {
        return this.separator == JAR_SEPARATOR;
    }
}

