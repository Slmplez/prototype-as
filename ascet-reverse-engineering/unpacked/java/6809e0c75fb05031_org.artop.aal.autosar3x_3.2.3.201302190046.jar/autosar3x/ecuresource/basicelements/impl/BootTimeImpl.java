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
package autosar3x.ecuresource.basicelements.impl;

import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class BootTimeImpl
extends ARObjectImpl
implements BootTime {
    protected static final Double COLD_START_TIME_EDEFAULT = new Double(0.0);
    protected Double coldStartTime = COLD_START_TIME_EDEFAULT;
    protected boolean coldStartTimeESet;
    protected static final Double RESET_TIME_EDEFAULT = new Double(0.0);
    protected Double resetTime = RESET_TIME_EDEFAULT;
    protected boolean resetTimeESet;

    protected BootTimeImpl() {
    }

    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.BOOT_TIME;
    }

    public ProcessingUnit getProcessingUnit() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ProcessingUnit)this.eContainer();
    }

    public NotificationChain basicSetProcessingUnit(ProcessingUnit newProcessingUnit, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newProcessingUnit, 4, msgs);
        return msgs;
    }

    public void setProcessingUnit(ProcessingUnit newProcessingUnit) {
        if (newProcessingUnit != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newProcessingUnit != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newProcessingUnit)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newProcessingUnit != null) {
                msgs = ((InternalEObject)newProcessingUnit).eInverseAdd((InternalEObject)this, 30, ProcessingUnit.class, msgs);
            }
            if ((msgs = this.basicSetProcessingUnit(newProcessingUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newProcessingUnit, (Object)newProcessingUnit));
        }
    }

    public Double getColdStartTime() {
        return this.coldStartTime;
    }

    public void setColdStartTime(Double newColdStartTime) {
        Double oldColdStartTime = this.coldStartTime;
        this.coldStartTime = newColdStartTime;
        boolean oldColdStartTimeESet = this.coldStartTimeESet;
        this.coldStartTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldColdStartTime, (Object)this.coldStartTime, !oldColdStartTimeESet));
        }
    }

    public void unsetColdStartTime() {
        Double oldColdStartTime = this.coldStartTime;
        boolean oldColdStartTimeESet = this.coldStartTimeESet;
        this.coldStartTime = COLD_START_TIME_EDEFAULT;
        this.coldStartTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldColdStartTime, (Object)COLD_START_TIME_EDEFAULT, oldColdStartTimeESet));
        }
    }

    public boolean isSetColdStartTime() {
        return this.coldStartTimeESet;
    }

    public Double getResetTime() {
        return this.resetTime;
    }

    public void setResetTime(Double newResetTime) {
        Double oldResetTime = this.resetTime;
        this.resetTime = newResetTime;
        boolean oldResetTimeESet = this.resetTimeESet;
        this.resetTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldResetTime, (Object)this.resetTime, !oldResetTimeESet));
        }
    }

    public void unsetResetTime() {
        Double oldResetTime = this.resetTime;
        boolean oldResetTimeESet = this.resetTimeESet;
        this.resetTime = RESET_TIME_EDEFAULT;
        this.resetTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldResetTime, (Object)RESET_TIME_EDEFAULT, oldResetTimeESet));
        }
    }

    public boolean isSetResetTime() {
        return this.resetTimeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetProcessingUnit((ProcessingUnit)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetProcessingUnit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, ProcessingUnit.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit();
            }
            case 5: {
                return this.getColdStartTime();
            }
            case 6: {
                return this.getResetTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit((ProcessingUnit)newValue);
                return;
            }
            case 5: {
                this.setColdStartTime((Double)newValue);
                return;
            }
            case 6: {
                this.setResetTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit(null);
                return;
            }
            case 5: {
                this.unsetColdStartTime();
                return;
            }
            case 6: {
                this.unsetResetTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit() != null;
            }
            case 5: {
                return this.isSetColdStartTime();
            }
            case 6: {
                return this.isSetResetTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (coldStartTime: ");
        if (this.coldStartTimeESet) {
            result.append(this.coldStartTime);
        } else {
            result.append("<unset>");
        }
        result.append(", resetTime: ");
        if (this.resetTimeESet) {
            result.append(this.resetTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

