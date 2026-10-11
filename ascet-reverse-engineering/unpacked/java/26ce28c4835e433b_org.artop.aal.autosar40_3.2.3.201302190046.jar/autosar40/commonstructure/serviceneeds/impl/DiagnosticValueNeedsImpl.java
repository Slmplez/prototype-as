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

import autosar40.commonstructure.serviceneeds.DiagnosticValueAccessEnum;
import autosar40.commonstructure.serviceneeds.DiagnosticValueNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DiagnosticValueNeedsImpl
extends DiagnosticCapabilityElementImpl
implements DiagnosticValueNeeds {
    protected static final PositiveIntegerDatatype DATA_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dataLength = DATA_LENGTH_EDEFAULT.clone();
    protected boolean dataLengthESet;
    protected static final DiagnosticValueAccessEnum DIAGNOSTIC_VALUE_ACCESS_EDEFAULT = DiagnosticValueAccessEnum.READ_ONLY;
    protected DiagnosticValueAccessEnum diagnosticValueAccess = DIAGNOSTIC_VALUE_ACCESS_EDEFAULT;
    protected boolean diagnosticValueAccessESet;
    protected static final PositiveIntegerDatatype DID_NUMBER_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype didNumber = DID_NUMBER_EDEFAULT.clone();
    protected boolean didNumberESet;

    protected DiagnosticValueNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_VALUE_NEEDS;
    }

    public Long getDataLength() {
        return (Long)this.dataLength.basicGetValue();
    }

    public void setDataLength(Long newDataLength) {
        Long oldDataLength = (Long)this.dataLength.basicGetValue();
        this.dataLength.basicSetValue((Object)newDataLength);
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDataLength, (Object)newDataLength, !oldDataLengthESet));
        }
    }

    public void unsetDataLength() {
        Long oldDataLength = (Long)this.dataLength.basicGetValue();
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLength = DATA_LENGTH_EDEFAULT.clone();
        this.dataLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDataLength, (Object)DATA_LENGTH_EDEFAULT, oldDataLengthESet));
        }
    }

    public boolean isSetDataLength() {
        return this.dataLengthESet;
    }

    public DiagnosticValueAccessEnum getDiagnosticValueAccess() {
        return this.diagnosticValueAccess;
    }

    public void setDiagnosticValueAccess(DiagnosticValueAccessEnum newDiagnosticValueAccess) {
        DiagnosticValueAccessEnum oldDiagnosticValueAccess = this.diagnosticValueAccess;
        this.diagnosticValueAccess = newDiagnosticValueAccess == null ? DIAGNOSTIC_VALUE_ACCESS_EDEFAULT : newDiagnosticValueAccess;
        boolean oldDiagnosticValueAccessESet = this.diagnosticValueAccessESet;
        this.diagnosticValueAccessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDiagnosticValueAccess, (Object)this.diagnosticValueAccess, !oldDiagnosticValueAccessESet));
        }
    }

    public void unsetDiagnosticValueAccess() {
        DiagnosticValueAccessEnum oldDiagnosticValueAccess = this.diagnosticValueAccess;
        boolean oldDiagnosticValueAccessESet = this.diagnosticValueAccessESet;
        this.diagnosticValueAccess = DIAGNOSTIC_VALUE_ACCESS_EDEFAULT;
        this.diagnosticValueAccessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldDiagnosticValueAccess, (Object)DIAGNOSTIC_VALUE_ACCESS_EDEFAULT, oldDiagnosticValueAccessESet));
        }
    }

    public boolean isSetDiagnosticValueAccess() {
        return this.diagnosticValueAccessESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDidNumber, (Object)newDidNumber, !oldDidNumberESet));
        }
    }

    public void unsetDidNumber() {
        Long oldDidNumber = (Long)this.didNumber.basicGetValue();
        boolean oldDidNumberESet = this.didNumberESet;
        this.didNumber = DID_NUMBER_EDEFAULT.clone();
        this.didNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDidNumber, (Object)DID_NUMBER_EDEFAULT, oldDidNumberESet));
        }
    }

    public boolean isSetDidNumber() {
        return this.didNumberESet;
    }

    public PositiveIntegerDatatype getDataLengthData() {
        return this.dataLength.clone();
    }

    public void setDataLengthData(PositiveIntegerDatatype newDataLength) {
        this.dataLength.setRadix((int)newDataLength.getRadix());
        this.dataLength.setNoOfDigits((int)newDataLength.getNoOfDigits());
        this.setDataLength(newDataLength.getValue());
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
                return this.getDataLength();
            }
            case 22: {
                return this.getDiagnosticValueAccess();
            }
            case 23: {
                return this.getDidNumber();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDataLength((Long)newValue);
                return;
            }
            case 22: {
                this.setDiagnosticValueAccess((DiagnosticValueAccessEnum)((Object)newValue));
                return;
            }
            case 23: {
                this.setDidNumber((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDataLength();
                return;
            }
            case 22: {
                this.unsetDiagnosticValueAccess();
                return;
            }
            case 23: {
                this.unsetDidNumber();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDataLength();
            }
            case 22: {
                return this.isSetDiagnosticValueAccess();
            }
            case 23: {
                return this.isSetDidNumber();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataLength: ");
        if (this.dataLengthESet) {
            result.append(this.dataLength);
        } else {
            result.append("<unset>");
        }
        result.append(", DiagnosticValueAccess: ");
        if (this.diagnosticValueAccessESet) {
            result.append((Object)this.diagnosticValueAccess);
        } else {
            result.append("<unset>");
        }
        result.append(", didNumber: ");
        if (this.didNumberESet) {
            result.append(this.didNumber);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

