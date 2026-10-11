/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.index;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UTFDataFormatException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.index.MemoryIndex;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.SimpleWordSet;
import org.eclipse.jdt.internal.core.util.Util;

public class DiskIndex {
    File indexFile;
    private int headerInfoOffset;
    private int numberOfChunks;
    private int sizeOfLastChunk;
    private int[] chunkOffsets;
    private int documentReferenceSize;
    private int startOfCategoryTables;
    private HashtableOfIntValues categoryOffsets;
    private HashtableOfIntValues categoryEnds;
    private int cacheUserCount;
    private String[][] cachedChunks;
    private HashtableOfObject categoryTables;
    private char[] cachedCategoryName;
    private static final int DEFAULT_BUFFER_SIZE = 2048;
    private static int BUFFER_READ_SIZE = 2048;
    private static final int BUFFER_WRITE_SIZE = 2048;
    private byte[] streamBuffer;
    private int bufferIndex;
    private int bufferEnd;
    private int streamEnd;
    char separator = (char)47;
    public static final String SIGNATURE = "INDEX VERSION 1.126";
    private static final char[] SIGNATURE_CHARS = "INDEX VERSION 1.126".toCharArray();
    public static boolean DEBUG = false;
    private static final int RE_INDEXED = -1;
    private static final int DELETED = -2;
    private static final int CHUNK_SIZE = 100;
    private static final SimpleSetOfCharArray INTERNED_CATEGORY_NAMES = new SimpleSetOfCharArray(20);

    DiskIndex(String fileName) {
        if (fileName == null) {
            throw new IllegalArgumentException();
        }
        this.indexFile = new File(fileName);
        this.headerInfoOffset = -1;
        this.numberOfChunks = -1;
        this.sizeOfLastChunk = -1;
        this.chunkOffsets = null;
        this.documentReferenceSize = -1;
        this.cacheUserCount = -1;
        this.cachedChunks = null;
        this.categoryTables = null;
        this.cachedCategoryName = null;
        this.categoryOffsets = null;
        this.categoryEnds = null;
    }

    SimpleSet addDocumentNames(String substring, MemoryIndex memoryIndex) throws IOException {
        String[] docNames = this.readAllDocumentNames();
        SimpleSet results = new SimpleSet(docNames.length);
        if (substring == null) {
            if (memoryIndex == null) {
                int i = 0;
                int l = docNames.length;
                while (i < l) {
                    results.add(docNames[i]);
                    ++i;
                }
            } else {
                SimpleLookupTable docsToRefs = memoryIndex.docsToReferences;
                int i = 0;
                int l = docNames.length;
                while (i < l) {
                    String docName = docNames[i];
                    if (!docsToRefs.containsKey(docName)) {
                        results.add(docName);
                    }
                    ++i;
                }
            }
        } else if (memoryIndex == null) {
            int i = 0;
            int l = docNames.length;
            while (i < l) {
                if (docNames[i].startsWith(substring, 0)) {
                    results.add(docNames[i]);
                }
                ++i;
            }
        } else {
            SimpleLookupTable docsToRefs = memoryIndex.docsToReferences;
            int i = 0;
            int l = docNames.length;
            while (i < l) {
                String docName = docNames[i];
                if (docName.startsWith(substring, 0) && !docsToRefs.containsKey(docName)) {
                    results.add(docName);
                }
                ++i;
            }
        }
        return results;
    }

    private HashtableOfObject addQueryResult(HashtableOfObject results, char[] word, Object docs, MemoryIndex memoryIndex, boolean prevResults) throws IOException {
        EntryResult result;
        if (results == null) {
            results = new HashtableOfObject(13);
        }
        EntryResult entryResult = result = prevResults ? (EntryResult)results.get(word) : null;
        if (memoryIndex == null) {
            if (result == null) {
                results.putUnsafely(word, new EntryResult(word, docs));
            } else {
                result.addDocumentTable(docs);
            }
        } else {
            SimpleLookupTable docsToRefs = memoryIndex.docsToReferences;
            if (result == null) {
                result = new EntryResult(word, null);
            }
            int[] docNumbers = this.readDocumentNumbers(docs);
            int i = 0;
            int l = docNumbers.length;
            while (i < l) {
                String docName = this.readDocumentName(docNumbers[i]);
                if (!docsToRefs.containsKey(docName)) {
                    result.addDocumentName(docName);
                }
                ++i;
            }
            if (!result.isEmpty()) {
                results.put(word, result);
            }
        }
        return results;
    }

    HashtableOfObject addQueryResults(char[][] categories, char[] key, int matchRule, MemoryIndex memoryIndex) throws IOException {
        if (this.categoryOffsets == null) {
            return null;
        }
        HashtableOfObject results = null;
        boolean prevResults = false;
        if (key == null) {
            int i = 0;
            int l = categories.length;
            while (i < l) {
                HashtableOfObject wordsToDocNumbers = this.readCategoryTable(categories[i], true);
                if (wordsToDocNumbers != null) {
                    char[][] words = wordsToDocNumbers.keyTable;
                    Object[] values = wordsToDocNumbers.valueTable;
                    if (results == null) {
                        results = new HashtableOfObject(wordsToDocNumbers.elementSize);
                    }
                    int j = 0;
                    int m = words.length;
                    while (j < m) {
                        if (words[j] != null) {
                            results = this.addQueryResult(results, words[j], values[j], memoryIndex, prevResults);
                        }
                        ++j;
                    }
                }
                prevResults = results != null;
                ++i;
            }
            if (results != null && this.cachedChunks == null) {
                this.cacheDocumentNames();
            }
        } else {
            switch (matchRule) {
                case 8: {
                    int i = 0;
                    int l = categories.length;
                    while (i < l) {
                        Object value;
                        HashtableOfObject wordsToDocNumbers = this.readCategoryTable(categories[i], false);
                        if (wordsToDocNumbers != null && (value = wordsToDocNumbers.get(key)) != null) {
                            results = this.addQueryResult(results, key, value, memoryIndex, prevResults);
                        }
                        prevResults = results != null;
                        ++i;
                    }
                    break;
                }
                case 9: {
                    int i = 0;
                    int l = categories.length;
                    while (i < l) {
                        HashtableOfObject wordsToDocNumbers = this.readCategoryTable(categories[i], false);
                        if (wordsToDocNumbers != null) {
                            char[][] words = wordsToDocNumbers.keyTable;
                            Object[] values = wordsToDocNumbers.valueTable;
                            int j = 0;
                            int m = words.length;
                            while (j < m) {
                                char[] word = words[j];
                                if (word != null && key[0] == word[0] && CharOperation.prefixEquals(key, word)) {
                                    results = this.addQueryResult(results, word, values[j], memoryIndex, prevResults);
                                }
                                ++j;
                            }
                        }
                        prevResults = results != null;
                        ++i;
                    }
                    break;
                }
                default: {
                    int i = 0;
                    int l = categories.length;
                    while (i < l) {
                        HashtableOfObject wordsToDocNumbers = this.readCategoryTable(categories[i], false);
                        if (wordsToDocNumbers != null) {
                            char[][] words = wordsToDocNumbers.keyTable;
                            Object[] values = wordsToDocNumbers.valueTable;
                            int j = 0;
                            int m = words.length;
                            while (j < m) {
                                char[] word = words[j];
                                if (word != null && Index.isMatch(key, word, matchRule)) {
                                    results = this.addQueryResult(results, word, values[j], memoryIndex, prevResults);
                                }
                                ++j;
                            }
                        }
                        prevResults = results != null;
                        ++i;
                    }
                    break block0;
                }
            }
        }
        if (results == null) {
            return null;
        }
        return results;
    }

