/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.impl.HWElementImpl;
import autosar21.ecuresource.peripherals.Peripheral;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PeripheralImpl
extends HWElementImpl
implements Peripheral {
    protected static final Boolean CAN_BE_DISABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeDisabled = CAN_BE_DISABLED_EDEFAULT;
    protected boolean canBeDisabledESet;

    protected PeripheralImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PERIPHERAL;
    }

    public Boolean getCanBeDisabled() {
        return this.canBeDisabled;
    }

    public void setCanBeDisabled(Boolean newCanBeDisabled) {
        Boolean oldCanBeDisabled = this.canBeDisabled;
        this.canBeDisabled = newCanBeDisabled;
        boolean oldCanBeDisabledESet = this.canBeDisabledESet;
        this.canBeDisabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldCanBeDisabled, (Object)this.canBeDisabled, !oldCanBeDisabledESet));
        }
    }

    public void unsetCanBeDisabled() {
        Boolean oldCanBeDisabled = this.canBeDisabled;
        boolean oldCanBeDisabledESet = this.canBeDisabledESet;
        this.canBeDisabled = CAN_BE_DISABLED_EDEFAULT;
        this.canBeDisabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldCanBeDisabled, (Object)CAN_BE_DISABLED_EDEFAULT, oldCanBeDisabledESet));
        }
    }

    public boolean isSetCanBeDisabled() {
        return this.canBeDisabledESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getCanBeDisabled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setCanBeDisabled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.unsetCanBeDisabled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.isSetCanBeDisabled();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (canBeDisabled: ");
        if (this.canBeDisabledESet) {
            result.append(this.canBeDisabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

