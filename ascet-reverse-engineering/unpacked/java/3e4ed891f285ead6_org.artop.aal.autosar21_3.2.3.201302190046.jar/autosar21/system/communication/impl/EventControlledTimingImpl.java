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
package autosar21.system.communication.impl;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.EventControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.impl.TimingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EventControlledTimingImpl
extends TimingImpl
implements EventControlledTiming {
    protected ActiveCondition activeCondition;
    protected static final Double DEBOUNCE_TIME_EDEFAULT = new Double(0.0);
    protected Double debounceTime = DEBOUNCE_TIME_EDEFAULT;
    protected boolean debounceTimeESet;
    protected static final Integer NUMBER_OF_REPEATS_EDEFAULT = new Integer(0);
    protected Integer numberOfRepeats = NUMBER_OF_REPEATS_EDEFAULT;
    protected boolean numberOfRepeatsESet;
    protected static final Double REPEAT_CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double repeatCycleTime = REPEAT_CYCLE_TIME_EDEFAULT;
    protected boolean repeatCycleTimeESet;
    protected SendCondition sendCondition;

    protected EventControlledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.EVENT_CONTROLLED_TIMING;
    }

    public ActiveCondition getActiveCondition() {
        return this.activeCondition;
    }

    public NotificationChain basicSetActiveCondition(ActiveCondition newActiveCondition, NotificationChain msgs) {
        ActiveCondition oldActiveCondition = this.activeCondition;
        this.activeCondition = newActiveCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldActiveCondition, (Object)newActiveCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setActiveCondition(ActiveCondition newActiveCondition) {
        if (newActiveCondition != this.activeCondition) {
            NotificationChain msgs = null;
            if (this.activeCondition != null) {
                msgs = ((InternalEObject)this.activeCondition).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newActiveCondition != null) {
                msgs = ((InternalEObject)newActiveCondition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetActiveCondition(newActiveCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newActiveCondition, (Object)newActiveCondition));
        }
    }

    public Double getDebounceTime() {
        return this.debounceTime;
    }

    public void setDebounceTime(Double newDebounceTime) {
        Double oldDebounceTime = this.debounceTime;
        this.debounceTime = newDebounceTime;
        boolean oldDebounceTimeESet = this.debounceTimeESet;
        this.debounceTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldDebounceTime, (Object)this.debounceTime, !oldDebounceTimeESet));
        }
    }

    public void unsetDebounceTime() {
        Double oldDebounceTime = this.debounceTime;
        boolean oldDebounceTimeESet = this.debounceTimeESet;
        this.debounceTime = DEBOUNCE_TIME_EDEFAULT;
        this.debounceTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldDebounceTime, (Object)DEBOUNCE_TIME_EDEFAULT, oldDebounceTimeESet));
        }
    }

    public boolean isSetDebounceTime() {
        return this.debounceTimeESet;
    }

    public Integer getNumberOfRepeats() {
        return this.numberOfRepeats;
    }

    public void setNumberOfRepeats(Integer newNumberOfRepeats) {
        Integer oldNumberOfRepeats = this.numberOfRepeats;
        this.numberOfRepeats = newNumberOfRepeats;
        boolean oldNumberOfRepeatsESet = this.numberOfRepeatsESet;
        this.numberOfRepeatsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldNumberOfRepeats, (Object)this.numberOfRepeats, !oldNumberOfRepeatsESet));
        }
    }

    public void unsetNumberOfRepeats() {
        Integer oldNumberOfRepeats = this.numberOfRepeats;
        boolean oldNumberOfRepeatsESet = this.numberOfRepeatsESet;
        this.numberOfRepeats = NUMBER_OF_REPEATS_EDEFAULT;
        this.numberOfRepeatsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldNumberOfRepeats, (Object)NUMBER_OF_REPEATS_EDEFAULT, oldNumberOfRepeatsESet));
        }
    }

    public boolean isSetNumberOfRepeats() {
        return this.numberOfRepeatsESet;
    }

    public Double getRepeatCycleTime() {
        return this.repeatCycleTime;
    }

    public void setRepeatCycleTime(Double newRepeatCycleTime) {
        Double oldRepeatCycleTime = this.repeatCycleTime;
        this.repeatCycleTime = newRepeatCycleTime;
        boolean oldRepeatCycleTimeESet = this.repeatCycleTimeESet;
        this.repeatCycleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldRepeatCycleTime, (Object)this.repeatCycleTime, !oldRepeatCycleTimeESet));
        }
    }

    public void unsetRepeatCycleTime() {
        Double oldRepeatCycleTime = this.repeatCycleTime;
        boolean oldRepeatCycleTimeESet = this.repeatCycleTimeESet;
        this.repeatCycleTime = REPEAT_CYCLE_TIME_EDEFAULT;
        this.repeatCycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldRepeatCycleTime, (Object)REPEAT_CYCLE_TIME_EDEFAULT, oldRepeatCycleTimeESet));
        }
    }

    public boolean isSetRepeatCycleTime() {
        return this.repeatCycleTimeESet;
    }

    public SendCondition getSendCondition() {
        return this.sendCondition;
    }

    public NotificationChain basicSetSendCondition(SendCondition newSendCondition, NotificationChain msgs) {
        SendCondition oldSendCondition = this.sendCondition;
        this.sendCondition = newSendCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSendCondition, (Object)newSendCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSendCondition(SendCondition newSendCondition) {
        if (newSendCondition != this.sendCondition) {
            NotificationChain msgs = null;
            if (this.sendCondition != null) {
                msgs = ((InternalEObject)this.sendCondition).eInverseRemove((InternalEObject)this, 4, SendCondition.class, msgs);
            }
            if (newSendCondition != null) {
                msgs = ((InternalEObject)newSendCondition).eInverseAdd((InternalEObject)this, 4, SendCondition.class, msgs);
            }
            if ((msgs = this.basicSetSendCondition(newSendCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSendCondition, (Object)newSendCondition));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                if (this.sendCondition != null) {
                    msgs = ((InternalEObject)this.sendCondition).eInverseRemove((InternalEObject)this, -10, null, msgs);
                }
                return this.basicSetSendCondition((SendCondition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetActiveCondition(null, msgs);
            }
            case 9: {
                return this.basicSetSendCondition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getActiveCondition();
            }
            case 6: {
                return this.getDebounceTime();
            }
            case 7: {
                return this.getNumberOfRepeats();
            }
            case 8: {
                return this.getRepeatCycleTime();
            }
            case 9: {
                return this.getSendCondition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition((ActiveCondition)newValue);
                return;
            }
            case 6: {
                this.setDebounceTime((Double)newValue);
                return;
            }
            case 7: {
                this.setNumberOfRepeats((Integer)newValue);
                return;
            }
            case 8: {
                this.setRepeatCycleTime((Double)newValue);
                return;
            }
            case 9: {
                this.setSendCondition((SendCondition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition(null);
                return;
            }
            case 6: {
                this.unsetDebounceTime();
                return;
            }
            case 7: {
                this.unsetNumberOfRepeats();
                return;
            }
            case 8: {
                this.unsetRepeatCycleTime();
                return;
            }
            case 9: {
                this.setSendCondition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.activeCondition != null;
            }
            case 6: {
                return this.isSetDebounceTime();
            }
            case 7: {
                return this.isSetNumberOfRepeats();
            }
            case 8: {
                return this.isSetRepeatCycleTime();
            }
            case 9: {
                return this.sendCondition != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (debounceTime: ");
        if (this.debounceTimeESet) {
            result.append(this.debounceTime);
        } else {
            result.append("<unset>");
        }
        result.append(", numberOfRepeats: ");
        if (this.numberOfRepeatsESet) {
            result.append(this.numberOfRepeats);
        } else {
            result.append("<unset>");
        }
        result.append(", repeatCycleTime: ");
        if (this.repeatCycleTimeESet) {
            result.append(this.repeatCycleTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

