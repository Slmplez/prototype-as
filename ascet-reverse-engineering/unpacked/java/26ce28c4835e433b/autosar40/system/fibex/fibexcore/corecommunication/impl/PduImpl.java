/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PduImpl
extends FibexElementImpl
implements Pdu {
    protected static final IntegerDatatype LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype length = LENGTH_EDEFAULT.clone();
    protected boolean lengthESet;

    protected PduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.PDU;
    }

    public Integer getLength() {
        return (Integer)this.length.basicGetValue();
    }

    public void setLength(Integer newLength) {
        Integer oldLength = (Integer)this.length.basicGetValue();
        this.length.basicSetValue((Object)newLength);
        boolean oldLengthESet = this.lengthESet;
        this.lengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldLength, (Object)newLength, !oldLengthESet));
        }
    }

    public void unsetLength() {
        Integer oldLength = (Integer)this.length.basicGetValue();
        boolean oldLengthESet = this.lengthESet;
        this.length = LENGTH_EDEFAULT.clone();
        this.lengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldLength, (Object)LENGTH_EDEFAULT, oldLengthESet));
        }
    }

    public boolean isSetLength() {
        return this.lengthESet;
    }

    public IntegerDatatype getLengthData() {
        return this.length.clone();
    }

    public void setLengthData(IntegerDatatype newLength) {
        this.length.setRadix((int)newLength.getRadix());
        this.length.setNoOfDigits((int)newLength.getNoOfDigits());
        this.setLength(newLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (length: ");
        if (this.lengthESet) {
            result.append(this.length);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

