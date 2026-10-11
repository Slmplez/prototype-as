/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SystemSignalImpl
extends ARElementImpl
implements SystemSignal {
    protected static final Boolean DYNAMIC_LENGTH_EDEFAULT = Boolean.FALSE;
    protected Boolean dynamicLength = DYNAMIC_LENGTH_EDEFAULT;
    protected boolean dynamicLengthESet;

    protected SystemSignalImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SYSTEM_SIGNAL;
    }

    public Boolean getDynamicLength() {
        return this.dynamicLength;
    }

    public void setDynamicLength(Boolean newDynamicLength) {
        Boolean oldDynamicLength = this.dynamicLength;
        this.dynamicLength = newDynamicLength;
        boolean oldDynamicLengthESet = this.dynamicLengthESet;
        this.dynamicLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDynamicLength, (Object)this.dynamicLength, !oldDynamicLengthESet));
        }
    }

    public void unsetDynamicLength() {
        Boolean oldDynamicLength = this.dynamicLength;
        boolean oldDynamicLengthESet = this.dynamicLengthESet;
        this.dynamicLength = DYNAMIC_LENGTH_EDEFAULT;
        this.dynamicLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDynamicLength, (Object)DYNAMIC_LENGTH_EDEFAULT, oldDynamicLengthESet));
        }
    }

    public boolean isSetDynamicLength() {
        return this.dynamicLengthESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDynamicLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDynamicLength((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDynamicLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDynamicLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dynamicLength: ");
        if (this.dynamicLengthESet) {
            result.append(this.dynamicLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

