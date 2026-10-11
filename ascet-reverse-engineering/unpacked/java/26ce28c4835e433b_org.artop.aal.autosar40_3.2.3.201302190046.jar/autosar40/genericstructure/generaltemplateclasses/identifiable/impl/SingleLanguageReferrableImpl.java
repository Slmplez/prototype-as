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

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SingleLanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.ReferrableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class SingleLanguageReferrableImpl
extends ReferrableImpl
implements SingleLanguageReferrable {
    protected SingleLanguageLongName longName1;

    protected SingleLanguageReferrableImpl() {
    }

    protected EClass eStaticClass() {
        return IdentifiablePackage.Literals.SINGLE_LANGUAGE_REFERRABLE;
    }

    public SingleLanguageLongName getLongName1() {
        return this.longName1;
    }

    public NotificationChain basicSetLongName1(SingleLanguageLongName newLongName1, NotificationChain msgs) {
        SingleLanguageLongName oldLongName1 = this.longName1;
        this.longName1 = newLongName1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLongName1, (Object)newLongName1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setLongName1(SingleLanguageLongName newLongName1) {
        if (newLongName1 != this.longName1) {
            NotificationChain msgs = null;
            if (this.longName1 != null) {
                msgs = ((InternalEObject)this.longName1).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newLongName1 != null) {
                msgs = ((InternalEObject)newLongName1).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetLongName1(newLongName1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newLongName1, (Object)newLongName1));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 6: {
                return this.basicSetLongName1(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getLongName1();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setLongName1((SingleLanguageLongName)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setLongName1(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.longName1 != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

