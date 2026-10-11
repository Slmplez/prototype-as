/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xpath.regex;

import java.text.CharacterIterator;

public class BMPattern {
    final char[] pattern;
    final int[] shiftTable;
    final boolean ignoreCase;

    public BMPattern(String string, boolean bl) {
        this(string, 256, bl);
    }

    public BMPattern(String string, int n, boolean bl) {
        this.pattern = string.toCharArray();
        this.shiftTable = new int[n];
        this.ignoreCase = bl;
        int n2 = this.pattern.length;
        int n3 = 0;
        while (n3 < this.shiftTable.length) {
            this.shiftTable[n3] = n2;
            ++n3;
        }
        int n4 = 0;
        while (n4 < n2) {
            int n5 = n2 - n4 - 1;
            char c = this.pattern[n4];
            int n6 = c % this.shiftTable.length;
            if (n5 < this.shiftTable[n6]) {
                this.shiftTable[n6] = n5;
            }
            if (this.ignoreCase) {
                n6 = (c = Character.toUpperCase(c)) % this.shiftTable.length;
                if (n5 < this.shiftTable[n6]) {
                    this.shiftTable[n6] = n5;
                }
                if (n5 < this.shiftTable[n6 = (c = Character.toLowerCase(c)) % this.shiftTable.length]) {
                    this.shiftTable[n6] = n5;
                }
            }
            ++n4;
        }
    }

    public int matches(CharacterIterator characterIterator, int n, int n2) {
        if (this.ignoreCase) {
            return this.matchesIgnoreCase(characterIterator, n, n2);
        }
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c = characterIterator.setIndex(--n4)) == this.pattern[--n5]) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }

    public int matches(String string, int n, int n2) {
        if (this.ignoreCase) {
            return this.matchesIgnoreCase(string, n, n2);
        }
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c = string.charAt(--n4)) == this.pattern[--n5]) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }

    public int matches(char[] cArray, int n, int n2) {
        if (this.ignoreCase) {
            return this.matchesIgnoreCase(cArray, n, n2);
        }
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c = cArray[--n4]) == this.pattern[--n5]) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }

    int matchesIgnoreCase(CharacterIterator characterIterator, int n, int n2) {
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            char c2;
            char c3;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c3 = (c2 = characterIterator.setIndex(--n4))) == (c = this.pattern[--n5]) || (c3 = Character.toUpperCase(c3)) == (c = Character.toUpperCase(c)) || Character.toLowerCase(c3) == Character.toLowerCase(c)) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c2 % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }

    int matchesIgnoreCase(String string, int n, int n2) {
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            char c2;
            char c3;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c3 = (c2 = string.charAt(--n4))) == (c = this.pattern[--n5]) || (c3 = Character.toUpperCase(c3)) == (c = Character.toUpperCase(c)) || Character.toLowerCase(c3) == Character.toLowerCase(c)) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c2 % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }

    int matchesIgnoreCase(char[] cArray, int n, int n2) {
        int n3 = this.pattern.length;
        if (n3 == 0) {
            return n;
        }
        int n4 = n + n3;
        while (n4 <= n2) {
            char c;
            char c2;
            char c3;
            int n5 = n3;
            int n6 = n4 + 1;
            while ((c3 = (c2 = cArray[--n4])) == (c = this.pattern[--n5]) || (c3 = Character.toUpperCase(c3)) == (c = Character.toUpperCase(c)) || Character.toLowerCase(c3) == Character.toLowerCase(c)) {
                if (n5 == 0) {
                    return n4;
                }
                if (n5 > 0) continue;
            }
            if ((n4 += this.shiftTable[c2 % this.shiftTable.length] + 1) >= n6) continue;
            n4 = n6;
        }
        return -1;
    }
}

