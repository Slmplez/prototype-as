/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.sphinx.emf.internal.ecore;

import java.util.Comparator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectComparator<T extends EObject>
implements Comparator<T> {
    @Override
    public int compare(T o1, T o2) {
        return this.compareIDs(EcoreUtil.getID(o1), EcoreUtil.getID(o2));
    }

    private int compareIDs(String id1, String id2) {
        if (id1 == null && id2 == null) {
            return 0;
        }
        if (id1 == null) {
            return 1;
        }
        if (id2 == null) {
            return -1;
        }
        return id1.compareTo(id2);
    }
}

