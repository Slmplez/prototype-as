/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import java.util.Comparator;
import java.util.List;

public class RuntimeClasspathEntryListComparator
implements Comparator {
    public int compare(Object o1, Object o2) {
        List list1 = (List)o1;
        List list2 = (List)o2;
        if (list1.size() == list2.size()) {
            int i = 0;
            while (i < list1.size()) {
                String memento2;
                String memento1 = (String)list1.get(i);
                if (!this.equalsIgnoreWhitespace(memento1, memento2 = (String)list2.get(i))) {
                    return -1;
                }
                ++i;
            }
            return 0;
        }
        return -1;
    }

    /*
     * Unable to fully structure code
     */
    protected boolean equalsIgnoreWhitespace(String one, String two) {
        i1 = 0;
        i2 = 0;
        l1 = one.length();
        l2 = two.length();
        ch1 = 32;
        ch2 = 32;
        ** GOTO lbl27
        {
            ++i1;
            do {
                if (i1 >= l1) ** GOTO lbl17
                v0 = one.charAt(i1);
                ch1 = v0;
                if (Character.isWhitespace(v0)) continue block0;
                if (true) ** GOTO lbl17
                do {
                    ++i2;
lbl17:
                    // 3 sources

                    if (i2 >= l2) break;
                    v1 = two.charAt(i2);
                    ch2 = v1;
                } while (Character.isWhitespace(v1));
                if (i1 == l1 && i2 == l2) {
                    return true;
                }
                if (ch1 != ch2) {
                    return false;
                }
                ++i1;
                ++i2;
lbl27:
                // 2 sources

            } while (i1 < l1 && i2 < l2);
        }
        return true;
    }
}

