/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.BurstPatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventTriggeringConstraintImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BurstPatternEventTriggeringImpl
extends EventTriggeringConstraintImpl
implements BurstPatternEventTriggering {
    protected static final PositiveIntegerDatatype MAX_NUMBER_OF_OCCURRENCES_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype maxNumberOfOccurrences = MAX_NUMBER_OF_OCCURRENCES_EDEFAULT.clone();
    protected boolean maxNumberOfOccurrencesESet;
    protected MultidimensionalTime minimumInterArrivalTime;
    protected MultidimensionalTime patternJitter;
    protected MultidimensionalTime patternLength;
    protected MultidimensionalTime patternPeriod;
    protected static final PositiveIntegerDatatype MIN_NUMBER_OF_OCCURRENCES_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype minNumberOfOccurrences = MIN_NUMBER_OF_OCCURRENCES_EDEFAULT.clone();
    protected boolean minNumberOfOccurrencesESet;

    protected BurstPatternEventTriggeringImpl() {
    }

    protected EClass eStaticClass() {
        return EventtriggeringconstraintPackage.Literals.BURST_PATTERN_EVENT_TRIGGERING;
    }

    public Long getMaxNumberOfOccurrences() {
        return (Long)this.maxNumberOfOccurrences.basicGetValue();
    }

    public void setMaxNumberOfOccurrences(Long newMaxNumberOfOccurrences) {
        Long oldMaxNumberOfOccurrences = (Long)this.maxNumberOfOccurrences.basicGetValue();
        this.maxNumberOfOccurrences.basicSetValue((Object)newMaxNumberOfOccurrences);
        boolean oldMaxNumberOfOccurrencesESet = this.maxNumberOfOccurrencesESet;
        this.maxNumberOfOccurrencesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxNumberOfOccurrences, (Object)newMaxNumberOfOccurrences, !oldMaxNumberOfOccurrencesESet));
        }
    }

    public void unsetMaxNumberOfOccurrences() {
        Long oldMaxNumberOfOccurrences = (Long)this.maxNumberOfOccurrences.basicGetValue();
        boolean oldMaxNumberOfOccurrencesESet = this.maxNumberOfOccurrencesESet;
        this.maxNumberOfOccurrences = MAX_NUMBER_OF_OCCURRENCES_EDEFAULT.clone();
        this.maxNumberOfOccurrencesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxNumberOfOccurrences, (Object)MAX_NUMBER_OF_OCCURRENCES_EDEFAULT, oldMaxNumberOfOccurrencesESet));
        }
    }

    public boolean isSetMaxNumberOfOccurrences() {
        return this.maxNumberOfOccurrencesESet;
    }

    public MultidimensionalTime getMinimumInterArrivalTime() {
        return this.minimumInterArrivalTime;
    }

    public NotificationChain basicSetMinimumInterArrivalTime(MultidimensionalTime newMinimumInterArrivalTime, NotificationChain msgs) {
        MultidimensionalTime oldMinimumInterArrivalTime = this.minimumInterArrivalTime;
        this.minimumInterArrivalTime = newMinimumInterArrivalTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMinimumInterArrivalTime, (Object)newMinimumInterArrivalTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMinimumInterArrivalTime(MultidimensionalTime newMinimumInterArrivalTime) {
        if (newMinimumInterArrivalTime != this.minimumInterArrivalTime) {
            NotificationChain msgs = null;
            if (this.minimumInterArrivalTime != null) {
                msgs = ((InternalEObject)this.minimumInterArrivalTime).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newMinimumInterArrivalTime != null) {
                msgs = ((InternalEObject)newMinimumInterArrivalTime).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetMinimumInterArrivalTime(newMinimumInterArrivalTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newMinimumInterArrivalTime, (Object)newMinimumInterArrivalTime));
        }
    }

    public MultidimensionalTime getPatternJitter() {
        return this.patternJitter;
    }

    public NotificationChain basicSetPatternJitter(MultidimensionalTime newPatternJitter, NotificationChain msgs) {
        MultidimensionalTime oldPatternJitter = this.patternJitter;
        this.patternJitter = newPatternJitter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPatternJitter, (Object)newPatternJitter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPatternJitter(MultidimensionalTime newPatternJitter) {
        if (newPatternJitter != this.patternJitter) {
            NotificationChain msgs = null;
            if (this.patternJitter != null) {
                msgs = ((InternalEObject)this.patternJitter).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newPatternJitter != null) {
                msgs = ((InternalEObject)newPatternJitter).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetPatternJitter(newPatternJitter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newPatternJitter, (Object)newPatternJitter));
        }
    }

    public MultidimensionalTime getPatternLength() {
        return this.patternLength;
    }

    public NotificationChain basicSetPatternLength(MultidimensionalTime newPatternLength, NotificationChain msgs) {
        MultidimensionalTime oldPatternLength = this.patternLength;
        this.patternLength = newPatternLength;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPatternLength, (Object)newPatternLength);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPatternLength(MultidimensionalTime newPatternLength) {
        if (newPatternLength != this.patternLength) {
            NotificationChain msgs = null;
            if (this.patternLength != null) {
                msgs = ((InternalEObject)this.patternLength).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newPatternLength != null) {
                msgs = ((InternalEObject)newPatternLength).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetPatternLength(newPatternLength, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newPatternLength, (Object)newPatternLength));
        }
    }

    public MultidimensionalTime getPatternPeriod() {
        return this.patternPeriod;
    }

    public NotificationChain basicSetPatternPeriod(MultidimensionalTime newPatternPeriod, NotificationChain msgs) {
        MultidimensionalTime oldPatternPeriod = this.patternPeriod;
        this.patternPeriod = newPatternPeriod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldPatternPeriod, (Object)newPatternPeriod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPatternPeriod(MultidimensionalTime newPatternPeriod) {
        if (newPatternPeriod != this.patternPeriod) {
            NotificationChain msgs = null;
            if (this.patternPeriod != null) {
                msgs = ((InternalEObject)this.patternPeriod).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newPatternPeriod != null) {
                msgs = ((InternalEObject)newPatternPeriod).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetPatternPeriod(newPatternPeriod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newPatternPeriod, (Object)newPatternPeriod));
        }
    }

    public Long getMinNumberOfOccurrences() {
        return (Long)this.minNumberOfOccurrences.basicGetValue();
    }

    public void setMinNumberOfOccurrences(Long newMinNumberOfOccurrences) {
        Long oldMinNumberOfOccurrences = (Long)this.minNumberOfOccurrences.basicGetValue();
        this.minNumberOfOccurrences.basicSetValue((Object)newMinNumberOfOccurrences);
        boolean oldMinNumberOfOccurrencesESet = this.minNumberOfOccurrencesESet;
        this.minNumberOfOccurrencesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldMinNumberOfOccurrences, (Object)newMinNumberOfOccurrences, !oldMinNumberOfOccurrencesESet));
        }
    }

    public void unsetMinNumberOfOccurrences() {
        Long oldMinNumberOfOccurrences = (Long)this.minNumberOfOccurrences.basicGetValue();
        boolean oldMinNumberOfOccurrencesESet = this.minNumberOfOccurrencesESet;
        this.minNumberOfOccurrences = MIN_NUMBER_OF_OCCURRENCES_EDEFAULT.clone();
        this.minNumberOfOccurrencesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldMinNumberOfOccurrences, (Object)MIN_NUMBER_OF_OCCURRENCES_EDEFAULT, oldMinNumberOfOccurrencesESet));
        }
    }

    public boolean isSetMinNumberOfOccurrences() {
        return this.minNumberOfOccurrencesESet;
    }

    public PositiveIntegerDatatype getMinNumberOfOccurrencesData() {
        return this.minNumberOfOccurrences.clone();
    }

    public void setMinNumberOfOccurrencesData(PositiveIntegerDatatype newMinNumberOfOccurrences) {
        this.minNumberOfOccurrences.setRadix((int)newMinNumberOfOccurrences.getRadix());
        this.minNumberOfOccurrences.setNoOfDigits((int)newMinNumberOfOccurrences.getNoOfDigits());
        this.setMinNumberOfOccurrences(newMinNumberOfOccurrences.getValue());
    }

    public PositiveIntegerDatatype getMaxNumberOfOccurrencesData() {
        return this.maxNumberOfOccurrences.clone();
    }

    public void setMaxNumberOfOccurrencesData(PositiveIntegerDatatype newMaxNumberOfOccurrences) {
        this.maxNumberOfOccurrences.setRadix((int)newMaxNumberOfOccurrences.getRadix());
        this.maxNumberOfOccurrences.setNoOfDigits((int)newMaxNumberOfOccurrences.getNoOfDigits());
        this.setMaxNumberOfOccurrences(newMaxNumberOfOccurrences.getValue());
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetMinimumInterArrivalTime(null, msgs);
            }
            case 23: {
                return this.basicSetPatternJitter(null, msgs);
            }
            case 24: {
                return this.basicSetPatternLength(null, msgs);
            }
            case 25: {
                return this.basicSetPatternPeriod(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getMaxNumberOfOccurrences();
            }
            case 22: {
                return this.getMinimumInterArrivalTime();
            }
            case 23: {
                return this.getPatternJitter();
            }
            case 24: {
                return this.getPatternLength();
            }
            case 25: {
                return this.getPatternPeriod();
            }
            case 26: {
                return this.getMinNumberOfOccurrences();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setMaxNumberOfOccurrences((Long)newValue);
                return;
            }
            case 22: {
                this.setMinimumInterArrivalTime((MultidimensionalTime)newValue);
                return;
            }
            case 23: {
                this.setPatternJitter((MultidimensionalTime)newValue);
                return;
            }
            case 24: {
                this.setPatternLength((MultidimensionalTime)newValue);
                return;
            }
            case 25: {
                this.setPatternPeriod((MultidimensionalTime)newValue);
                return;
            }
            case 26: {
                this.setMinNumberOfOccurrences((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetMaxNumberOfOccurrences();
                return;
            }
            case 22: {
                this.setMinimumInterArrivalTime(null);
                return;
            }
            case 23: {
                this.setPatternJitter(null);
                return;
            }
            case 24: {
                this.setPatternLength(null);
                return;
            }
            case 25: {
                this.setPatternPeriod(null);
                return;
            }
            case 26: {
                this.unsetMinNumberOfOccurrences();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetMaxNumberOfOccurrences();
            }
            case 22: {
                return this.minimumInterArrivalTime != null;
            }
            case 23: {
                return this.patternJitter != null;
            }
            case 24: {
                return this.patternLength != null;
            }
            case 25: {
                return this.patternPeriod != null;
            }
            case 26: {
                return this.isSetMinNumberOfOccurrences();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxNumberOfOccurrences: ");
        if (this.maxNumberOfOccurrencesESet) {
            result.append(this.maxNumberOfOccurrences);
        } else {
            result.append("<unset>");
        }
        result.append(", minNumberOfOccurrences: ");
        if (this.minNumberOfOccurrencesESet) {
            result.append(this.minNumberOfOccurrences);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

