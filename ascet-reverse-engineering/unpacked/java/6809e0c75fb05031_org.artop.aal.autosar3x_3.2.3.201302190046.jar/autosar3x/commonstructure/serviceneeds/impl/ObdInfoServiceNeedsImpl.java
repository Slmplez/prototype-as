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

import autosar3x.commonstructure.serviceneeds.ObdInfoServiceNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ObdInfoServiceNeedsImpl
extends ServiceNeedsImpl
implements ObdInfoServiceNeeds {
    protected static final Integer DATA_LENGTH_EDEFAULT = new Integer(0);
    protected Integer dataLength = DATA_LENGTH_EDEFAULT;
    protected boolean dataLengthESet;
    protected static final Integer INFO_TYPE_EDEFAULT = new Integer(0);
    protected Integer infoType = INFO_TYPE_EDEFAULT;
    protected boolean infoTypeESet;

    protected ObdInfoServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.OBD_INFO_SERVICE_NEEDS;
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

    public Integer getInfoType() {
        return this.infoType;
    }

    public void setInfoType(Integer newInfoType) {
        Integer oldInfoType = this.infoType;
        this.infoType = newInfoType;
        boolean oldInfoTypeESet = this.infoTypeESet;
        this.infoTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldInfoType, (Object)this.infoType, !oldInfoTypeESet));
        }
    }

    public void unsetInfoType() {
        Integer oldInfoType = this.infoType;
        boolean oldInfoTypeESet = this.infoTypeESet;
        this.infoType = INFO_TYPE_EDEFAULT;
        this.infoTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldInfoType, (Object)INFO_TYPE_EDEFAULT, oldInfoTypeESet));
        }
    }

    public boolean isSetInfoType() {
        return this.infoTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getDataLength();
            }
            case 18: {
                return this.getInfoType();
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
                this.setInfoType((Integer)newValue);
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
                this.unsetInfoType();
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

