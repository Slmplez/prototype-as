/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import org.apache.xerces.xni.grammars.Grammar;
import org.apache.xerces.xni.grammars.XMLGrammarDescription;
import org.apache.xerces.xni.grammars.XMLGrammarPool;

public class XMLGrammarPoolImpl
implements XMLGrammarPool {
    protected static final int TABLE_SIZE = 11;
    protected Entry[] fGrammars = null;
    protected boolean fPoolIsLocked;
    protected int fGrammarCount = 0;
    private static final boolean DEBUG = false;

    public XMLGrammarPoolImpl() {
        this.fGrammars = new Entry[11];
        this.fPoolIsLocked = false;
    }

    public XMLGrammarPoolImpl(int n) {
        this.fGrammars = new Entry[n];
        this.fPoolIsLocked = false;
    }

    public Grammar[] retrieveInitialGrammarSet(String string) {
        Entry[] entryArray = this.fGrammars;
        synchronized (entryArray) {
            Object object;
            int n = this.fGrammars.length;
            Grammar[] grammarArray = new Grammar[this.fGrammarCount];
            int n2 = 0;
            int n3 = 0;
            while (n3 < n) {
                object = this.fGrammars[n3];
                while (object != null) {
                    if (object.desc.getGrammarType().equals(string)) {
                        grammarArray[n2++] = object.grammar;
                    }
                    object = object.next;
                }
                ++n3;
            }
            object = new Grammar[n2];
            System.arraycopy(grammarArray, 0, object, 0, n2);
            Grammar[] grammarArray2 = object;
            return grammarArray2;
        }
    }

    public void cacheGrammars(String string, Grammar[] grammarArray) {
        if (!this.fPoolIsLocked) {
            int n = 0;
            while (n < grammarArray.length) {
                this.putGrammar(grammarArray[n]);
                ++n;
            }
        }
    }

    public Grammar retrieveGrammar(XMLGrammarDescription xMLGrammarDescription) {
        return this.getGrammar(xMLGrammarDescription);
    }

    public void putGrammar(Grammar grammar) {
        if (!this.fPoolIsLocked) {
            Entry[] entryArray = this.fGrammars;
            synchronized (entryArray) {
                Entry entry;
                XMLGrammarDescription xMLGrammarDescription = grammar.getGrammarDescription();
                int n = this.hashCode(xMLGrammarDescription);
                int n2 = (n & Integer.MAX_VALUE) % this.fGrammars.length;
                Entry entry2 = this.fGrammars[n2];
                while (entry2 != null) {
                    if (entry2.hash == n && this.equals(entry2.desc, xMLGrammarDescription)) {
                        entry2.grammar = grammar;
                        return;
                    }
                    entry2 = entry2.next;
                }
                this.fGrammars[n2] = entry = new Entry(n, xMLGrammarDescription, grammar, this.fGrammars[n2]);
                ++this.fGrammarCount;
            }
        }
    }

    public Grammar getGrammar(XMLGrammarDescription xMLGrammarDescription) {
        Entry[] entryArray = this.fGrammars;
        synchronized (entryArray) {
            int n = this.hashCode(xMLGrammarDescription);
            int n2 = (n & Integer.MAX_VALUE) % this.fGrammars.length;
            Entry entry = this.fGrammars[n2];
            while (entry != null) {
                if (entry.hash == n && this.equals(entry.desc, xMLGrammarDescription)) {
                    Grammar grammar = entry.grammar;
                    return grammar;
                }
                entry = entry.next;
            }
            Grammar grammar = null;
            return grammar;
        }
    }

    public Grammar removeGrammar(XMLGrammarDescription xMLGrammarDescription) {
        Entry[] entryArray = this.fGrammars;
        synchronized (entryArray) {
            int n = this.hashCode(xMLGrammarDescription);
            int n2 = (n & Integer.MAX_VALUE) % this.fGrammars.length;
            Entry entry = this.fGrammars[n2];
            Entry entry2 = null;
            while (entry != null) {
                if (entry.hash == n && this.equals(entry.desc, xMLGrammarDescription)) {
                    if (entry2 != null) {
                        entry2.next = entry.next;
                    } else {
                        this.fGrammars[n2] = entry.next;
                    }
                    Grammar grammar = entry.grammar;
                    entry.grammar = null;
                    --this.fGrammarCount;
                    Grammar grammar2 = grammar;
                    return grammar2;
                }
                entry2 = entry;
                entry = entry.next;
            }
            Grammar grammar = null;
            return grammar;
        }
    }

    public boolean containsGrammar(XMLGrammarDescription xMLGrammarDescription) {
        Entry[] entryArray = this.fGrammars;
        synchronized (entryArray) {
            int n = this.hashCode(xMLGrammarDescription);
            int n2 = (n & Integer.MAX_VALUE) % this.fGrammars.length;
            Entry entry = this.fGrammars[n2];
            while (entry != null) {
                if (entry.hash == n && this.equals(entry.desc, xMLGrammarDescription)) {
                    boolean bl = true;
                    return bl;
                }
                entry = entry.next;
            }
            boolean bl = false;
            return bl;
        }
    }

    public void lockPool() {
        this.fPoolIsLocked = true;
    }

    public void unlockPool() {
        this.fPoolIsLocked = false;
    }

    public void clear() {
        int n = 0;
        while (n < this.fGrammars.length) {
            if (this.fGrammars[n] != null) {
                this.fGrammars[n].clear();
                this.fGrammars[n] = null;
            }
            ++n;
        }
        this.fGrammarCount = 0;
    }

    public boolean equals(XMLGrammarDescription xMLGrammarDescription, XMLGrammarDescription xMLGrammarDescription2) {
        return xMLGrammarDescription.equals(xMLGrammarDescription2);
    }

    public int hashCode(XMLGrammarDescription xMLGrammarDescription) {
        return xMLGrammarDescription.hashCode();
    }

    protected static final class Entry {
        public int hash;
        public XMLGrammarDescription desc;
        public Grammar grammar;
        public Entry next;

        protected Entry(int n, XMLGrammarDescription xMLGrammarDescription, Grammar grammar, Entry entry) {
            this.hash = n;
            this.desc = xMLGrammarDescription;
            this.grammar = grammar;
            this.next = entry;
        }

        protected void clear() {
            this.desc = null;
            this.grammar = null;
            if (this.next != null) {
                this.next.clear();
                this.next = null;
            }
        }
    }
}

