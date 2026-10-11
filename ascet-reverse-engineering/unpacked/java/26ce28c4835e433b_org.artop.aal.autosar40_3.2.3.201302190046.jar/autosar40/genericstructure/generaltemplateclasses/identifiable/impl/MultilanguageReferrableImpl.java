/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.ReferrableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class MultilanguageReferrableImpl
extends ReferrableImpl
implements MultilanguageReferrable {
    protected MultilanguageReferrableImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.MULTILANGUAGE_REFERRABLE;
    }

    public MultilanguageLongName getLongName() {
        return (MultilanguageLongName)this.getField(8192);
    }

    public NotificationChain basicSetLongName(MultilanguageLongName newLongName, NotificationChain msgs) {
        MultilanguageLongName oldLongName = (MultilanguageLongName)this.setField(8192, newLongName);
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLongName, (Object)newLongName);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLongName(MultilanguageLongName newLongName) {
        MultilanguageLongName longName = this.getLongName();
        if (newLongName != longName) {
            NotificationChain msgs = null;
            if (longName != null) {
                msgs = ((InternalEObject)longName).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newLongName != null) {
                msgs = ((InternalEObject)newLongName).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetLongName(newLongName, msgs)) != null) {
                msgs.dispatch();
            } else if (this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newLongName, (Object)newLongName));
            }
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetLongName(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getLongName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setLongName((MultilanguageLongName)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setLongName(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.getLongName() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

