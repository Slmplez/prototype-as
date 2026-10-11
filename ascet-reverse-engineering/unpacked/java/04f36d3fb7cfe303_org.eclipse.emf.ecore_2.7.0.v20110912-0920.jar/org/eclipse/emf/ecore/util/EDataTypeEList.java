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
public class EDataTypeEList<E>
extends EcoreEList<E> {
    private static final long serialVersionUID = 1L;
    protected final int featureID;

    public EDataTypeEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner);
        this.featureID = featureID;
    }

    @Override
    public int getFeatureID() {
        return this.featureID;
    }

    @Override
    protected boolean isEObject() {
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
    extends EDataTypeEList<E> {
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

