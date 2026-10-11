/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagnosticIoControlNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DiagnosticIoControlNeedsImpl
extends DiagnosticCapabilityElementImpl
implements DiagnosticIoControlNeeds {
    protected static final PositiveIntegerDatatype DID_NUMBER_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype didNumber = DID_NUMBER_EDEFAULT.clone();
    protected boolean didNumberESet;
    protected static final Boolean FREEZE_CURRENT_STATE_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean freezeCurrentStateSupported = FREEZE_CURRENT_STATE_SUPPORTED_EDEFAULT;
    protected boolean freezeCurrentStateSupportedESet;
    protected static final Boolean SHORT_TERM_ADJUSTMENT_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean shortTermAdjustmentSupported = SHORT_TERM_ADJUSTMENT_SUPPORTED_EDEFAULT;
    protected boolean shortTermAdjustmentSupportedESet;

    protected DiagnosticIoControlNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_IO_CONTROL_NEEDS;
    }

    public Long getDidNumber() {
        return (Long)this.didNumber.basicGetValue();
    }

    public void setDidNumber(Long newDidNumber) {
        Long oldDidNumber = (Long)this.didNumber.basicGetValue();
        this.didNumber.basicSetValue((Object)newDidNumber);
        boolean oldDidNumberESet = this.didNumberESet;
        this.didNumberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDidNumber, (Object)newDidNumber, !oldDidNumberESet));
        }
    }

    public void unsetDidNumber() {
        Long oldDidNumber = (Long)this.didNumber.basicGetValue();
        boolean oldDidNumberESet = this.didNumberESet;
        this.didNumber = DID_NUMBER_EDEFAULT.clone();
        this.didNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDidNumber, (Object)DID_NUMBER_EDEFAULT, oldDidNumberESet));
        }
    }

    public boolean isSetDidNumber() {
        return this.didNumberESet;
    }

    public Boolean getFreezeCurrentStateSupported() {
        return this.freezeCurrentStateSupported;
    }

    public void setFreezeCurrentStateSupported(Boolean newFreezeCurrentStateSupported) {
        Boolean oldFreezeCurrentStateSupported = this.freezeCurrentStateSupported;
        this.freezeCurrentStateSupported = newFreezeCurrentStateSupported;
        boolean oldFreezeCurrentStateSupportedESet = this.freezeCurrentStateSupportedESet;
        this.freezeCurrentStateSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldFreezeCurrentStateSupported, (Object)this.freezeCurrentStateSupported, !oldFreezeCurrentStateSupportedESet));
        }
    }

    public void unsetFreezeCurrentStateSupported() {
        Boolean oldFreezeCurrentStateSupported = this.freezeCurrentStateSupported;
        boolean oldFreezeCurrentStateSupportedESet = this.freezeCurrentStateSupportedESet;
        this.freezeCurrentStateSupported = FREEZE_CURRENT_STATE_SUPPORTED_EDEFAULT;
        this.freezeCurrentStateSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldFreezeCurrentStateSupported, (Object)FREEZE_CURRENT_STATE_SUPPORTED_EDEFAULT, oldFreezeCurrentStateSupportedESet));
        }
    }

    public boolean isSetFreezeCurrentStateSupported() {
        return this.freezeCurrentStateSupportedESet;
    }

    public Boolean getShortTermAdjustmentSupported() {
        return this.shortTermAdjustmentSupported;
    }

    public void setShortTermAdjustmentSupported(Boolean newShortTermAdjustmentSupported) {
        Boolean oldShortTermAdjustmentSupported = this.shortTermAdjustmentSupported;
        this.shortTermAdjustmentSupported = newShortTermAdjustmentSupported;
        boolean oldShortTermAdjustmentSupportedESet = this.shortTermAdjustmentSupportedESet;
        this.shortTermAdjustmentSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldShortTermAdjustmentSupported, (Object)this.shortTermAdjustmentSupported, !oldShortTermAdjustmentSupportedESet));
        }
    }

    public void unsetShortTermAdjustmentSupported() {
        Boolean oldShortTermAdjustmentSupported = this.shortTermAdjustmentSupported;
        boolean oldShortTermAdjustmentSupportedESet = this.shortTermAdjustmentSupportedESet;
        this.shortTermAdjustmentSupported = SHORT_TERM_ADJUSTMENT_SUPPORTED_EDEFAULT;
        this.shortTermAdjustmentSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldShortTermAdjustmentSupported, (Object)SHORT_TERM_ADJUSTMENT_SUPPORTED_EDEFAULT, oldShortTermAdjustmentSupportedESet));
        }
    }

    public boolean isSetShortTermAdjustmentSupported() {
        return this.shortTermAdjustmentSupportedESet;
    }

    public PositiveIntegerDatatype getDidNumberData() {
        return this.didNumber.clone();
    }

    public void setDidNumberData(PositiveIntegerDatatype newDidNumber) {
        this.didNumber.setRadix((int)newDidNumber.getRadix());
        this.didNumber.setNoOfDigits((int)newDidNumber.getNoOfDigits());
        this.setDidNumber(newDidNumber.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDidNumber();
            }
            case 22: {
                return this.getFreezeCurrentStateSupported();
            }
            case 23: {
                return this.getShortTermAdjustmentSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDidNumber((Long)newValue);
                return;
            }
            case 22: {
                this.setFreezeCurrentStateSupported((Boolean)newValue);
                return;
            }
            case 23: {
                this.setShortTermAdjustmentSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDidNumber();
                return;
            }
            case 22: {
                this.unsetFreezeCurrentStateSupported();
                return;
            }
            case 23: {
                this.unsetShortTermAdjustmentSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDidNumber();
            }
            case 22: {
                return this.isSetFreezeCurrentStateSupported();
            }
            case 23: {
                return this.isSetShortTermAdjustmentSupported();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (didNumber: ");
        if (this.didNumberESet) {
            result.append(this.didNumber);
        } else {
            result.append("<unset>");
        }
        result.append(", freezeCurrentStateSupported: ");
        if (this.freezeCurrentStateSupportedESet) {
            result.append(this.freezeCurrentStateSupported);
        } else {
            result.append("<unset>");
        }
        result.append(", shortTermAdjustmentSupported: ");
        if (this.shortTermAdjustmentSupportedESet) {
            result.append(this.shortTermAdjustmentSupported);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

