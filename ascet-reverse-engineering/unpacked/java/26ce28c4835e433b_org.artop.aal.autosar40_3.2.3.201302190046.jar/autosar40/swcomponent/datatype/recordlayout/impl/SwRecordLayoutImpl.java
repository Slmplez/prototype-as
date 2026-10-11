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
package autosar40.swcomponent.datatype.recordlayout.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayout;
import autosar40.swcomponent.datatype.recordlayout.SwRecordLayoutGroup;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwRecordLayoutImpl
extends ARElementImpl
implements SwRecordLayout {
    protected SwRecordLayoutGroup swRecordLayoutGroup;

    protected SwRecordLayoutImpl() {
    }

    protected EClass eStaticClass() {
        return RecordlayoutPackage.Literals.SW_RECORD_LAYOUT;
    }

    public SwRecordLayoutGroup getSwRecordLayoutGroup() {
        return this.swRecordLayoutGroup;
    }

    public NotificationChain basicSetSwRecordLayoutGroup(SwRecordLayoutGroup newSwRecordLayoutGroup, NotificationChain msgs) {
        SwRecordLayoutGroup oldSwRecordLayoutGroup = this.swRecordLayoutGroup;
        this.swRecordLayoutGroup = newSwRecordLayoutGroup;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSwRecordLayoutGroup, (Object)newSwRecordLayoutGroup);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwRecordLayoutGroup(SwRecordLayoutGroup newSwRecordLayoutGroup) {
        if (newSwRecordLayoutGroup != this.swRecordLayoutGroup) {
            NotificationChain msgs = null;
            if (this.swRecordLayoutGroup != null) {
                msgs = ((InternalEObject)this.swRecordLayoutGroup).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newSwRecordLayoutGroup != null) {
                msgs = ((InternalEObject)newSwRecordLayoutGroup).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetSwRecordLayoutGroup(newSwRecordLayoutGroup, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSwRecordLayoutGroup, (Object)newSwRecordLayoutGroup));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetSwRecordLayoutGroup(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getSwRecordLayoutGroup();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setSwRecordLayoutGroup((SwRecordLayoutGroup)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setSwRecordLayoutGroup(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.swRecordLayoutGroup != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

