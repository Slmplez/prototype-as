/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectContainmentWithInverseEList<E>
extends EObjectContainmentEList<E> {
    private static final long serialVersionUID = 1L;
    protected final int inverseFeatureID;

    public EObjectContainmentWithInverseEList(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
        super(dataClass, owner, featureID);
        this.inverseFeatureID = inverseFeatureID;
    }

    @Override
    protected boolean hasNavigableInverse() {
        return true;
    }

    @Override
    public int getInverseFeatureID() {
        return this.inverseFeatureID;
    }

    @Override
    public Class<?> getInverseFeatureClass() {
        return this.dataClass;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Resolving<E>
    extends EObjectContainmentWithInverseEList<E> {
        private static final long serialVersionUID = 1L;

        public Resolving(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
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
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EObjectContainmentWithInverseEList<E> {
        private static final long serialVersionUID = 1L;
        protected boolean isSet;

        public Unsettable(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
            super(dataClass, owner, featureID, inverseFeatureID);
        }

        protected void didChange() {
            this.isSet = true;
        }

        @Override
        public boolean isSet() {
            return this.isSet;
        }

        @Override
        public void unset() {
            super.unset();
            if (this.isNotificationRequired()) {
                boolean oldIsSet = this.isSet;
                this.isSet = false;
                this.owner.eNotify((Notification)this.createNotification(2, oldIsSet, false));
            } else {
                this.isSet = false;
            }
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static class Resolving<E>
        extends Unsettable<E> {
            private static final long serialVersionUID = 1L;

            public Resolving(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
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
        }
    }
}

