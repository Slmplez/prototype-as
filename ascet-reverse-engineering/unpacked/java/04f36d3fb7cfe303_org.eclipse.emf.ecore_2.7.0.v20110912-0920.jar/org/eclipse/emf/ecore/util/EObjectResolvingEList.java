/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectResolvingEList<E>
extends EObjectEList<E> {
    private static final long serialVersionUID = 1L;

    public EObjectResolvingEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner, featureID);
    }

    @Override
    protected boolean hasProxies() {
        return true;
    }

    @Override
    protected E resolve(int index, E object) {
        return (E)this.resolve(index, (E)((EObject)object));
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EObjectEList.Unsettable<E> {
        private static final long serialVersionUID = 1L;

        public Unsettable(Class<?> dataClass, InternalEObject owner, int featureID) {
            super(dataClass, owner, featureID);
        }

        @Override
        protected boolean hasProxies() {
            return true;
        }

        @Override
        protected E resolve(int index, E object) {
            return (E)this.resolve(index, (E)((EObject)object));
        }
    }
}

