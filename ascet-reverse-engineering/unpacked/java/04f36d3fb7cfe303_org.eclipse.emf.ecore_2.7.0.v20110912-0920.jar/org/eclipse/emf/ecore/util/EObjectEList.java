/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.ecore.util;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EcoreEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectEList<E>
extends EcoreEList<E> {
    private static final long serialVersionUID = 1L;
    protected final int featureID;

    public EObjectEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner);
        this.featureID = featureID;
    }

    @Override
    public int getFeatureID() {
        return this.featureID;
    }

    protected boolean useEquals() {
        return false;
    }

    protected boolean isUnique() {
        return true;
    }

    protected boolean hasInverse() {
        return false;
    }

    @Override
    protected boolean isEObject() {
        return true;
    }

    protected boolean canContainNull() {
        return false;
    }

    @Override
    protected E resolve(int index, E object) {
        return object;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class Unsettable<E>
    extends EObjectEList<E> {
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
    }
}

