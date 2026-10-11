/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.ECUElectronics;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.impl.HWElementImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class ECUElectronicsImpl
extends HWElementImpl
implements ECUElectronics {
    protected static final Boolean CAN_BE_DISABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeDisabled = CAN_BE_DISABLED_EDEFAULT;
    protected boolean canBeDisabledESet;

    protected ECUElectronicsImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.ECU_ELECTRONICS;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldCanBeDisabled, (Object)this.canBeDisabled, !oldCanBeDisabledESet));
        }
    }

    public void unsetCanBeDisabled() {
        Boolean oldCanBeDisabled = this.canBeDisabled;
        boolean oldCanBeDisabledESet = this.canBeDisabledESet;
        this.canBeDisabled = CAN_BE_DISABLED_EDEFAULT;
        this.canBeDisabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldCanBeDisabled, (Object)CAN_BE_DISABLED_EDEFAULT, oldCanBeDisabledESet));
        }
    }

    public boolean isSetCanBeDisabled() {
        return this.canBeDisabledESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getCanBeDisabled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setCanBeDisabled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetCanBeDisabled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
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

