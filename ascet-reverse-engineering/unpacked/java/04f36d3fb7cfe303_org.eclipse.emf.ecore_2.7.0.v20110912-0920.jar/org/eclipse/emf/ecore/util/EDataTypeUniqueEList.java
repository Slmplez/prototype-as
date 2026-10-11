/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EDataTypeEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EDataTypeUniqueEList<E>
extends EDataTypeEList<E> {
    private static final long serialVersionUID = 1L;

    public EDataTypeUniqueEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner, featureID);
    }

    protected boolean isUnique() {
        return true;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EDataTypeEList.Unsettable<E> {
        private static final long serialVersionUID = 1L;

        public Unsettable(Class<?> dataClass, InternalEObject owner, int featureID) {
            super(dataClass, owner, featureID);
        }

        protected boolean isUnique() {
            return true;
        }
    }
}

