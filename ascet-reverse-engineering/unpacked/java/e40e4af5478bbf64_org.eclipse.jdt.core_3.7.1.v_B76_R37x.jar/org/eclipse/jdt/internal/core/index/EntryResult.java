/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.index;

import java.io.IOException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.index.Index;

public class EntryResult {
    private char[] word;
    private Object[] documentTables;
    private SimpleSet documentNames;

    public EntryResult(char[] word, Object table) {
        this.word = word;
        if (table != null) {
            this.documentTables = new Object[]{table};
        }
    }

    public void addDocumentName(String documentName) {
        if (this.documentNames == null) {
            this.documentNames = new SimpleSet(3);
        }
        this.documentNames.add(documentName);
    }

    public void addDocumentTable(Object table) {
        if (this.documentTables != null) {
            int length = this.documentTables.length;
            this.documentTables = new Object[length + 1];
            System.arraycopy(this.documentTables, 0, this.documentTables, 0, length);
            this.documentTables[length] = table;
        } else {
            this.documentTables = new Object[]{table};
        }
    }

    public char[] getWord() {
        return this.word;
    }

    public String[] getDocumentNames(Index index) throws IOException {
        if (this.documentTables != null) {
            int length = this.documentTables.length;
            if (length == 1 && this.documentNames == null) {
                Object offset = this.documentTables[0];
                int[] numbers = index.diskIndex.readDocumentNumbers(offset);
                String[] names = new String[numbers.length];
                int i = 0;
                int l = numbers.length;
                while (i < l) {
                    names[i] = index.diskIndex.readDocumentName(numbers[i]);
                    ++i;
                }
                return names;
            }
            int i = 0;
            while (i < length) {
                Object offset = this.documentTables[i];
                int[] numbers = index.diskIndex.readDocumentNumbers(offset);
                int j = 0;
                int k = numbers.length;
                while (j < k) {
                    this.addDocumentName(index.diskIndex.readDocumentName(numbers[j]));
                    ++j;
                }
                ++i;
            }
        }
        if (this.documentNames == null) {
            return CharOperation.NO_STRINGS;
        }
        String[] names = new String[this.documentNames.elementSize];
        int count = 0;
        Object[] values = this.documentNames.values;
        int i = 0;
        int l = values.length;
        while (i < l) {
            if (values[i] != null) {
                names[count++] = (String)values[i];
            }
            ++i;
        }
        return names;
    }

    public boolean isEmpty() {
        return this.documentTables == null && this.documentNames == null;
    }
}

