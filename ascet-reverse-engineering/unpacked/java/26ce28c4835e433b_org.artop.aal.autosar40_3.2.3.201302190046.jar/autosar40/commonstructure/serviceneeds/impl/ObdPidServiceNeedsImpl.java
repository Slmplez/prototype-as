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

import autosar40.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdPidServiceNeedsImpl
extends DiagnosticCapabilityElementImpl
implements ObdPidServiceNeeds {
    protected static final PositiveIntegerDatatype DATA_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dataLength = DATA_LENGTH_EDEFAULT.clone();
    protected boolean dataLengthESet;
    protected static final PositiveIntegerDatatype PARAMETER_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype parameterId = PARAMETER_ID_EDEFAULT.clone();
    protected boolean parameterIdESet;
    protected static final String STANDARD_EDEFAULT = "";
    protected String standard = "";
    protected boolean standardESet;

    protected ObdPidServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_PID_SERVICE_NEEDS;
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

    public Long getParameterId() {
        return (Long)this.parameterId.basicGetValue();
    }

    public void setParameterId(Long newParameterId) {
        Long oldParameterId = (Long)this.parameterId.basicGetValue();
        this.parameterId.basicSetValue((Object)newParameterId);
        boolean oldParameterIdESet = this.parameterIdESet;
        this.parameterIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldParameterId, (Object)newParameterId, !oldParameterIdESet));
        }
    }

    public void unsetParameterId() {
        Long oldParameterId = (Long)this.parameterId.basicGetValue();
        boolean oldParameterIdESet = this.parameterIdESet;
        this.parameterId = PARAMETER_ID_EDEFAULT.clone();
        this.parameterIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldParameterId, (Object)PARAMETER_ID_EDEFAULT, oldParameterIdESet));
        }
    }

    public boolean isSetParameterId() {
        return this.parameterIdESet;
    }

    public String getStandard() {
        return this.standard;
    }

    public void setStandard(String newStandard) {
        String oldStandard = this.standard;
        this.standard = newStandard;
        boolean oldStandardESet = this.standardESet;
        this.standardESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldStandard, (Object)this.standard, !oldStandardESet));
        }
    }

    public void unsetStandard() {
        String oldStandard = this.standard;
        boolean oldStandardESet = this.standardESet;
        this.standard = STANDARD_EDEFAULT;
        this.standardESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldStandard, (Object)STANDARD_EDEFAULT, oldStandardESet));
        }
    }

    public boolean isSetStandard() {
        return this.standardESet;
    }

    public PositiveIntegerDatatype getDataLengthData() {
        return this.dataLength.clone();
    }

    public void setDataLengthData(PositiveIntegerDatatype newDataLength) {
        this.dataLength.setRadix((int)newDataLength.getRadix());
        this.dataLength.setNoOfDigits((int)newDataLength.getNoOfDigits());
        this.setDataLength(newDataLength.getValue());
    }

    public PositiveIntegerDatatype getParameterIdData() {
        return this.parameterId.clone();
    }

    public void setParameterIdData(PositiveIntegerDatatype newParameterId) {
        this.parameterId.setRadix((int)newParameterId.getRadix());
        this.parameterId.setNoOfDigits((int)newParameterId.getNoOfDigits());
        this.setParameterId(newParameterId.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDataLength();
            }
            case 22: {
                return this.getParameterId();
            }
            case 23: {
                return this.getStandard();
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
                this.setParameterId((Long)newValue);
                return;
            }
            case 23: {
                this.setStandard((String)newValue);
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
                this.unsetParameterId();
                return;
            }
            case 23: {
                this.unsetStandard();
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
                return this.isSetParameterId();
            }
            case 23: {
                return this.isSetStandard();
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
        result.append(", parameterId: ");
        if (this.parameterIdESet) {
            result.append(this.parameterId);
        } else {
            result.append("<unset>");
        }
        result.append(", standard: ");
        if (this.standardESet) {
            result.append(this.standard);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

