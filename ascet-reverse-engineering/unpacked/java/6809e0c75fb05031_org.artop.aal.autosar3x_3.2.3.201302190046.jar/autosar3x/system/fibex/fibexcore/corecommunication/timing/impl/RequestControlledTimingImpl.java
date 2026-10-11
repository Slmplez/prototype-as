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
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RequestControlledTimingImpl
extends ARObjectImpl
implements RequestControlledTiming {
    protected static final Integer FINAL_REPETITIONS_EDEFAULT = new Integer(0);
    protected Integer finalRepetitions = FINAL_REPETITIONS_EDEFAULT;
    protected boolean finalRepetitionsESet;
    protected TimeRangeType responseTime;

    protected RequestControlledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.REQUEST_CONTROLLED_TIMING;
    }

    public IPduTiming getIPduTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (IPduTiming)this.eContainer();
    }

    public NotificationChain basicSetIPduTiming(IPduTiming newIPduTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIPduTiming, 4, msgs);
        return msgs;
    }

    public void setIPduTiming(IPduTiming newIPduTiming) {
        if (newIPduTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIPduTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIPduTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIPduTiming != null) {
                msgs = ((InternalEObject)newIPduTiming).eInverseAdd((InternalEObject)this, 7, IPduTiming.class, msgs);
            }
            if ((msgs = this.basicSetIPduTiming(newIPduTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIPduTiming, (Object)newIPduTiming));
        }
    }

    public Integer getFinalRepetitions() {
        return this.finalRepetitions;
    }

    public void setFinalRepetitions(Integer newFinalRepetitions) {
        Integer oldFinalRepetitions = this.finalRepetitions;
        this.finalRepetitions = newFinalRepetitions;
        boolean oldFinalRepetitionsESet = this.finalRepetitionsESet;
        this.finalRepetitionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldFinalRepetitions, (Object)this.finalRepetitions, !oldFinalRepetitionsESet));
        }
    }

    public void unsetFinalRepetitions() {
        Integer oldFinalRepetitions = this.finalRepetitions;
        boolean oldFinalRepetitionsESet = this.finalRepetitionsESet;
        this.finalRepetitions = FINAL_REPETITIONS_EDEFAULT;
        this.finalRepetitionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldFinalRepetitions, (Object)FINAL_REPETITIONS_EDEFAULT, oldFinalRepetitionsESet));
        }
    }

    public boolean isSetFinalRepetitions() {
        return this.finalRepetitionsESet;
    }

    public TimeRangeType getResponseTime() {
        return this.responseTime;
    }

    public NotificationChain basicSetResponseTime(TimeRangeType newResponseTime, NotificationChain msgs) {
        TimeRangeType oldResponseTime = this.responseTime;
        this.responseTime = newResponseTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldResponseTime, (Object)newResponseTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setResponseTime(TimeRangeType newResponseTime) {
        if (newResponseTime != this.responseTime) {
            NotificationChain msgs = null;
            if (this.responseTime != null) {
                msgs = ((InternalEObject)this.responseTime).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newResponseTime != null) {
                msgs = ((InternalEObject)newResponseTime).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetResponseTime(newResponseTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newResponseTime, (Object)newResponseTime));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIPduTiming((IPduTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIPduTiming(null, msgs);
            }
            case 6: {
                return this.basicSetResponseTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, IPduTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIPduTiming();
            }
            case 5: {
                return this.getFinalRepetitions();
            }
            case 6: {
                return this.getResponseTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIPduTiming((IPduTiming)newValue);
                return;
            }
            case 5: {
                this.setFinalRepetitions((Integer)newValue);
                return;
            }
            case 6: {
                this.setResponseTime((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIPduTiming(null);
                return;
            }
            case 5: {
                this.unsetFinalRepetitions();
                return;
            }
            case 6: {
                this.setResponseTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIPduTiming() != null;
            }
            case 5: {
                return this.isSetFinalRepetitions();
            }
            case 6: {
                return this.responseTime != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (finalRepetitions: ");
        if (this.finalRepetitionsESet) {
            result.append(this.finalRepetitions);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

