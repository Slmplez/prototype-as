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
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationControllerContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationControllerContentImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class EthernetCommunicationControllerContentImpl
extends CommunicationControllerContentImpl
implements EthernetCommunicationControllerContent {
    protected static final IntegerDatatype MAXIMUM_RECEIVE_BUFFER_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maximumReceiveBufferLength = MAXIMUM_RECEIVE_BUFFER_LENGTH_EDEFAULT.clone();
    protected boolean maximumReceiveBufferLengthESet;
    protected static final IntegerDatatype MAXIMUM_TRANSMIT_BUFFER_LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maximumTransmitBufferLength = MAXIMUM_TRANSMIT_BUFFER_LENGTH_EDEFAULT.clone();
    protected boolean maximumTransmitBufferLengthESet;

    protected EthernetCommunicationControllerContentImpl() {
    }

    protected EClass eStaticClass() {
        return EthernettopologyPackage.Literals.ETHERNET_COMMUNICATION_CONTROLLER_CONTENT;
    }

    public Integer getMaximumReceiveBufferLength() {
        return (Integer)this.maximumReceiveBufferLength.basicGetValue();
    }

    public void setMaximumReceiveBufferLength(Integer newMaximumReceiveBufferLength) {
        Integer oldMaximumReceiveBufferLength = (Integer)this.maximumReceiveBufferLength.basicGetValue();
        this.maximumReceiveBufferLength.basicSetValue((Object)newMaximumReceiveBufferLength);
        boolean oldMaximumReceiveBufferLengthESet = this.maximumReceiveBufferLengthESet;
        this.maximumReceiveBufferLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMaximumReceiveBufferLength, (Object)newMaximumReceiveBufferLength, !oldMaximumReceiveBufferLengthESet));
        }
    }

    public void unsetMaximumReceiveBufferLength() {
        Integer oldMaximumReceiveBufferLength = (Integer)this.maximumReceiveBufferLength.basicGetValue();
        boolean oldMaximumReceiveBufferLengthESet = this.maximumReceiveBufferLengthESet;
        this.maximumReceiveBufferLength = MAXIMUM_RECEIVE_BUFFER_LENGTH_EDEFAULT.clone();
        this.maximumReceiveBufferLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMaximumReceiveBufferLength, (Object)MAXIMUM_RECEIVE_BUFFER_LENGTH_EDEFAULT, oldMaximumReceiveBufferLengthESet));
        }
    }

    public boolean isSetMaximumReceiveBufferLength() {
        return this.maximumReceiveBufferLengthESet;
    }

    public Integer getMaximumTransmitBufferLength() {
        return (Integer)this.maximumTransmitBufferLength.basicGetValue();
    }

    public void setMaximumTransmitBufferLength(Integer newMaximumTransmitBufferLength) {
        Integer oldMaximumTransmitBufferLength = (Integer)this.maximumTransmitBufferLength.basicGetValue();
        this.maximumTransmitBufferLength.basicSetValue((Object)newMaximumTransmitBufferLength);
        boolean oldMaximumTransmitBufferLengthESet = this.maximumTransmitBufferLengthESet;
        this.maximumTransmitBufferLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMaximumTransmitBufferLength, (Object)newMaximumTransmitBufferLength, !oldMaximumTransmitBufferLengthESet));
        }
    }

    public void unsetMaximumTransmitBufferLength() {
        Integer oldMaximumTransmitBufferLength = (Integer)this.maximumTransmitBufferLength.basicGetValue();
        boolean oldMaximumTransmitBufferLengthESet = this.maximumTransmitBufferLengthESet;
        this.maximumTransmitBufferLength = MAXIMUM_TRANSMIT_BUFFER_LENGTH_EDEFAULT.clone();
        this.maximumTransmitBufferLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMaximumTransmitBufferLength, (Object)MAXIMUM_TRANSMIT_BUFFER_LENGTH_EDEFAULT, oldMaximumTransmitBufferLengthESet));
        }
    }

    public boolean isSetMaximumTransmitBufferLength() {
        return this.maximumTransmitBufferLengthESet;
    }

    public IntegerDatatype getMaximumReceiveBufferLengthData() {
        return this.maximumReceiveBufferLength.clone();
    }

    public void setMaximumReceiveBufferLengthData(IntegerDatatype newMaximumReceiveBufferLength) {
        this.maximumReceiveBufferLength.setRadix((int)newMaximumReceiveBufferLength.getRadix());
        this.maximumReceiveBufferLength.setNoOfDigits((int)newMaximumReceiveBufferLength.getNoOfDigits());
        this.setMaximumReceiveBufferLength(newMaximumReceiveBufferLength.getValue());
    }

    public IntegerDatatype getMaximumTransmitBufferLengthData() {
        return this.maximumTransmitBufferLength.clone();
    }

    public void setMaximumTransmitBufferLengthData(IntegerDatatype newMaximumTransmitBufferLength) {
        this.maximumTransmitBufferLength.setRadix((int)newMaximumTransmitBufferLength.getRadix());
        this.maximumTransmitBufferLength.setNoOfDigits((int)newMaximumTransmitBufferLength.getNoOfDigits());
        this.setMaximumTransmitBufferLength(newMaximumTransmitBufferLength.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMaximumReceiveBufferLength();
            }
            case 5: {
                return this.getMaximumTransmitBufferLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMaximumReceiveBufferLength((Integer)newValue);
                return;
            }
            case 5: {
                this.setMaximumTransmitBufferLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMaximumReceiveBufferLength();
                return;
            }
            case 5: {
                this.unsetMaximumTransmitBufferLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMaximumReceiveBufferLength();
            }
            case 5: {
                return this.isSetMaximumTransmitBufferLength();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maximumReceiveBufferLength: ");
        if (this.maximumReceiveBufferLengthESet) {
            result.append(this.maximumReceiveBufferLength);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumTransmitBufferLength: ");
        if (this.maximumTransmitBufferLengthESet) {
            result.append(this.maximumTransmitBufferLength);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

