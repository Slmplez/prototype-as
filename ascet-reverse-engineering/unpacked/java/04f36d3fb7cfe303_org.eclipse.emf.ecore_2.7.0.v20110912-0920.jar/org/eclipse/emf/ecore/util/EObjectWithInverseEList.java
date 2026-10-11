/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectWithInverseEList<E>
extends EObjectEList<E> {
    private static final long serialVersionUID = 1L;
    protected final int inverseFeatureID;

    public EObjectWithInverseEList(Class<?> dataClass, InternalEObject owner, int featureID, int inverseFeatureID) {
        super(dataClass, owner, featureID);
        this.inverseFeatureID = inverseFeatureID;
    }

    @Override
    protected boolean hasInverse() {
        return true;
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
    public static class ManyInverse<E>
    extends EObjectWithInverseEList<E> {
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
    extends EObjectWithInverseEList<E> {
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

