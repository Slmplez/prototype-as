/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.fibex.fibex4can.cancommunication.impl;

import autosar40.system.fibex.fibex4can.cancommunication.CanAddressingModeType;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameTriggeringImpl;
import java.util.Collection;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CanFrameTriggeringImpl
extends FrameTriggeringImpl
implements CanFrameTriggering {
    protected EList<TtcanAbsolutelyScheduledTiming> absolutelyScheduledTimings;
    protected static final CanAddressingModeType CAN_ADDRESSING_MODE_EDEFAULT = CanAddressingModeType.STANDARD;
    protected CanAddressingModeType canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
    protected boolean canAddressingModeESet;
    protected static final IntegerDatatype IDENTIFIER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype identifier = IDENTIFIER_EDEFAULT.clone();
    protected boolean identifierESet;
    protected RxIdentifierRange rxIdentifierRange;

    protected CanFrameTriggeringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CancommunicationPackage.Literals.CAN_FRAME_TRIGGERING;
    }

    @Override
    public EList<TtcanAbsolutelyScheduledTiming> getAbsolutelyScheduledTimings() {
        if (this.absolutelyScheduledTimings == null) {
            this.absolutelyScheduledTimings = new EObjectContainmentWithInverseEList(TtcanAbsolutelyScheduledTiming.class, (InternalEObject)this, 23, 4);
        }
        return this.absolutelyScheduledTimings;
    }

    @Override
    public CanAddressingModeType getCanAddressingMode() {
        return this.canAddressingMode;
    }

    @Override
    public void setCanAddressingMode(CanAddressingModeType newCanAddressingMode) {
        CanAddressingModeType oldCanAddressingMode = this.canAddressingMode;
        this.canAddressingMode = newCanAddressingMode == null ? CAN_ADDRESSING_MODE_EDEFAULT : newCanAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldCanAddressingMode, (Object)this.canAddressingMode, !oldCanAddressingModeESet));
        }
    }

    @Override
    public void unsetCanAddressingMode() {
        CanAddressingModeType oldCanAddressingMode = this.canAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
        this.canAddressingModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldCanAddressingMode, (Object)CAN_ADDRESSING_MODE_EDEFAULT, oldCanAddressingModeESet));
        }
    }

    @Override
    public boolean isSetCanAddressingMode() {
        return this.canAddressingModeESet;
    }

    @Override
    public Integer getIdentifier() {
        return (Integer)this.identifier.basicGetValue();
    }

    @Override
    public void setIdentifier(Integer newIdentifier) {
        Integer oldIdentifier = (Integer)this.identifier.basicGetValue();
        this.identifier.basicSetValue((Object)newIdentifier);
        boolean oldIdentifierESet = this.identifierESet;
        this.identifierESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldIdentifier, (Object)newIdentifier, !oldIdentifierESet));
        }
    }

    @Override
    public void unsetIdentifier() {
        Integer oldIdentifier = (Integer)this.identifier.basicGetValue();
        boolean oldIdentifierESet = this.identifierESet;
        this.identifier = IDENTIFIER_EDEFAULT.clone();
        this.identifierESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldIdentifier, (Object)IDENTIFIER_EDEFAULT, oldIdentifierESet));
        }
    }

    @Override
    public boolean isSetIdentifier() {
        return this.identifierESet;
    }

    @Override
    public RxIdentifierRange getRxIdentifierRange() {
        return this.rxIdentifierRange;
    }

    public NotificationChain basicSetRxIdentifierRange(RxIdentifierRange newRxIdentifierRange, NotificationChain msgs) {
        RxIdentifierRange oldRxIdentifierRange = this.rxIdentifierRange;
        this.rxIdentifierRange = newRxIdentifierRange;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldRxIdentifierRange, (Object)newRxIdentifierRange);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newRxIdentifierRange, (Object)newRxIdentifierRange));
        }
    }

    @Override
    public IntegerDatatype getIdentifierData() {
        return this.identifier.clone();
    }

    @Override
    public void setIdentifierData(IntegerDatatype newIdentifier) {
        this.identifier.setRadix((int)newIdentifier.getRadix());
        this.identifier.setNoOfDigits((int)newIdentifier.getNoOfDigits());
        this.setIdentifier(newIdentifier.getValue());
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                if (this.rxIdentifierRange != null) {
                    msgs = ((InternalEObject)this.rxIdentifierRange).eInverseRemove((InternalEObject)this, -27, null, msgs);
                }
                return this.basicSetRxIdentifierRange((RxIdentifierRange)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getAbsolutelyScheduledTimings()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return this.basicSetRxIdentifierRange(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getAbsolutelyScheduledTimings();
            }
            case 24: {
                return this.getCanAddressingMode();
            }
            case 25: {
                return this.getIdentifier();
            }
            case 26: {
                return this.getRxIdentifierRange();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.getAbsolutelyScheduledTimings().clear();
                this.getAbsolutelyScheduledTimings().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.setCanAddressingMode((CanAddressingModeType)((Object)newValue));
                return;
            }
            case 25: {
                this.setIdentifier((Integer)newValue);
                return;
            }
            case 26: {
                this.setRxIdentifierRange((RxIdentifierRange)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.getAbsolutelyScheduledTimings().clear();
                return;
            }
            case 24: {
                this.unsetCanAddressingMode();
                return;
            }
            case 25: {
                this.unsetIdentifier();
                return;
            }
            case 26: {
                this.setRxIdentifierRange(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.absolutelyScheduledTimings != null && !this.absolutelyScheduledTimings.isEmpty();
            }
            case 24: {
                return this.isSetCanAddressingMode();
            }
            case 25: {
                return this.isSetIdentifier();
            }
            case 26: {
                return this.rxIdentifierRange != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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

