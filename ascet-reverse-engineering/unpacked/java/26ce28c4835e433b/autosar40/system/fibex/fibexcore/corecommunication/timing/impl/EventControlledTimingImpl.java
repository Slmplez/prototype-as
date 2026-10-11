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
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class EventControlledTimingImpl
extends ARObjectImpl
implements EventControlledTiming {
    protected static final IntegerDatatype NUMBER_OF_REPETITIONS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype numberOfRepetitions = NUMBER_OF_REPETITIONS_EDEFAULT.clone();
    protected boolean numberOfRepetitionsESet;
    protected TimeRangeType repetitionPeriod;

    protected EventControlledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.EVENT_CONTROLLED_TIMING;
    }

    public TransmissionModeTiming getTransmissionModeTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TransmissionModeTiming)this.eContainer();
    }

    public NotificationChain basicSetTransmissionModeTiming(TransmissionModeTiming newTransmissionModeTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTransmissionModeTiming, 4, msgs);
        return msgs;
    }

    public void setTransmissionModeTiming(TransmissionModeTiming newTransmissionModeTiming) {
        if (newTransmissionModeTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTransmissionModeTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTransmissionModeTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTransmissionModeTiming != null) {
                msgs = ((InternalEObject)newTransmissionModeTiming).eInverseAdd((InternalEObject)this, 5, TransmissionModeTiming.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeTiming(newTransmissionModeTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTransmissionModeTiming, (Object)newTransmissionModeTiming));
        }
    }

    public Integer getNumberOfRepetitions() {
        return (Integer)this.numberOfRepetitions.basicGetValue();
    }

    public void setNumberOfRepetitions(Integer newNumberOfRepetitions) {
        Integer oldNumberOfRepetitions = (Integer)this.numberOfRepetitions.basicGetValue();
        this.numberOfRepetitions.basicSetValue((Object)newNumberOfRepetitions);
        boolean oldNumberOfRepetitionsESet = this.numberOfRepetitionsESet;
        this.numberOfRepetitionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNumberOfRepetitions, (Object)newNumberOfRepetitions, !oldNumberOfRepetitionsESet));
        }
    }

    public void unsetNumberOfRepetitions() {
        Integer oldNumberOfRepetitions = (Integer)this.numberOfRepetitions.basicGetValue();
        boolean oldNumberOfRepetitionsESet = this.numberOfRepetitionsESet;
        this.numberOfRepetitions = NUMBER_OF_REPETITIONS_EDEFAULT.clone();
        this.numberOfRepetitionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNumberOfRepetitions, (Object)NUMBER_OF_REPETITIONS_EDEFAULT, oldNumberOfRepetitionsESet));
        }
    }

    public boolean isSetNumberOfRepetitions() {
        return this.numberOfRepetitionsESet;
    }

    public TimeRangeType getRepetitionPeriod() {
        return this.repetitionPeriod;
    }

    public NotificationChain basicSetRepetitionPeriod(TimeRangeType newRepetitionPeriod, NotificationChain msgs) {
        TimeRangeType oldRepetitionPeriod = this.repetitionPeriod;
        this.repetitionPeriod = newRepetitionPeriod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRepetitionPeriod, (Object)newRepetitionPeriod);
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
                msgs = ((InternalEObject)this.repetitionPeriod).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newRepetitionPeriod != null) {
                msgs = ((InternalEObject)newRepetitionPeriod).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetRepetitionPeriod(newRepetitionPeriod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newRepetitionPeriod, (Object)newRepetitionPeriod));
        }
    }

    public IntegerDatatype getNumberOfRepetitionsData() {
        return this.numberOfRepetitions.clone();
    }

    public void setNumberOfRepetitionsData(IntegerDatatype newNumberOfRepetitions) {
        this.numberOfRepetitions.setRadix((int)newNumberOfRepetitions.getRadix());
        this.numberOfRepetitions.setNoOfDigits((int)newNumberOfRepetitions.getNoOfDigits());
        this.setNumberOfRepetitions(newNumberOfRepetitions.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTransmissionModeTiming((TransmissionModeTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTransmissionModeTiming(null, msgs);
            }
            case 6: {
                return this.basicSetRepetitionPeriod(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, TransmissionModeTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeTiming();
            }
            case 5: {
                return this.getNumberOfRepetitions();
            }
            case 6: {
                return this.getRepetitionPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeTiming((TransmissionModeTiming)newValue);
                return;
            }
            case 5: {
                this.setNumberOfRepetitions((Integer)newValue);
                return;
            }
            case 6: {
                this.setRepetitionPeriod((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeTiming(null);
                return;
            }
            case 5: {
                this.unsetNumberOfRepetitions();
                return;
            }
            case 6: {
                this.setRepetitionPeriod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeTiming() != null;
            }
            case 5: {
                return this.isSetNumberOfRepetitions();
            }
            case 6: {
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
        result.append(" (numberOfRepetitions: ");
        if (this.numberOfRepetitionsESet) {
            result.append(this.numberOfRepetitions);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

