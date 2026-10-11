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
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class EventControlledTimingImpl
extends ARObjectImpl
implements EventControlledTiming {
    protected static final Integer NUMBER_OF_REPEATS_EDEFAULT = new Integer(0);
    protected Integer numberOfRepeats = NUMBER_OF_REPEATS_EDEFAULT;
    protected boolean numberOfRepeatsESet;
    protected TimeRangeType repetitionPeriod;

    protected EventControlledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.EVENT_CONTROLLED_TIMING;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldNumberOfRepeats, (Object)this.numberOfRepeats, !oldNumberOfRepeatsESet));
        }
    }

    public void unsetNumberOfRepeats() {
        Integer oldNumberOfRepeats = this.numberOfRepeats;
        boolean oldNumberOfRepeatsESet = this.numberOfRepeatsESet;
        this.numberOfRepeats = NUMBER_OF_REPEATS_EDEFAULT;
        this.numberOfRepeatsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldNumberOfRepeats, (Object)NUMBER_OF_REPEATS_EDEFAULT, oldNumberOfRepeatsESet));
        }
    }

    public boolean isSetNumberOfRepeats() {
        return this.numberOfRepeatsESet;
    }

    public TimeRangeType getRepetitionPeriod() {
        return this.repetitionPeriod;
    }

    public NotificationChain basicSetRepetitionPeriod(TimeRangeType newRepetitionPeriod, NotificationChain msgs) {
        TimeRangeType oldRepetitionPeriod = this.repetitionPeriod;
        this.repetitionPeriod = newRepetitionPeriod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRepetitionPeriod, (Object)newRepetitionPeriod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRepetitionPeriod(TimeRangeType newRepetitionPeriod) {
        if (newRepetitionPeriod != this.repetitionPeriod) {
            NotificationChain msgs = null;
            if (this.repetitionPeriod != null) {
                msgs = ((InternalEObject)this.repetitionPeriod).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newRepetitionPeriod != null) {
                msgs = ((InternalEObject)newRepetitionPeriod).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetRepetitionPeriod(newRepetitionPeriod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newRepetitionPeriod, (Object)newRepetitionPeriod));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetRepetitionPeriod(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getNumberOfRepeats();
            }
            case 5: {
                return this.getRepetitionPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setNumberOfRepeats((Integer)newValue);
                return;
            }
            case 5: {
                this.setRepetitionPeriod((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetNumberOfRepeats();
                return;
            }
            case 5: {
                this.setRepetitionPeriod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetNumberOfRepeats();
            }
            case 5: {
                return this.repetitionPeriod != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (numberOfRepeats: ");
        if (this.numberOfRepeatsESet) {
            result.append(this.numberOfRepeats);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

