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

import autosar40.commonstructure.serviceneeds.CryptoServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CryptoServiceNeedsImpl
extends ServiceNeedsImpl
implements CryptoServiceNeeds {
    protected static final PositiveIntegerDatatype MAXIMUM_KEY_LENGTH_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype maximumKeyLength = MAXIMUM_KEY_LENGTH_EDEFAULT.clone();
    protected boolean maximumKeyLengthESet;

    protected CryptoServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.CRYPTO_SERVICE_NEEDS;
    }

    public Long getMaximumKeyLength() {
        return (Long)this.maximumKeyLength.basicGetValue();
    }

    public void setMaximumKeyLength(Long newMaximumKeyLength) {
        Long oldMaximumKeyLength = (Long)this.maximumKeyLength.basicGetValue();
        this.maximumKeyLength.basicSetValue((Object)newMaximumKeyLength);
        boolean oldMaximumKeyLengthESet = this.maximumKeyLengthESet;
        this.maximumKeyLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldMaximumKeyLength, (Object)newMaximumKeyLength, !oldMaximumKeyLengthESet));
        }
    }

    public void unsetMaximumKeyLength() {
        Long oldMaximumKeyLength = (Long)this.maximumKeyLength.basicGetValue();
        boolean oldMaximumKeyLengthESet = this.maximumKeyLengthESet;
        this.maximumKeyLength = MAXIMUM_KEY_LENGTH_EDEFAULT.clone();
        this.maximumKeyLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldMaximumKeyLength, (Object)MAXIMUM_KEY_LENGTH_EDEFAULT, oldMaximumKeyLengthESet));
        }
    }

    public boolean isSetMaximumKeyLength() {
        return this.maximumKeyLengthESet;
    }

    public PositiveIntegerDatatype getMaximumKeyLengthData() {
        return this.maximumKeyLength.clone();
    }

    public void setMaximumKeyLengthData(PositiveIntegerDatatype newMaximumKeyLength) {
        this.maximumKeyLength.setRadix((int)newMaximumKeyLength.getRadix());
        this.maximumKeyLength.setNoOfDigits((int)newMaximumKeyLength.getNoOfDigits());
        this.setMaximumKeyLength(newMaximumKeyLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getMaximumKeyLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setMaximumKeyLength((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetMaximumKeyLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetMaximumKeyLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maximumKeyLength: ");
        if (this.maximumKeyLengthESet) {
            result.append(this.maximumKeyLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

