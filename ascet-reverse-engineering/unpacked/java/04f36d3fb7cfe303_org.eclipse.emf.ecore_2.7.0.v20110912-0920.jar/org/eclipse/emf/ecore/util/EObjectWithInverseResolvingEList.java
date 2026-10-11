/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectWithInverseEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectWithInverseResolvingEList<E>
extends EObjectWithInverseEList<E> {
    private static final long serialVersionUID = 1L;

    public EObjectWithInverseResolvingEList(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
        super(dataClass, owner, featureID, inverseFeatureID);
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
    public static class ManyInverse<E>
    extends EObjectWithInverseResolvingEList<E> {
        private static final long serialVersionUID = 1L;

        public ManyInverse(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
            super(dataClass, owner, featureID, inverseFeatureID);
        }

        @Override
        protected boolean hasManyInverse() {
            return true;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EObjectWithInverseEList.Unsettable<E> {
        private static final long serialVersionUID = 1L;

        public Unsettable(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
            super(dataClass, owner, featureID, inverseFeatureID);
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
        public static class ManyInverse<E>
        extends Unsettable<E> {
            private static final long serialVersionUID = 1L;

            public ManyInverse(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
                super(dataClass, owner, featureID, inverseFeatureID);
            }

            @Override
            protected boolean hasManyInverse() {
                return true;
            }
        }
    }
}

