/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.emf.ecore;

import java.util.Comparator;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.internal.ecore.EObjectComparator;
import org.eclipse.sphinx.emf.internal.ecore.EnumeratorComparator;
import org.eclipse.sphinx.emf.internal.messages.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcoreComparator
implements Comparator<Object> {
    @Override
    public int compare(Object o1, Object o2) {
        if (o1 == null && o2 == null) {
            return 0;
        }
        if (o1 == null) {
            return -1;
        }
        if (o2 == null) {
            return 1;
        }
        return this.compareObjects(o1, o2);
    }

    private int compareObjects(Object o1, Object o2) {
        if (o1 instanceof EObject && o2 instanceof EObject) {
            return new EObjectComparator<EObject>().compare((EObject)o1, (EObject)o2);
        }
        if (o1 instanceof Enumerator && o2 instanceof Enumerator) {
            return new EnumeratorComparator<Enumerator>().compare((Enumerator)o1, (Enumerator)o2);
        }
        if (o1 instanceof Boolean && o2 instanceof Boolean) {
            return o1.toString().compareTo(o2.toString());
        }
        if (o1 instanceof String && ((String)o1).length() == 0) {
            return -1;
        }
        if (o2 instanceof String && ((String)o2).length() == 0) {
            return 1;
        }
        if (o1 instanceof String && o2 instanceof String) {
            return o1.toString().compareTo(o2.toString());
        }
        Object[] args = new String[]{o1.getClass().getSimpleName(), o2.getClass().getSimpleName()};
        throw new RuntimeException(NLS.bind((String)Messages.error_cannotCompareObjects, (Object[])args));
    }
}

