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
import org.eclipse.emf.ecore.util.EObjectEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectContainmentEList<E>
extends EObjectEList<E> {
    private static final long serialVersionUID = 1L;

    public EObjectContainmentEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner, featureID);
    }

    @Override
    protected boolean hasInverse() {
        return true;
    }

    @Override
    protected boolean hasNavigableInverse() {
        return false;
    }

    @Override
    protected boolean isContainment() {
        return true;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Resolving<E>
    extends EObjectContainmentEList<E> {
        private static final long serialVersionUID = 1L;

        public Resolving(Class<?> dataClass, InternalEObject owner, int featureID) {
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

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EObjectContainmentEList<E> {
        private static final long serialVersionUID = 1L;
        protected boolean isSet;

        public Unsettable(Class<?> dataClass, InternalEObject owner, int featureID) {
            super(dataClass, owner, featureID);
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

            public Resolving(Class<?> dataClass, InternalEObject owner, int featureID) {
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
}

