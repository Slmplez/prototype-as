/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 */
package org.eclipse.sphinx.emf.internal.ecore;

import java.util.Comparator;
import org.eclipse.emf.common.util.Enumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EnumeratorComparator<T extends Enumerator>
implements Comparator<T> {
    @Override
    public int compare(T e1, T e2) {
        return this.compareNames(e1.getName(), e2.getName());
    }

    private int compareNames(String n1, String n2) {
        if (n1 == null && n2 == null) {
            return 0;
        }
        if (n1 == null) {
            return 1;
        }
        if (n2 == null) {
            return -1;
        }
        return n1.compareTo(n2);
    }
}

