/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core.sourcelookup;

import java.util.Comparator;

public class SourceLocatorMementoComparator
implements Comparator {
    public int compare(Object o1, Object o2) {
        String m1 = (String)o1;
        String m2 = (String)o2;
        int i1 = 0;
        int i2 = 0;
        while (i1 < m1.length()) {
            i1 = this.skipWhitespace(m1, i1);
            i2 = this.skipWhitespace(m2, i2);
            if (i1 < m1.length() && i2 < m2.length()) {
                if (m1.charAt(i1) != m2.charAt(i2)) {
                    return -1;
                }
                ++i1;
                ++i2;
                continue;
            }
            if (i2 < m2.length()) {
                return -1;
            }
            return 0;
        }
        return 0;
    }

    private int skipWhitespace(String string, int offset) {
        while (offset < string.length() && Character.isWhitespace(string.charAt(offset))) {
            ++offset;
        }
        return offset;
    }
}