    private void cacheDocumentNames() throws IOException {
        this.cachedChunks = new String[this.numberOfChunks][];
        FileInputStream stream = new FileInputStream(this.indexFile);
        try {
            try {
                if (this.numberOfChunks > 5) {
                    BUFFER_READ_SIZE <<= 1;
                }
                int offset = this.chunkOffsets[0];
                stream.skip(offset);
                this.streamBuffer = new byte[BUFFER_READ_SIZE];
                this.bufferIndex = 0;
                this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
                int i = 0;
                while (i < this.numberOfChunks) {
                    int size = i == this.numberOfChunks - 1 ? this.sizeOfLastChunk : 100;
                    this.cachedChunks[i] = new String[size];
                    this.readChunk(this.cachedChunks[i], stream, 0, size);
                    ++i;
                }
            }
            catch (IOException e) {
                this.cachedChunks = null;
                throw e;
            }
        }
        finally {
            stream.close();
            this.streamBuffer = null;
            BUFFER_READ_SIZE = 2048;
        }
    }

    private String[] computeDocumentNames(String[] onDiskNames, int[] positions, SimpleLookupTable indexedDocuments, MemoryIndex memoryIndex) {
        int count;
        int onDiskLength = onDiskNames.length;
        Object[] docNames = memoryIndex.docsToReferences.keyTable;
        Object[] referenceTables = memoryIndex.docsToReferences.valueTable;
        if (onDiskLength == 0) {
            int i = 0;
            int l = referenceTables.length;
            while (i < l) {
                if (referenceTables[i] != null) {
                    indexedDocuments.put(docNames[i], null);
                }
                ++i;
            }
            String[] newDocNames = new String[indexedDocuments.elementSize];
            int count2 = 0;
            Object[] added = indexedDocuments.keyTable;
            int i2 = 0;
            int l2 = added.length;
            while (i2 < l2) {
                if (added[i2] != null) {
                    newDocNames[count2++] = (String)added[i2];
                }
                ++i2;
            }
            Util.sort(newDocNames);
            i2 = 0;
            l2 = newDocNames.length;
            while (i2 < l2) {
                indexedDocuments.put(newDocNames[i2], new Integer(i2));
                ++i2;
            }
            return newDocNames;
        }
        int i = 0;
        while (i < onDiskLength) {
            positions[i] = i;
            ++i;
        }
        int numDeletedDocNames = 0;
        int i3 = 0;
        int l = docNames.length;
        while (i3 < l) {
            block26: {
                String docName = (String)docNames[i3];
                if (docName != null) {
                    int j = 0;
                    while (j < onDiskLength) {
                        if (docName.equals(onDiskNames[j])) {
                            if (referenceTables[i3] == null) {
                                positions[j] = -2;
                                ++numDeletedDocNames;
                            } else {
                                positions[j] = -1;
                            }
                            break block26;
                        }
                        ++j;
                    }
                    if (referenceTables[i3] != null) {
                        indexedDocuments.put(docName, null);
                    }
                }
            }
            ++i3;
        }
        String[] newDocNames = onDiskNames;
        if (numDeletedDocNames > 0 || indexedDocuments.elementSize > 0) {
            newDocNames = new String[onDiskLength + indexedDocuments.elementSize - numDeletedDocNames];
            count = 0;
            int i4 = 0;
            while (i4 < onDiskLength) {
                if (positions[i4] >= -1) {
                    newDocNames[count++] = onDiskNames[i4];
                }
                ++i4;
            }
            Object[] added = indexedDocuments.keyTable;
            int i5 = 0;
            int l3 = added.length;
            while (i5 < l3) {
                if (added[i5] != null) {
                    newDocNames[count++] = (String)added[i5];
                }
                ++i5;
            }
            Util.sort(newDocNames);
            i5 = 0;
            l3 = newDocNames.length;
            while (i5 < l3) {
                if (indexedDocuments.containsKey(newDocNames[i5])) {
                    indexedDocuments.put(newDocNames[i5], new Integer(i5));
                }
                ++i5;
            }
        }
        count = -1;
        int i6 = 0;
        block13: while (i6 < onDiskLength) {
            switch (positions[i6]) {
                case -2: {
                    ++i6;
                    break;
                }
                case -1: {
                    String newName = newDocNames[++count];
                    if (!newName.equals(onDiskNames[i6])) continue block13;
                    indexedDocuments.put(newName, new Integer(count));
                    ++i6;
                    break;
                }
                default: {
                    if (!newDocNames[++count].equals(onDiskNames[i6])) continue block13;
                    positions[i6++] = count;
                }
            }
        }
        return newDocNames;
    }

