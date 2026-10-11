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
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TimeRangeTypeImpl
extends ARObjectImpl
implements TimeRangeType {
    protected TimeRangeTypeTolerance tolerance;
    protected static final Double VALUE_EDEFAULT = new Double(0.0);
    protected Double value = VALUE_EDEFAULT;
    protected boolean valueESet;

    protected TimeRangeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.TIME_RANGE_TYPE;
    }

    public TimeRangeTypeTolerance getTolerance() {
        return this.tolerance;
    }

    public NotificationChain basicSetTolerance(TimeRangeTypeTolerance newTolerance, NotificationChain msgs) {
        TimeRangeTypeTolerance oldTolerance = this.tolerance;
        this.tolerance = newTolerance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldTolerance, (Object)newTolerance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTolerance(TimeRangeTypeTolerance newTolerance) {
        if (newTolerance != this.tolerance) {
            NotificationChain msgs = null;
            if (this.tolerance != null) {
                msgs = ((InternalEObject)this.tolerance).eInverseRemove((InternalEObject)this, 4, TimeRangeTypeTolerance.class, msgs);
            }
            if (newTolerance != null) {
                msgs = ((InternalEObject)newTolerance).eInverseAdd((InternalEObject)this, 4, TimeRangeTypeTolerance.class, msgs);
            }
            if ((msgs = this.basicSetTolerance(newTolerance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTolerance, (Object)newTolerance));
        }
    }

    public Double getValue() {
        return this.value;
    }

    public void setValue(Double newValue) {
        Double oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        Double oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.tolerance != null) {
                    msgs = ((InternalEObject)this.tolerance).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetTolerance((TimeRangeTypeTolerance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTolerance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTolerance();
            }
            case 5: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTolerance((TimeRangeTypeTolerance)newValue);
                return;
            }
            case 5: {
                this.setValue((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTolerance(null);
                return;
            }
            case 5: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.tolerance != null;
            }
            case 5: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

