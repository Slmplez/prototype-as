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

import autosar40.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdInfoServiceNeedsImpl
extends DiagnosticCapabilityElementImpl
implements ObdInfoServiceNeeds {
    protected static final PositiveIntegerDatatype DATA_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype dataLength = DATA_LENGTH_EDEFAULT.clone();
    protected boolean dataLengthESet;
    protected static final PositiveIntegerDatatype INFO_TYPE_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype infoType = INFO_TYPE_EDEFAULT.clone();
    protected boolean infoTypeESet;

    protected ObdInfoServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_INFO_SERVICE_NEEDS;
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

    public Long getInfoType() {
        return (Long)this.infoType.basicGetValue();
    }

    public void setInfoType(Long newInfoType) {
        Long oldInfoType = (Long)this.infoType.basicGetValue();
        this.infoType.basicSetValue((Object)newInfoType);
        boolean oldInfoTypeESet = this.infoTypeESet;
        this.infoTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldInfoType, (Object)newInfoType, !oldInfoTypeESet));
        }
    }

    public void unsetInfoType() {
        Long oldInfoType = (Long)this.infoType.basicGetValue();
        boolean oldInfoTypeESet = this.infoTypeESet;
        this.infoType = INFO_TYPE_EDEFAULT.clone();
        this.infoTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldInfoType, (Object)INFO_TYPE_EDEFAULT, oldInfoTypeESet));
        }
    }

    public boolean isSetInfoType() {
        return this.infoTypeESet;
    }

    public PositiveIntegerDatatype getDataLengthData() {
        return this.dataLength.clone();
    }

    public void setDataLengthData(PositiveIntegerDatatype newDataLength) {
        this.dataLength.setRadix((int)newDataLength.getRadix());
        this.dataLength.setNoOfDigits((int)newDataLength.getNoOfDigits());
        this.setDataLength(newDataLength.getValue());
    }

    public PositiveIntegerDatatype getInfoTypeData() {
        return this.infoType.clone();
    }

    public void setInfoTypeData(PositiveIntegerDatatype newInfoType) {
        this.infoType.setRadix((int)newInfoType.getRadix());
        this.infoType.setNoOfDigits((int)newInfoType.getNoOfDigits());
        this.setInfoType(newInfoType.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDataLength();
            }
            case 22: {
                return this.getInfoType();
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
                this.setInfoType((Long)newValue);
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
                this.unsetInfoType();
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
                return this.isSetInfoType();
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
        result.append(", infoType: ");
        if (this.infoTypeESet) {
            result.append(this.infoType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

