/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import org.apache.xerces.util.SymbolTable;

public class SoftReferenceSymbolTable
extends SymbolTable {
    protected SREntry[] fBuckets = null;
    private final ReferenceQueue fReferenceQueue;

    public SoftReferenceSymbolTable(int n, float f) {
        if (n < 0) {
            throw new IllegalArgumentException("Illegal Capacity: " + n);
        }
        if (f <= 0.0f || Float.isNaN(f)) {
            throw new IllegalArgumentException("Illegal Load: " + f);
        }
        if (n == 0) {
            n = 1;
        }
        this.fLoadFactor = f;
        this.fTableSize = n;
        this.fBuckets = new SREntry[this.fTableSize];
        this.fThreshold = (int)((float)this.fTableSize * f);
        this.fCount = 0;
        this.fReferenceQueue = new ReferenceQueue();
    }

    public SoftReferenceSymbolTable(int n) {
        this(n, 0.75f);
    }

    public SoftReferenceSymbolTable() {
        this(101, 0.75f);
    }

    public String addSymbol(String string) {
        Object object;
        this.clean();
        int n = this.hash(string) % this.fTableSize;
        SREntry sREntry = this.fBuckets[n];
        while (sREntry != null) {
            object = (SREntryData)sREntry.get();
            if (object != null && ((SREntryData)object).symbol.equals(string)) {
                return ((SREntryData)object).symbol;
            }
            sREntry = sREntry.next;
        }
        if (this.fCount >= this.fThreshold) {
            this.rehash();
            n = this.hash(string) % this.fTableSize;
        }
        string = string.intern();
        this.fBuckets[n] = object = new SREntry(string, this.fBuckets[n], n, this.fReferenceQueue);
        ++this.fCount;
        return string;
    }

    public String addSymbol(char[] cArray, int n, int n2) {
        SREntry sREntry;
        Object object;
        this.clean();
        int n3 = this.hash(cArray, n, n2) % this.fTableSize;
        SREntry sREntry2 = this.fBuckets[n3];
        while (sREntry2 != null) {
            block5: {
                object = (SREntryData)sREntry2.get();
                if (object != null && n2 == ((SREntryData)object).characters.length) {
                    int n4 = 0;
                    while (n4 < n2) {
                        if (cArray[n + n4] == ((SREntryData)object).characters[n4]) {
                            ++n4;
                            continue;
                        }
                        break block5;
                    }
                    return ((SREntryData)object).symbol;
                }
            }
            sREntry2 = sREntry2.next;
        }
        if (this.fCount >= this.fThreshold) {
            this.rehash();
            n3 = this.hash(cArray, n, n2) % this.fTableSize;
        }
        object = new String(cArray, n, n2).intern();
        this.fBuckets[n3] = sREntry = new SREntry((String)object, cArray, n, n2, this.fBuckets[n3], n3, this.fReferenceQueue);
        ++this.fCount;
        return object;
    }

    protected void rehash() {
        int n = this.fBuckets.length;
        SREntry[] sREntryArray = this.fBuckets;
        int n2 = n * 2 + 1;
        SREntry[] sREntryArray2 = new SREntry[n2];
        this.fThreshold = (int)((float)n2 * this.fLoadFactor);
        this.fBuckets = sREntryArray2;
        this.fTableSize = this.fBuckets.length;
        int n3 = n;
        while (n3-- > 0) {
            SREntry sREntry = sREntryArray[n3];
            while (sREntry != null) {
                SREntry sREntry2 = sREntry;
                sREntry = sREntry.next;
                SREntryData sREntryData = (SREntryData)sREntry2.get();
                if (sREntryData != null) {
                    int n4 = this.hash(sREntryData.characters, 0, sREntryData.characters.length) % n2;
                    if (sREntryArray2[n4] != null) {
                        sREntryArray2[n4].prev = sREntry2;
                    }
                    sREntry2.next = sREntryArray2[n4];
                    sREntryArray2[n4] = sREntry2;
                    continue;
                }
                --this.fCount;
            }
        }
    }

    public boolean containsSymbol(String string) {
        int n = this.hash(string) % this.fTableSize;
        int n2 = string.length();
        SREntry sREntry = this.fBuckets[n];
        while (sREntry != null) {
            block4: {
                SREntryData sREntryData = (SREntryData)sREntry.get();
                if (sREntryData != null && n2 == sREntryData.characters.length) {
                    int n3 = 0;
                    while (n3 < n2) {
                        if (string.charAt(n3) == sREntryData.characters[n3]) {
                            ++n3;
                            continue;
                        }
                        break block4;
                    }
                    return true;
                }
            }
            sREntry = sREntry.next;
        }
        return false;
    }

    public boolean containsSymbol(char[] cArray, int n, int n2) {
        int n3 = this.hash(cArray, n, n2) % this.fTableSize;
        SREntry sREntry = this.fBuckets[n3];
        while (sREntry != null) {
            block4: {
                SREntryData sREntryData = (SREntryData)sREntry.get();
                if (sREntryData != null && n2 == sREntryData.characters.length) {
                    int n4 = 0;
                    while (n4 < n2) {
                        if (cArray[n + n4] == sREntryData.characters[n4]) {
                            ++n4;
                            continue;
                        }
                        break block4;
                    }
                    return true;
                }
            }
            sREntry = sREntry.next;
        }
        return false;
    }

    private void removeEntry(SREntry sREntry) {
        if (sREntry.next != null) {
            sREntry.next.prev = sREntry.prev;
        }
        if (sREntry.prev != null) {
            sREntry.prev.next = sREntry.next;
        } else {
            this.fBuckets[sREntry.bucket] = sREntry.next;
        }
        --this.fCount;
    }

    private void clean() {
        SREntry sREntry = (SREntry)this.fReferenceQueue.poll();
        while (sREntry != null) {
            this.removeEntry(sREntry);
            sREntry = (SREntry)this.fReferenceQueue.poll();
        }
    }

    protected static final class SREntry
    extends SoftReference {
        public SREntry next;
        public SREntry prev;
        public int bucket;

        public SREntry(String string, SREntry sREntry, int n, ReferenceQueue referenceQueue) {
            super(new SREntryData(string), referenceQueue);
            this.initialize(sREntry, n);
        }

        public SREntry(String string, char[] cArray, int n, int n2, SREntry sREntry, int n3, ReferenceQueue referenceQueue) {
            super(new SREntryData(string, cArray, n, n2), referenceQueue);
            this.initialize(sREntry, n3);
        }

        private void initialize(SREntry sREntry, int n) {
            this.next = sREntry;
            if (sREntry != null) {
                sREntry.prev = this;
            }
            this.prev = null;
            this.bucket = n;
        }
    }

    protected static final class SREntryData {
        public final String symbol;
        public final char[] characters;

        public SREntryData(String string) {
            this.symbol = string;
            this.characters = new char[this.symbol.length()];
            this.symbol.getChars(0, this.characters.length, this.characters, 0);
        }

        public SREntryData(String string, char[] cArray, int n, int n2) {
            this.symbol = string;
            this.characters = new char[n2];
            System.arraycopy(cArray, n, this.characters, 0, n2);
        }
    }
}

