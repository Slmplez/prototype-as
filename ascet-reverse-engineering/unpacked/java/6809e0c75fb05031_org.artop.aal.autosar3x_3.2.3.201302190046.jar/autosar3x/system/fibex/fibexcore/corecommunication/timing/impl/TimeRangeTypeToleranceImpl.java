/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class TimeRangeTypeToleranceImpl
extends ARObjectImpl
implements TimeRangeTypeTolerance {
    protected TimeRangeTypeToleranceImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.TIME_RANGE_TYPE_TOLERANCE;
    }

    public TimeRangeType getTimeRangeType() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TimeRangeType)this.eContainer();
    }

    public NotificationChain basicSetTimeRangeType(TimeRangeType newTimeRangeType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTimeRangeType, 4, msgs);
        return msgs;
    }

    public void setTimeRangeType(TimeRangeType newTimeRangeType) {
        if (newTimeRangeType != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTimeRangeType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTimeRangeType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTimeRangeType != null) {
                msgs = ((InternalEObject)newTimeRangeType).eInverseAdd((InternalEObject)this, 4, TimeRangeType.class, msgs);
            }
            if ((msgs = this.basicSetTimeRangeType(newTimeRangeType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTimeRangeType, (Object)newTimeRangeType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTimeRangeType((TimeRangeType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTimeRangeType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, TimeRangeType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTimeRangeType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTimeRangeType((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTimeRangeType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTimeRangeType() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

