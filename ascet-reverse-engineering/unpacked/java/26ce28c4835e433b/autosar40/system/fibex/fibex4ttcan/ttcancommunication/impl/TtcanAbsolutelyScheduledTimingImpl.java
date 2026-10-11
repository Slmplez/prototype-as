/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4ttcan.ttcancommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanTriggerType;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TtcanAbsolutelyScheduledTimingImpl
extends ARObjectImpl
implements TtcanAbsolutelyScheduledTiming {
    protected CommunicationCycle communicationCycle;
    protected static final IntegerDatatype TIME_MARK_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype timeMark = TIME_MARK_EDEFAULT.clone();
    protected boolean timeMarkESet;
    protected static final TtcanTriggerType TRIGGER_EDEFAULT = TtcanTriggerType.RX_TRIGGER;
    protected TtcanTriggerType trigger = TRIGGER_EDEFAULT;
    protected boolean triggerESet;

    protected TtcanAbsolutelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TtcancommunicationPackage.Literals.TTCAN_ABSOLUTELY_SCHEDULED_TIMING;
    }

    public CanFrameTriggering getCanFrameTriggering() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanFrameTriggering)this.eContainer();
    }

    public NotificationChain basicSetCanFrameTriggering(CanFrameTriggering newCanFrameTriggering, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanFrameTriggering, 4, msgs);
        return msgs;
    }

    public void setCanFrameTriggering(CanFrameTriggering newCanFrameTriggering) {
        if (newCanFrameTriggering != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanFrameTriggering != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanFrameTriggering)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanFrameTriggering != null) {
                msgs = ((InternalEObject)newCanFrameTriggering).eInverseAdd((InternalEObject)this, 23, CanFrameTriggering.class, msgs);
            }
            if ((msgs = this.basicSetCanFrameTriggering(newCanFrameTriggering, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanFrameTriggering, (Object)newCanFrameTriggering));
        }
    }

    public CommunicationCycle getCommunicationCycle() {
        return this.communicationCycle;
    }

    public NotificationChain basicSetCommunicationCycle(CommunicationCycle newCommunicationCycle, NotificationChain msgs) {
        CommunicationCycle oldCommunicationCycle = this.communicationCycle;
        this.communicationCycle = newCommunicationCycle;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationCycle, (Object)newCommunicationCycle);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCommunicationCycle(CommunicationCycle newCommunicationCycle) {
        if (newCommunicationCycle != this.communicationCycle) {
            NotificationChain msgs = null;
            if (this.communicationCycle != null) {
                msgs = ((InternalEObject)this.communicationCycle).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newCommunicationCycle != null) {
                msgs = ((InternalEObject)newCommunicationCycle).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetCommunicationCycle(newCommunicationCycle, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCommunicationCycle, (Object)newCommunicationCycle));
        }
    }

    public Integer getTimeMark() {
        return (Integer)this.timeMark.basicGetValue();
    }

    public void setTimeMark(Integer newTimeMark) {
        Integer oldTimeMark = (Integer)this.timeMark.basicGetValue();
        this.timeMark.basicSetValue((Object)newTimeMark);
        boolean oldTimeMarkESet = this.timeMarkESet;
        this.timeMarkESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTimeMark, (Object)newTimeMark, !oldTimeMarkESet));
        }
    }

    public void unsetTimeMark() {
        Integer oldTimeMark = (Integer)this.timeMark.basicGetValue();
        boolean oldTimeMarkESet = this.timeMarkESet;
        this.timeMark = TIME_MARK_EDEFAULT.clone();
        this.timeMarkESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTimeMark, (Object)TIME_MARK_EDEFAULT, oldTimeMarkESet));
        }
    }

    public boolean isSetTimeMark() {
        return this.timeMarkESet;
    }

    public TtcanTriggerType getTrigger() {
        return this.trigger;
    }

    public void setTrigger(TtcanTriggerType newTrigger) {
        TtcanTriggerType oldTrigger = this.trigger;
        this.trigger = newTrigger == null ? TRIGGER_EDEFAULT : newTrigger;
        boolean oldTriggerESet = this.triggerESet;
        this.triggerESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldTrigger, (Object)this.trigger, !oldTriggerESet));
        }
    }

    public void unsetTrigger() {
        TtcanTriggerType oldTrigger = this.trigger;
        boolean oldTriggerESet = this.triggerESet;
        this.trigger = TRIGGER_EDEFAULT;
        this.triggerESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldTrigger, (Object)TRIGGER_EDEFAULT, oldTriggerESet));
        }
    }

    public boolean isSetTrigger() {
        return this.triggerESet;
    }

    public IntegerDatatype getTimeMarkData() {
        return this.timeMark.clone();
    }

    public void setTimeMarkData(IntegerDatatype newTimeMark) {
        this.timeMark.setRadix((int)newTimeMark.getRadix());
        this.timeMark.setNoOfDigits((int)newTimeMark.getNoOfDigits());
        this.setTimeMark(newTimeMark.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanFrameTriggering((CanFrameTriggering)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanFrameTriggering(null, msgs);
            }
            case 5: {
                return this.basicSetCommunicationCycle(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, CanFrameTriggering.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanFrameTriggering();
            }
            case 5: {
                return this.getCommunicationCycle();
            }
            case 6: {
                return this.getTimeMark();
            }
            case 7: {
                return this.getTrigger();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanFrameTriggering((CanFrameTriggering)newValue);
                return;
            }
            case 5: {
                this.setCommunicationCycle((CommunicationCycle)newValue);
                return;
            }
            case 6: {
                this.setTimeMark((Integer)newValue);
                return;
            }
            case 7: {
                this.setTrigger((TtcanTriggerType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanFrameTriggering(null);
                return;
            }
            case 5: {
                this.setCommunicationCycle(null);
                return;
            }
            case 6: {
                this.unsetTimeMark();
                return;
            }
            case 7: {
                this.unsetTrigger();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanFrameTriggering() != null;
            }
            case 5: {
                return this.communicationCycle != null;
            }
            case 6: {
                return this.isSetTimeMark();
            }
            case 7: {
                return this.isSetTrigger();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeMark: ");
        if (this.timeMarkESet) {
            result.append(this.timeMark);
        } else {
            result.append("<unset>");
        }
        result.append(", trigger: ");
        if (this.triggerESet) {
            result.append((Object)this.trigger);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

