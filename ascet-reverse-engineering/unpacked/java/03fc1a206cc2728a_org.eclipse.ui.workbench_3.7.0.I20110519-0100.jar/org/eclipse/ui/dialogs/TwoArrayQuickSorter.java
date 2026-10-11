/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.dialogs;

import java.util.Comparator;
import org.eclipse.core.runtime.Assert;

class TwoArrayQuickSorter {
    private Comparator fComparator;

    public TwoArrayQuickSorter(boolean ignoreCase) {
        this.fComparator = new StringComparator(ignoreCase);
    }

    public TwoArrayQuickSorter(Comparator comparator) {
        this.fComparator = comparator;
    }

    public void sort(Object[] keys, Object[] values) {
        if (keys == null || values == null) {
            Assert.isTrue((boolean)false, (String)"Either keys or values in null");
            return;
        }
        if (keys.length <= 1) {
            return;
        }
        this.internalSort(keys, values, 0, keys.length - 1);
    }

    private void internalSort(Object[] keys, Object[] values, int left, int right) {
        int original_left = left;
        int original_right = right;
        Object mid = keys[(left + right) / 2];
        while (true) {
            if (this.fComparator.compare(keys[left], mid) < 0) {
                ++left;
                continue;
            }
            while (this.fComparator.compare(mid, keys[right]) < 0) {
                --right;
            }
            if (left <= right) {
                TwoArrayQuickSorter.swap(keys, left, right);
                TwoArrayQuickSorter.swap(values, left, right);
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (original_left < right) {
            this.internalSort(keys, values, original_left, right);
        }
        if (left < original_right) {
            this.internalSort(keys, values, left, original_right);
        }
    }

    private static final void swap(Object[] x, int a, int b) {
        Object t = x[a];
        x[a] = x[b];
        x[b] = t;
    }

    public static final class StringComparator
    implements Comparator {
        private boolean fIgnoreCase;

        StringComparator(boolean ignoreCase) {
            this.fIgnoreCase = ignoreCase;
        }

        public int compare(Object left, Object right) {
            return this.fIgnoreCase ? ((String)left).compareToIgnoreCase((String)right) : ((String)left).compareTo((String)right);
        }
    }
}