    private void copyQueryResults(HashtableOfObject categoryToWords, int newPosition) {
        char[][] categoryNames = categoryToWords.keyTable;
        Object[] wordSets = categoryToWords.valueTable;
        int i = 0;
        int l = categoryNames.length;
        while (i < l) {
            char[] categoryName = categoryNames[i];
            if (categoryName != null) {
                SimpleWordSet wordSet = (SimpleWordSet)wordSets[i];
                HashtableOfObject wordsToDocs = (HashtableOfObject)this.categoryTables.get(categoryName);
                if (wordsToDocs == null) {
                    wordsToDocs = new HashtableOfObject(wordSet.elementSize);
                    this.categoryTables.put(categoryName, wordsToDocs);
                }
                char[][] words = wordSet.words;
                int j = 0;
                int m = words.length;
                while (j < m) {
                    char[] word = words[j];
                    if (word != null) {
                        Object o = wordsToDocs.get(word);
                        if (o == null) {
                            wordsToDocs.putUnsafely(word, new int[]{newPosition});
                        } else if (o instanceof IntList) {
                            ((IntList)o).add(newPosition);
                        } else {
                            IntList list = new IntList((int[])o);
                            list.add(newPosition);
                            wordsToDocs.put(word, list);
                        }
                    }
                    ++j;
                }
            }
            ++i;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    void initialize(boolean reuseExistingFile) throws IOException {
        if (this.indexFile.exists()) {
            if (reuseExistingFile) {
                FileInputStream stream = new FileInputStream(this.indexFile);
                this.streamBuffer = new byte[BUFFER_READ_SIZE];
                this.bufferIndex = 0;
                this.bufferEnd = stream.read(this.streamBuffer, 0, 128);
                try {
                    char[] signature = this.readStreamChars(stream);
                    if (!CharOperation.equals(signature, SIGNATURE_CHARS)) {
                        throw new IOException(Messages.exception_wrongFormat);
                    }
                    this.headerInfoOffset = this.readStreamInt(stream);
                    if (this.headerInfoOffset <= 0) return;
                    stream.skip(this.headerInfoOffset - this.bufferEnd);
                    this.bufferIndex = 0;
                    this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
                    this.readHeaderInfo(stream);
                    return;
                }
                finally {
                    stream.close();
                }
            }
            if (!this.indexFile.delete()) {
                if (!DEBUG) throw new IOException("Failed to delete index " + this.indexFile);
                System.out.println("initialize - Failed to delete index " + this.indexFile);
                throw new IOException("Failed to delete index " + this.indexFile);
            }
        }
        if (this.indexFile.createNewFile()) {
            FileOutputStream stream = new FileOutputStream(this.indexFile, false);
            try {
                this.streamBuffer = new byte[BUFFER_READ_SIZE];
                this.bufferIndex = 0;
                this.writeStreamChars(stream, SIGNATURE_CHARS);
                this.writeStreamInt(stream, -1);
                if (this.bufferIndex <= 0) return;
                stream.write(this.streamBuffer, 0, this.bufferIndex);
                this.bufferIndex = 0;
                return;
            }
            finally {
                stream.close();
            }
        } else {
            if (!DEBUG) throw new IOException("Failed to create new index " + this.indexFile);
            System.out.println("initialize - Failed to create new index " + this.indexFile);
            throw new IOException("Failed to create new index " + this.indexFile);
        }
    }

    private void initializeFrom(DiskIndex diskIndex, File newIndexFile) throws IOException {
        if (newIndexFile.exists() && !newIndexFile.delete()) {
            if (DEBUG) {
                System.out.println("initializeFrom - Failed to delete temp index " + this.indexFile);
            }
        } else if (!newIndexFile.createNewFile()) {
            if (DEBUG) {
                System.out.println("initializeFrom - Failed to create temp index " + this.indexFile);
            }
            throw new IOException("Failed to create temp index " + this.indexFile);
        }
        int size = diskIndex.categoryOffsets == null ? 8 : diskIndex.categoryOffsets.elementSize;
        this.categoryOffsets = new HashtableOfIntValues(size);
        this.categoryEnds = new HashtableOfIntValues(size);
        this.categoryTables = new HashtableOfObject(size);
        this.separator = diskIndex.separator;
    }

    private void mergeCategories(DiskIndex onDisk, int[] positions, FileOutputStream stream) throws IOException {
        char[][] oldNames = onDisk.categoryOffsets.keyTable;
        int i = 0;
        int l = oldNames.length;
        while (i < l) {
            char[] oldName = oldNames[i];
            if (oldName != null && !this.categoryTables.containsKey(oldName)) {
                this.categoryTables.put(oldName, null);
            }
            ++i;
        }
        char[][] categoryNames = this.categoryTables.keyTable;
        int i2 = 0;
        int l2 = categoryNames.length;
        while (i2 < l2) {
            if (categoryNames[i2] != null) {
                this.mergeCategory(categoryNames[i2], onDisk, positions, stream);
            }
            ++i2;
        }
        this.categoryTables = null;
    }

    private void mergeCategory(char[] categoryName, DiskIndex onDisk, int[] positions, FileOutputStream stream) throws IOException {
        HashtableOfObject wordsToDocs;
        block12: {
            HashtableOfObject oldWordsToDocs;
            wordsToDocs = (HashtableOfObject)this.categoryTables.get(categoryName);
            if (wordsToDocs == null) {
                wordsToDocs = new HashtableOfObject(3);
            }
            if ((oldWordsToDocs = onDisk.readCategoryTable(categoryName, true)) == null) break block12;
            char[][] oldWords = oldWordsToDocs.keyTable;
            Object[] oldArrayOffsets = oldWordsToDocs.valueTable;
            int i = 0;
            int l = oldWords.length;
            while (i < l) {
                block13: {
                    Object o;
                    int count;
                    int[] mappedNumbers;
                    char[] oldWord;
                    block14: {
                        oldWord = oldWords[i];
                        if (oldWord == null) break block13;
                        int[] oldDocNumbers = (int[])oldArrayOffsets[i];
                        int length = oldDocNumbers.length;
                        mappedNumbers = new int[length];
                        count = 0;
                        int j = 0;
                        while (j < length) {
                            int pos = positions[oldDocNumbers[j]];
                            if (pos > -1) {
                                mappedNumbers[count++] = pos;
                            }
                            ++j;
                        }
                        if (count >= length) break block14;
                        if (count == 0) break block13;
                        int[] nArray = mappedNumbers;
                        mappedNumbers = new int[count];
                        System.arraycopy(nArray, 0, mappedNumbers, 0, count);
                    }
                    if ((o = wordsToDocs.get(oldWord)) == null) {
                        wordsToDocs.putUnsafely(oldWord, mappedNumbers);
                    } else {
                        IntList list = null;
                        if (o instanceof IntList) {
                            list = (IntList)o;
                        } else {
                            list = new IntList((int[])o);
                            wordsToDocs.put(oldWord, list);
                        }
                        int j = 0;
                        while (j < count) {
                            list.add(mappedNumbers[j]);
                            ++j;
                        }
                    }
                }
                ++i;
            }
            onDisk.categoryTables.put(categoryName, null);
        }
        this.writeCategoryTable(categoryName, wordsToDocs, stream);
    }

    DiskIndex mergeWith(MemoryIndex memoryIndex) throws IOException {
        String[] docNames = this.readAllDocumentNames();
        int previousLength = docNames.length;
        int[] positions = new int[previousLength];
        SimpleLookupTable indexedDocuments = new SimpleLookupTable(3);
        if ((docNames = this.computeDocumentNames(docNames, positions, indexedDocuments, memoryIndex)).length == 0) {
            if (previousLength == 0) {
                return this;
            }
            DiskIndex newDiskIndex = new DiskIndex(this.indexFile.getPath());
            newDiskIndex.initialize(false);
            return newDiskIndex;
        }
        DiskIndex newDiskIndex = new DiskIndex(String.valueOf(this.indexFile.getPath()) + ".tmp");
        try {
            newDiskIndex.initializeFrom(this, newDiskIndex.indexFile);
            FileOutputStream stream = new FileOutputStream(newDiskIndex.indexFile, false);
            int offsetToHeader = -1;
            try {
                newDiskIndex.writeAllDocumentNames(docNames, stream);
                docNames = null;
                if (indexedDocuments.elementSize > 0) {
                    Object[] names = indexedDocuments.keyTable;
                    Object[] integerPositions = indexedDocuments.valueTable;
                    int i = 0;
                    int l = names.length;
                    while (i < l) {
                        if (names[i] != null) {
                            newDiskIndex.copyQueryResults((HashtableOfObject)memoryIndex.docsToReferences.get(names[i]), (Integer)integerPositions[i]);
                        }
                        ++i;
                    }
                }
                indexedDocuments = null;
                if (previousLength == 0) {
                    newDiskIndex.writeCategories(stream);
                } else {
                    newDiskIndex.mergeCategories(this, positions, stream);
                }
                offsetToHeader = newDiskIndex.streamEnd;
                newDiskIndex.writeHeaderInfo(stream);
                positions = null;
            }
            finally {
                stream.close();
                this.streamBuffer = null;
            }
            newDiskIndex.writeOffsetToHeader(offsetToHeader);
            if (this.indexFile.exists() && !this.indexFile.delete()) {
                if (DEBUG) {
                    System.out.println("mergeWith - Failed to delete " + this.indexFile);
                }
                throw new IOException("Failed to delete index file " + this.indexFile);
            }
            if (!newDiskIndex.indexFile.renameTo(this.indexFile)) {
                if (DEBUG) {
                    System.out.println("mergeWith - Failed to rename " + this.indexFile);
                }
                throw new IOException("Failed to rename index file " + this.indexFile);
            }
        }
        catch (IOException e) {
            if (newDiskIndex.indexFile.exists() && !newDiskIndex.indexFile.delete() && DEBUG) {
                System.out.println("mergeWith - Failed to delete temp index " + newDiskIndex.indexFile);
            }
            throw e;
        }
        newDiskIndex.indexFile = this.indexFile;
        return newDiskIndex;
    }

    private synchronized String[] readAllDocumentNames() throws IOException {
        if (this.numberOfChunks <= 0) {
            return CharOperation.NO_STRINGS;
        }
        FileInputStream stream = new FileInputStream(this.indexFile);
        try {
            int offset = this.chunkOffsets[0];
            stream.skip(offset);
            this.streamBuffer = new byte[BUFFER_READ_SIZE];
            this.bufferIndex = 0;
            this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
            int lastIndex = this.numberOfChunks - 1;
            String[] docNames = new String[lastIndex * 100 + this.sizeOfLastChunk];
            int i = 0;
            while (i < this.numberOfChunks) {
                this.readChunk(docNames, stream, i * 100, i < lastIndex ? 100 : this.sizeOfLastChunk);
                ++i;
            }
            String[] stringArray = docNames;
            return stringArray;
        }
        finally {
            stream.close();
            this.streamBuffer = null;
        }
    }

    private synchronized HashtableOfObject readCategoryTable(char[] categoryName, boolean readDocNumbers) throws IOException {
        int offset = this.categoryOffsets.get(categoryName);
        if (offset == Integer.MIN_VALUE) {
            return null;
        }
        if (this.categoryTables == null) {
            this.categoryTables = new HashtableOfObject(3);
        } else {
            HashtableOfObject cachedTable = (HashtableOfObject)this.categoryTables.get(categoryName);
            if (cachedTable != null) {
                if (readDocNumbers) {
                    Object[] arrayOffsets = cachedTable.valueTable;
                    int i = 0;
                    int l = arrayOffsets.length;
                    while (i < l) {
                        if (arrayOffsets[i] instanceof Integer) {
                            arrayOffsets[i] = this.readDocumentNumbers(arrayOffsets[i]);
                        }
                        ++i;
                    }
                }
                return cachedTable;
            }
        }
        FileInputStream stream = new FileInputStream(this.indexFile);
        HashtableOfObject categoryTable = null;
        Object matchingWords = null;
        int count = 0;
        int firstOffset = -1;
        this.streamBuffer = new byte[BUFFER_READ_SIZE];
        try {
            try {
                stream.skip(offset);
                this.bufferIndex = 0;
                this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
                int size = this.readStreamInt(stream);
                try {
                    if (size < 0) {
                        System.err.println("-------------------- DEBUG --------------------");
                        System.err.println("file = " + this.indexFile);
                        System.err.println("offset = " + offset);
                        System.err.println("size = " + size);
                        System.err.println("--------------------   END   --------------------");
                    }
                    categoryTable = new HashtableOfObject(size);
                }
                catch (OutOfMemoryError oom) {
                    oom.printStackTrace();
                    System.err.println("-------------------- DEBUG --------------------");
                    System.err.println("file = " + this.indexFile);
                    System.err.println("offset = " + offset);
                    System.err.println("size = " + size);
                    System.err.println("--------------------   END   --------------------");
                    throw oom;
                }
                int largeArraySize = 256;
                int i = 0;
                while (i < size) {
                    char[] word = this.readStreamChars(stream);
                    int arrayOffset = this.readStreamInt(stream);
                    if (arrayOffset <= 0) {
                        categoryTable.putUnsafely(word, new int[]{-arrayOffset});
                    } else if (arrayOffset < largeArraySize) {
                        categoryTable.putUnsafely(word, this.readStreamDocumentArray(stream, arrayOffset));
                    } else {
                        arrayOffset = this.readStreamInt(stream);
                        if (readDocNumbers) {
                            if (matchingWords == null) {
                                matchingWords = new char[size][];
                            }
                            if (count == 0) {
                                firstOffset = arrayOffset;
                            }
                            matchingWords[count++] = word;
                        }
                        categoryTable.putUnsafely(word, new Integer(arrayOffset));
                    }
                    ++i;
                }
                this.categoryTables.put(INTERNED_CATEGORY_NAMES.get(categoryName), categoryTable);
                this.cachedCategoryName = (char[])(categoryTable.elementSize < 20000 ? categoryName : null);
            }
            catch (IOException ioe) {
                this.streamBuffer = null;
                throw ioe;
            }
        }
        finally {
            stream.close();
        }
        if (matchingWords != null && count > 0) {
            stream = new FileInputStream(this.indexFile);
            try {
                try {
                    stream.skip(firstOffset);
                    this.bufferIndex = 0;
                    this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
                    int i = 0;
                    while (i < count) {
                        categoryTable.put(matchingWords[i], this.readStreamDocumentArray(stream, this.readStreamInt(stream)));
                        ++i;
                    }
                }
                catch (IOException ioe) {
                    this.streamBuffer = null;
                    throw ioe;
                }
            }
            finally {
                stream.close();
            }
        }
        this.streamBuffer = null;
        return categoryTable;
    }

    private void readChunk(String[] docNames, FileInputStream stream, int index, int size) throws IOException {
        String current = new String(this.readStreamChars(stream));
        docNames[index++] = current;
        int i = 1;
        while (i < size) {
            int length;
            if (stream != null && this.bufferIndex + 2 >= this.bufferEnd) {
                this.readStreamBuffer(stream);
            }
            int start = this.streamBuffer[this.bufferIndex++] & 0xFF;
            int end = this.streamBuffer[this.bufferIndex++] & 0xFF;
            String next = new String(this.readStreamChars(stream));
            if (start > 0) {
                if (end > 0) {
                    length = current.length();
                    next = String.valueOf(current.substring(0, start)) + next + current.substring(length - end, length);
                } else {
                    next = String.valueOf(current.substring(0, start)) + next;
                }
            } else if (end > 0) {
                length = current.length();
                next = String.valueOf(next) + current.substring(length - end, length);
            }
            docNames[index++] = next;
            current = next;
            ++i;
        }
    }

    synchronized String readDocumentName(int docNumber) throws IOException {
        int chunkNumber;
        String[] chunk;
        if (this.cachedChunks == null) {
            this.cachedChunks = new String[this.numberOfChunks][];
        }
        if ((chunk = this.cachedChunks[chunkNumber = docNumber / 100]) == null) {
            int start;
            boolean isLastChunk = chunkNumber == this.numberOfChunks - 1;
            int numberOfBytes = (isLastChunk ? this.startOfCategoryTables : this.chunkOffsets[chunkNumber + 1]) - (start = this.chunkOffsets[chunkNumber]);
            if (numberOfBytes < 0) {
                throw new IllegalArgumentException();
            }
            this.streamBuffer = new byte[numberOfBytes];
            this.bufferIndex = 0;
            FileInputStream file = new FileInputStream(this.indexFile);
            try {
                try {
                    file.skip(start);
                    if (file.read(this.streamBuffer, 0, numberOfBytes) != numberOfBytes) {
                        throw new IOException();
                    }
                }
                catch (IOException ioe) {
                    this.streamBuffer = null;
                    throw ioe;
                }
            }
            finally {
                file.close();
            }
            int numberOfNames = isLastChunk ? this.sizeOfLastChunk : 100;
            chunk = new String[numberOfNames];
            try {
                this.readChunk(chunk, null, 0, numberOfNames);
            }
            catch (IOException ioe) {
                this.streamBuffer = null;
                throw ioe;
            }
            this.cachedChunks[chunkNumber] = chunk;
        }
        this.streamBuffer = null;
        return chunk[docNumber - chunkNumber * 100];
    }

    synchronized int[] readDocumentNumbers(Object arrayOffset) throws IOException {
        if (arrayOffset instanceof int[]) {
            return (int[])arrayOffset;
        }
        FileInputStream stream = new FileInputStream(this.indexFile);
        try {
            int offset = (Integer)arrayOffset;
            stream.skip(offset);
            this.streamBuffer = new byte[BUFFER_READ_SIZE];
            this.bufferIndex = 0;
            this.bufferEnd = stream.read(this.streamBuffer, 0, this.streamBuffer.length);
            int[] nArray = this.readStreamDocumentArray(stream, this.readStreamInt(stream));
            return nArray;
        }
        finally {
            stream.close();
            this.streamBuffer = null;
        }
    }

    private void readHeaderInfo(FileInputStream stream) throws IOException {
        this.numberOfChunks = this.readStreamInt(stream);
        this.sizeOfLastChunk = this.streamBuffer[this.bufferIndex++] & 0xFF;
        this.documentReferenceSize = this.streamBuffer[this.bufferIndex++] & 0xFF;
        this.separator = (char)(this.streamBuffer[this.bufferIndex++] & 0xFF);
        this.chunkOffsets = new int[this.numberOfChunks];
        int i = 0;
        while (i < this.numberOfChunks) {
            this.chunkOffsets[i] = this.readStreamInt(stream);
            ++i;
        }
        this.startOfCategoryTables = this.readStreamInt(stream);
        int size = this.readStreamInt(stream);
        this.categoryOffsets = new HashtableOfIntValues(size);
        this.categoryEnds = new HashtableOfIntValues(size);
        char[] previousCategory = null;
        int offset = -1;
        int i2 = 0;
        while (i2 < size) {
            char[] categoryName = INTERNED_CATEGORY_NAMES.get(this.readStreamChars(stream));
            offset = this.readStreamInt(stream);
            this.categoryOffsets.put(categoryName, offset);
            if (previousCategory != null) {
                this.categoryEnds.put(previousCategory, offset);
            }
            previousCategory = categoryName;
            ++i2;
        }
        if (previousCategory != null) {
            this.categoryEnds.put(previousCategory, this.headerInfoOffset);
        }
        this.categoryTables = new HashtableOfObject(3);
    }

    synchronized void startQuery() {
        ++this.cacheUserCount;
    }

    synchronized void stopQuery() {
        if (--this.cacheUserCount < 0) {
            this.cacheUserCount = -1;
            this.cachedChunks = null;
            if (this.categoryTables != null) {
                if (this.cachedCategoryName == null) {
                    this.categoryTables = null;
                } else if (this.categoryTables.elementSize > 1) {
                    HashtableOfObject newTables = new HashtableOfObject(3);
                    newTables.put(this.cachedCategoryName, this.categoryTables.get(this.cachedCategoryName));
                    this.categoryTables = newTables;
                }
            }
        }
    }

    private void readStreamBuffer(FileInputStream stream) throws IOException {
        if (this.bufferEnd < this.streamBuffer.length) {
            return;
        }
        int bytesInBuffer = this.bufferEnd - this.bufferIndex;
        if (bytesInBuffer > 0) {
            System.arraycopy(this.streamBuffer, this.bufferIndex, this.streamBuffer, 0, bytesInBuffer);
        }
        this.bufferEnd = bytesInBuffer + stream.read(this.streamBuffer, bytesInBuffer, this.bufferIndex);
        this.bufferIndex = 0;
    }

    private char[] readStreamChars(FileInputStream stream) throws IOException {
        if (stream != null && this.bufferIndex + 2 >= this.bufferEnd) {
            this.readStreamBuffer(stream);
        }
        int length = (this.streamBuffer[this.bufferIndex++] & 0xFF) << 8;
        char[] word = new char[length += this.streamBuffer[this.bufferIndex++] & 0xFF];
        int i = 0;
        while (i < length) {
            int charsInBuffer = i + (this.bufferEnd - this.bufferIndex) / 3;
            if (charsInBuffer > length || this.bufferEnd != this.streamBuffer.length || stream == null) {
                charsInBuffer = length;
            }
            while (i < charsInBuffer) {
                byte b = this.streamBuffer[this.bufferIndex++];
                switch (b & 0xF0) {
                    case 0: 
                    case 16: 
                    case 32: 
                    case 48: 
                    case 64: 
                    case 80: 
                    case 96: 
                    case 112: {
                        word[i++] = (char)b;
                        break;
                    }
                    case 192: 
                    case 208: {
                        char next = (char)this.streamBuffer[this.bufferIndex++];
                        if ((next & 0xC0) != 128) {
                            throw new UTFDataFormatException();
                        }
                        char ch = (char)((b & 0x1F) << 6);
                        ch = (char)(ch | next & 0x3F);
                        word[i++] = ch;
                        break;
                    }
                    case 224: {
                        char first = (char)this.streamBuffer[this.bufferIndex++];
                        char second = (char)this.streamBuffer[this.bufferIndex++];
                        if ((first & second & 0xC0) != 128) {
                            throw new UTFDataFormatException();
                        }
                        char ch = (char)((b & 0xF) << 12);
                        ch = (char)(ch | (first & 0x3F) << 6);
                        ch = (char)(ch | second & 0x3F);
                        word[i++] = ch;
                        break;
                    }
                    default: {
                        throw new UTFDataFormatException();
                    }
                }
            }
            if (i >= length || stream == null) continue;
            this.readStreamBuffer(stream);
        }
        return word;
    }

    private int[] readStreamDocumentArray(FileInputStream stream, int arraySize) throws IOException {
        int[] indexes = new int[arraySize];
        if (arraySize == 0) {
            return indexes;
        }
        int i = 0;
        switch (this.documentReferenceSize) {
            case 1: {
                while (i < arraySize) {
                    int bytesInBuffer = i + this.bufferEnd - this.bufferIndex;
                    if (bytesInBuffer > arraySize) {
                        bytesInBuffer = arraySize;
                    }
                    while (i < bytesInBuffer) {
                        indexes[i++] = this.streamBuffer[this.bufferIndex++] & 0xFF;
                    }
                    if (i >= arraySize || stream == null) continue;
                    this.readStreamBuffer(stream);
                }
                break;
            }
            case 2: {
                while (i < arraySize) {
                    int shortsInBuffer = i + (this.bufferEnd - this.bufferIndex) / 2;
                    if (shortsInBuffer > arraySize) {
                        shortsInBuffer = arraySize;
                    }
                    while (i < shortsInBuffer) {
                        int val = (this.streamBuffer[this.bufferIndex++] & 0xFF) << 8;
                        indexes[i++] = val + (this.streamBuffer[this.bufferIndex++] & 0xFF);
                    }
                    if (i >= arraySize || stream == null) continue;
                    this.readStreamBuffer(stream);
                }
                break;
            }
            default: {
                while (i < arraySize) {
                    indexes[i++] = this.readStreamInt(stream);
                }
                break block0;
            }
        }
        return indexes;
    }

    private int readStreamInt(FileInputStream stream) throws IOException {
        if (this.bufferIndex + 4 >= this.bufferEnd) {
            this.readStreamBuffer(stream);
        }
        int val = (this.streamBuffer[this.bufferIndex++] & 0xFF) << 24;
        val += (this.streamBuffer[this.bufferIndex++] & 0xFF) << 16;
        return (val += (this.streamBuffer[this.bufferIndex++] & 0xFF) << 8) + (this.streamBuffer[this.bufferIndex++] & 0xFF);
    }

    private void writeAllDocumentNames(String[] sortedDocNames, FileOutputStream stream) throws IOException {
        if (sortedDocNames.length == 0) {
            throw new IllegalArgumentException();
        }
        this.streamBuffer = new byte[2048];
        this.bufferIndex = 0;
        this.streamEnd = 0;
        this.writeStreamChars(stream, SIGNATURE_CHARS);
        this.headerInfoOffset = this.streamEnd;
        this.writeStreamInt(stream, -1);
        int size = sortedDocNames.length;
        this.numberOfChunks = size / 100 + 1;
        this.sizeOfLastChunk = size % 100;
        if (this.sizeOfLastChunk == 0) {
            --this.numberOfChunks;
            this.sizeOfLastChunk = 100;
        }
        this.documentReferenceSize = size <= 127 ? 1 : (size <= Short.MAX_VALUE ? 2 : 4);
        this.chunkOffsets = new int[this.numberOfChunks];
        int lastIndex = this.numberOfChunks - 1;
        int i = 0;
        while (i < this.numberOfChunks) {
            this.chunkOffsets[i] = this.streamEnd;
            int chunkSize = i == lastIndex ? this.sizeOfLastChunk : 100;
            int chunkIndex = i * 100;
            String current = sortedDocNames[chunkIndex];
            this.writeStreamChars(stream, current.toCharArray());
            int j = 1;
            while (j < chunkSize) {
                int len2;
                String next = sortedDocNames[chunkIndex + j];
                int len1 = current.length();
                int max = len1 < (len2 = next.length()) ? len1 : len2;
                int start = 0;
                while (current.charAt(start) == next.charAt(start)) {
                    if (max == ++start) break;
                }
                if (start > 255) {
                    start = 255;
                }
                int end = 0;
                while (current.charAt(--len1) == next.charAt(--len2)) {
                    ++end;
                    if (len2 == start || len1 == 0) break;
                }
                if (end > 255) {
                    end = 255;
                }
                if (this.bufferIndex + 2 >= 2048) {
                    stream.write(this.streamBuffer, 0, this.bufferIndex);
                    this.bufferIndex = 0;
                }
                this.streamBuffer[this.bufferIndex++] = (byte)start;
                this.streamBuffer[this.bufferIndex++] = (byte)end;
                this.streamEnd += 2;
                int last = next.length() - end;
                this.writeStreamChars(stream, start < last ? CharOperation.subarray(next.toCharArray(), start, last) : CharOperation.NO_CHAR);
                current = next;
                ++j;
            }
            ++i;
        }
        this.startOfCategoryTables = this.streamEnd + 1;
    }

    private void writeCategories(FileOutputStream stream) throws IOException {
        char[][] categoryNames = this.categoryTables.keyTable;
        Object[] tables = this.categoryTables.valueTable;
        int i = 0;
        int l = categoryNames.length;
        while (i < l) {
            if (categoryNames[i] != null) {
                this.writeCategoryTable(categoryNames[i], (HashtableOfObject)tables[i], stream);
            }
            ++i;
        }
        this.categoryTables = null;
    }

    private void writeCategoryTable(char[] categoryName, HashtableOfObject wordsToDocs, FileOutputStream stream) throws IOException {
        int largeArraySize = 256;
        Object[] values = wordsToDocs.valueTable;
        int i = 0;
        int l = values.length;
        while (i < l) {
            Object o = values[i];
            if (o != null) {
                int[] documentNumbers;
                if (o instanceof IntList) {
                    int[] nArray = ((IntList)values[i]).asArray();
                    values[i] = nArray;
                    o = nArray;
                }
                if ((documentNumbers = (int[])o).length >= largeArraySize) {
                    values[i] = new Integer(this.streamEnd);
                    this.writeDocumentNumbers(documentNumbers, stream);
                }
            }
            ++i;
        }
        this.categoryOffsets.put(categoryName, this.streamEnd);
        this.categoryTables.put(categoryName, null);
        this.writeStreamInt(stream, wordsToDocs.elementSize);
        char[][] words = wordsToDocs.keyTable;
        int i2 = 0;
        int l2 = words.length;
        while (i2 < l2) {
            Object o = values[i2];
            if (o != null) {
                this.writeStreamChars(stream, words[i2]);
                if (o instanceof int[]) {
                    int[] documentNumbers = (int[])o;
                    if (documentNumbers.length == 1) {
                        this.writeStreamInt(stream, -documentNumbers[0]);
                    } else {
                        this.writeDocumentNumbers(documentNumbers, stream);
                    }
                } else {
                    this.writeStreamInt(stream, largeArraySize);
                    this.writeStreamInt(stream, (Integer)o);
                }
            }
            ++i2;
        }
    }

    private void writeDocumentNumbers(int[] documentNumbers, FileOutputStream stream) throws IOException {
        int length = documentNumbers.length;
        this.writeStreamInt(stream, length);
        Util.sort(documentNumbers);
        int start = 0;
        switch (this.documentReferenceSize) {
            case 1: {
                while (this.bufferIndex + length - start >= 2048) {
                    int bytesLeft = 2048 - this.bufferIndex;
                    int i = 0;
                    while (i < bytesLeft) {
                        this.streamBuffer[this.bufferIndex++] = (byte)documentNumbers[start++];
                        ++i;
                    }
                    stream.write(this.streamBuffer, 0, this.bufferIndex);
                    this.bufferIndex = 0;
                }
                while (start < length) {
                    this.streamBuffer[this.bufferIndex++] = (byte)documentNumbers[start++];
                }
                this.streamEnd += length;
                break;
            }
            case 2: {
                while (this.bufferIndex + (length - start) * 2 >= 2048) {
                    int shortsLeft = (2048 - this.bufferIndex) / 2;
                    int i = 0;
                    while (i < shortsLeft) {
                        this.streamBuffer[this.bufferIndex++] = (byte)(documentNumbers[start] >> 8);
                        this.streamBuffer[this.bufferIndex++] = (byte)documentNumbers[start++];
                        ++i;
                    }
                    stream.write(this.streamBuffer, 0, this.bufferIndex);
                    this.bufferIndex = 0;
                }
                while (start < length) {
                    this.streamBuffer[this.bufferIndex++] = (byte)(documentNumbers[start] >> 8);
                    this.streamBuffer[this.bufferIndex++] = (byte)documentNumbers[start++];
                }
                this.streamEnd += length * 2;
                break;
            }
            default: {
                while (start < length) {
                    this.writeStreamInt(stream, documentNumbers[start++]);
                }
                break block0;
            }
        }
    }

    private void writeHeaderInfo(FileOutputStream stream) throws IOException {
        this.writeStreamInt(stream, this.numberOfChunks);
        if (this.bufferIndex + 3 >= 2048) {
            stream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
        }
        this.streamBuffer[this.bufferIndex++] = (byte)this.sizeOfLastChunk;
        this.streamBuffer[this.bufferIndex++] = (byte)this.documentReferenceSize;
        this.streamBuffer[this.bufferIndex++] = (byte)this.separator;
        this.streamEnd += 3;
        int i = 0;
        while (i < this.numberOfChunks) {
            this.writeStreamInt(stream, this.chunkOffsets[i]);
            ++i;
        }
        this.writeStreamInt(stream, this.startOfCategoryTables);
        this.writeStreamInt(stream, this.categoryOffsets.elementSize);
        char[][] categoryNames = this.categoryOffsets.keyTable;
        int[] offsets = this.categoryOffsets.valueTable;
        int i2 = 0;
        int l = categoryNames.length;
        while (i2 < l) {
            if (categoryNames[i2] != null) {
                this.writeStreamChars(stream, categoryNames[i2]);
                this.writeStreamInt(stream, offsets[i2]);
            }
            ++i2;
        }
        if (this.bufferIndex > 0) {
            stream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
        }
    }

    private void writeOffsetToHeader(int offsetToHeader) throws IOException {
        if (offsetToHeader > 0) {
            RandomAccessFile file = new RandomAccessFile(this.indexFile, "rw");
            try {
                file.seek(this.headerInfoOffset);
                file.writeInt(offsetToHeader);
                this.headerInfoOffset = offsetToHeader;
            }
            finally {
                file.close();
            }
        }
    }

    private void writeStreamChars(FileOutputStream stream, char[] array) throws IOException {
        if (this.bufferIndex + 2 >= 2048) {
            stream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
        }
        int length = array.length;
        this.streamBuffer[this.bufferIndex++] = (byte)(length >>> 8 & 0xFF);
        this.streamBuffer[this.bufferIndex++] = (byte)(length & 0xFF);
        this.streamEnd += 2;
        int totalBytesNeeded = length * 3;
        if (totalBytesNeeded <= 2048) {
            if (this.bufferIndex + totalBytesNeeded > 2048) {
                stream.write(this.streamBuffer, 0, this.bufferIndex);
                this.bufferIndex = 0;
            }
            this.writeStreamChars(stream, array, 0, length);
        } else {
            int charsPerWrite = 682;
            int start = 0;
            while (start < length) {
                stream.write(this.streamBuffer, 0, this.bufferIndex);
                this.bufferIndex = 0;
                int charsLeftToWrite = length - start;
                int end = start + (charsPerWrite < charsLeftToWrite ? charsPerWrite : charsLeftToWrite);
                this.writeStreamChars(stream, array, start, end);
                start = end;
            }
        }
    }

    private void writeStreamChars(FileOutputStream stream, char[] array, int start, int end) throws IOException {
        int oldIndex = this.bufferIndex;
        while (start < end) {
            byte b;
            char ch;
            if (((ch = array[start++]) & 0x7F) == ch) {
                this.streamBuffer[this.bufferIndex++] = (byte)ch;
                continue;
            }
            if ((ch & 0x7FF) == ch) {
                b = (byte)(ch >> 6);
                b = (byte)(b & 0x1F);
                b = (byte)(b | 0xC0);
                this.streamBuffer[this.bufferIndex++] = b;
                b = (byte)(ch & 0x3F);
                b = (byte)(b | 0x80);
                this.streamBuffer[this.bufferIndex++] = b;
                continue;
            }
            b = (byte)(ch >> 12);
            b = (byte)(b & 0xF);
            b = (byte)(b | 0xE0);
            this.streamBuffer[this.bufferIndex++] = b;
            b = (byte)(ch >> 6);
            b = (byte)(b & 0x3F);
            b = (byte)(b | 0x80);
            this.streamBuffer[this.bufferIndex++] = b;
            b = (byte)(ch & 0x3F);
            b = (byte)(b | 0x80);
            this.streamBuffer[this.bufferIndex++] = b;
        }
        this.streamEnd += this.bufferIndex - oldIndex;
    }

    private void writeStreamInt(FileOutputStream stream, int val) throws IOException {
        if (this.bufferIndex + 4 >= 2048) {
            stream.write(this.streamBuffer, 0, this.bufferIndex);
            this.bufferIndex = 0;
        }
        this.streamBuffer[this.bufferIndex++] = (byte)(val >> 24);
        this.streamBuffer[this.bufferIndex++] = (byte)(val >> 16);
        this.streamBuffer[this.bufferIndex++] = (byte)(val >> 8);
        this.streamBuffer[this.bufferIndex++] = (byte)val;
        this.streamEnd += 4;
    }

    static class IntList {
        int size;
        int[] elements;

        IntList(int[] elements) {
            this.elements = elements;
            this.size = elements.length;
        }

        void add(int newElement) {
            if (this.size == this.elements.length) {
                int newSize = this.size * 3;
                if (newSize < 7) {
                    newSize = 7;
                }
                this.elements = new int[newSize];
                System.arraycopy(this.elements, 0, this.elements, 0, this.size);
            }
            this.elements[this.size++] = newElement;
        }

        int[] asArray() {
            int[] result = new int[this.size];
            System.arraycopy(this.elements, 0, result, 0, this.size);
            return result;
        }
    }
}

