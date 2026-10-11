/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.ObdPidServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdPidServiceNeedsImpl
extends ServiceNeedsImpl
implements ObdPidServiceNeeds {
    protected static final Integer DATA_LENGTH_EDEFAULT = new Integer(0);
    protected Integer dataLength = DATA_LENGTH_EDEFAULT;
    protected boolean dataLengthESet;
    protected static final Integer PARAMETER_ID_EDEFAULT = new Integer(0);
    protected Integer parameterId = PARAMETER_ID_EDEFAULT;
    protected boolean parameterIdESet;
    protected static final String STANDARD_EDEFAULT = "";
    protected String standard = "";
    protected boolean standardESet;

    protected ObdPidServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_PID_SERVICE_NEEDS;
    }

    public Integer getDataLength() {
        return this.dataLength;
    }

    public void setDataLength(Integer newDataLength) {
        Integer oldDataLength = this.dataLength;
        this.dataLength = newDataLength;
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldDataLength, (Object)this.dataLength, !oldDataLengthESet));
        }
    }

    public void unsetDataLength() {
        Integer oldDataLength = this.dataLength;
        boolean oldDataLengthESet = this.dataLengthESet;
        this.dataLength = DATA_LENGTH_EDEFAULT;
        this.dataLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldDataLength, (Object)DATA_LENGTH_EDEFAULT, oldDataLengthESet));
        }
    }

    public boolean isSetDataLength() {
        return this.dataLengthESet;
    }

    public Integer getParameterId() {
        return this.parameterId;
    }

    public void setParameterId(Integer newParameterId) {
        Integer oldParameterId = this.parameterId;
        this.parameterId = newParameterId;
        boolean oldParameterIdESet = this.parameterIdESet;
        this.parameterIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldParameterId, (Object)this.parameterId, !oldParameterIdESet));
        }
    }

    public void unsetParameterId() {
        Integer oldParameterId = this.parameterId;
        boolean oldParameterIdESet = this.parameterIdESet;
        this.parameterId = PARAMETER_ID_EDEFAULT;
        this.parameterIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldParameterId, (Object)PARAMETER_ID_EDEFAULT, oldParameterIdESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldStandard, (Object)this.standard, !oldStandardESet));
        }
    }

    public void unsetStandard() {
        String oldStandard = this.standard;
        boolean oldStandardESet = this.standardESet;
        this.standard = STANDARD_EDEFAULT;
        this.standardESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldStandard, (Object)STANDARD_EDEFAULT, oldStandardESet));
        }
    }

    public boolean isSetStandard() {
        return this.standardESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getDataLength();
            }
            case 18: {
                return this.getParameterId();
            }
            case 19: {
                return this.getStandard();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setDataLength((Integer)newValue);
                return;
            }
            case 18: {
                this.setParameterId((Integer)newValue);
                return;
            }
            case 19: {
                this.setStandard((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetDataLength();
                return;
            }
            case 18: {
                this.unsetParameterId();
                return;
            }
            case 19: {
                this.unsetStandard();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetDataLength();
            }
            case 18: {
                return this.isSetParameterId();
            }
            case 19: {
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

