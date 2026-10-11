/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4can.cancommunication.impl;

import autosar3x.system.fibex.fibex4can.cancommunication.CanAddressingModeType;
import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanFrameTriggeringImpl
extends FrameTriggeringImpl
implements CanFrameTriggering {
    protected static final CanAddressingModeType CAN_ADDRESSING_MODE_EDEFAULT = CanAddressingModeType.STANDARD;
    protected CanAddressingModeType canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
    protected boolean canAddressingModeESet;
    protected static final Integer IDENTIFIER_EDEFAULT = new Integer(0);
    protected Integer identifier = IDENTIFIER_EDEFAULT;
    protected boolean identifierESet;
    protected RxIdentifierRange rxIdentifierRange;

    protected CanFrameTriggeringImpl() {
    }

    protected EClass eStaticClass() {
        return CancommunicationPackage.Literals.CAN_FRAME_TRIGGERING;
    }

    public CanAddressingModeType getCanAddressingMode() {
        return this.canAddressingMode;
    }

    public void setCanAddressingMode(CanAddressingModeType newCanAddressingMode) {
        CanAddressingModeType oldCanAddressingMode = this.canAddressingMode;
        this.canAddressingMode = newCanAddressingMode == null ? CAN_ADDRESSING_MODE_EDEFAULT : newCanAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCanAddressingMode, (Object)this.canAddressingMode, !oldCanAddressingModeESet));
        }
    }

    public void unsetCanAddressingMode() {
        CanAddressingModeType oldCanAddressingMode = this.canAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
        this.canAddressingModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCanAddressingMode, (Object)CAN_ADDRESSING_MODE_EDEFAULT, oldCanAddressingModeESet));
        }
    }

    public boolean isSetCanAddressingMode() {
        return this.canAddressingModeESet;
    }

    public Integer getIdentifier() {
        return this.identifier;
    }

    public void setIdentifier(Integer newIdentifier) {
        Integer oldIdentifier = this.identifier;
        this.identifier = newIdentifier;
        boolean oldIdentifierESet = this.identifierESet;
        this.identifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldIdentifier, (Object)this.identifier, !oldIdentifierESet));
        }
    }

    public void unsetIdentifier() {
        Integer oldIdentifier = this.identifier;
        boolean oldIdentifierESet = this.identifierESet;
        this.identifier = IDENTIFIER_EDEFAULT;
        this.identifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldIdentifier, (Object)IDENTIFIER_EDEFAULT, oldIdentifierESet));
        }
    }

    public boolean isSetIdentifier() {
        return this.identifierESet;
    }

    public RxIdentifierRange getRxIdentifierRange() {
        return this.rxIdentifierRange;
    }

    public NotificationChain basicSetRxIdentifierRange(RxIdentifierRange newRxIdentifierRange, NotificationChain msgs) {
        RxIdentifierRange oldRxIdentifierRange = this.rxIdentifierRange;
        this.rxIdentifierRange = newRxIdentifierRange;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldRxIdentifierRange, (Object)newRxIdentifierRange);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRxIdentifierRange(RxIdentifierRange newRxIdentifierRange) {
        if (newRxIdentifierRange != this.rxIdentifierRange) {
            NotificationChain msgs = null;
            if (this.rxIdentifierRange != null) {
                msgs = ((InternalEObject)this.rxIdentifierRange).eInverseRemove((InternalEObject)this, 4, RxIdentifierRange.class, msgs);
            }
            if (newRxIdentifierRange != null) {
                msgs = ((InternalEObject)newRxIdentifierRange).eInverseAdd((InternalEObject)this, 4, RxIdentifierRange.class, msgs);
            }
            if ((msgs = this.basicSetRxIdentifierRange(newRxIdentifierRange, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newRxIdentifierRange, (Object)newRxIdentifierRange));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                if (this.rxIdentifierRange != null) {
                    msgs = ((InternalEObject)this.rxIdentifierRange).eInverseRemove((InternalEObject)this, -24, null, msgs);
                }
                return this.basicSetRxIdentifierRange((RxIdentifierRange)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return this.basicSetRxIdentifierRange(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getCanAddressingMode();
            }
            case 22: {
                return this.getIdentifier();
            }
            case 23: {
                return this.getRxIdentifierRange();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCanAddressingMode((CanAddressingModeType)((Object)newValue));
                return;
            }
            case 22: {
                this.setIdentifier((Integer)newValue);
                return;
            }
            case 23: {
                this.setRxIdentifierRange((RxIdentifierRange)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetCanAddressingMode();
                return;
            }
            case 22: {
                this.unsetIdentifier();
                return;
            }
            case 23: {
                this.setRxIdentifierRange(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetCanAddressingMode();
            }
            case 22: {
                return this.isSetIdentifier();
            }
            case 23: {
                return this.rxIdentifierRange != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (canAddressingMode: ");
        if (this.canAddressingModeESet) {
            result.append((Object)this.canAddressingMode);
        } else {
            result.append("<unset>");
        }
        result.append(", identifier: ");
        if (this.identifierESet) {
            result.append(this.identifier);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

