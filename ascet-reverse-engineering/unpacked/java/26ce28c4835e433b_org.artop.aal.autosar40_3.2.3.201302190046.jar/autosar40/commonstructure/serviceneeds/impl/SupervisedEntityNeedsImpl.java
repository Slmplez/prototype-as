/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.SupervisedEntityNeeds;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SupervisedEntityNeedsImpl
extends ServiceNeedsImpl
implements SupervisedEntityNeeds {
    protected static final Boolean ACTIVATE_AT_START_EDEFAULT = Boolean.FALSE;
    protected Boolean activateAtStart = ACTIVATE_AT_START_EDEFAULT;
    protected boolean activateAtStartESet;
    protected static final Boolean ENABLE_DEACTIVATION_EDEFAULT = Boolean.FALSE;
    protected Boolean enableDeactivation = ENABLE_DEACTIVATION_EDEFAULT;
    protected boolean enableDeactivationESet;
    protected static final Double EXPECTED_ALIVE_CYCLE_EDEFAULT = new Double(0.0);
    protected Double expectedAliveCycle = EXPECTED_ALIVE_CYCLE_EDEFAULT;
    protected boolean expectedAliveCycleESet;
    protected static final Double MAX_ALIVE_CYCLE_EDEFAULT = new Double(0.0);
    protected Double maxAliveCycle = MAX_ALIVE_CYCLE_EDEFAULT;
    protected boolean maxAliveCycleESet;
    protected static final Double MIN_ALIVE_CYCLE_EDEFAULT = new Double(0.0);
    protected Double minAliveCycle = MIN_ALIVE_CYCLE_EDEFAULT;
    protected boolean minAliveCycleESet;
    protected static final PositiveIntegerDatatype TOLERATED_FAILED_CYCLES_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype toleratedFailedCycles = TOLERATED_FAILED_CYCLES_EDEFAULT.clone();
    protected boolean toleratedFailedCyclesESet;

    protected SupervisedEntityNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.SUPERVISED_ENTITY_NEEDS;
    }

    public Boolean getActivateAtStart() {
        return this.activateAtStart;
    }

    public void setActivateAtStart(Boolean newActivateAtStart) {
        Boolean oldActivateAtStart = this.activateAtStart;
        this.activateAtStart = newActivateAtStart;
        boolean oldActivateAtStartESet = this.activateAtStartESet;
        this.activateAtStartESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldActivateAtStart, (Object)this.activateAtStart, !oldActivateAtStartESet));
        }
    }

    public void unsetActivateAtStart() {
        Boolean oldActivateAtStart = this.activateAtStart;
        boolean oldActivateAtStartESet = this.activateAtStartESet;
        this.activateAtStart = ACTIVATE_AT_START_EDEFAULT;
        this.activateAtStartESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldActivateAtStart, (Object)ACTIVATE_AT_START_EDEFAULT, oldActivateAtStartESet));
        }
    }

    public boolean isSetActivateAtStart() {
        return this.activateAtStartESet;
    }

    public Boolean getEnableDeactivation() {
        return this.enableDeactivation;
    }

    public void setEnableDeactivation(Boolean newEnableDeactivation) {
        Boolean oldEnableDeactivation = this.enableDeactivation;
        this.enableDeactivation = newEnableDeactivation;
        boolean oldEnableDeactivationESet = this.enableDeactivationESet;
        this.enableDeactivationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldEnableDeactivation, (Object)this.enableDeactivation, !oldEnableDeactivationESet));
        }
    }

    public void unsetEnableDeactivation() {
        Boolean oldEnableDeactivation = this.enableDeactivation;
        boolean oldEnableDeactivationESet = this.enableDeactivationESet;
        this.enableDeactivation = ENABLE_DEACTIVATION_EDEFAULT;
        this.enableDeactivationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldEnableDeactivation, (Object)ENABLE_DEACTIVATION_EDEFAULT, oldEnableDeactivationESet));
        }
    }

    public boolean isSetEnableDeactivation() {
        return this.enableDeactivationESet;
    }

    public Double getExpectedAliveCycle() {
        return this.expectedAliveCycle;
    }

    public void setExpectedAliveCycle(Double newExpectedAliveCycle) {
        Double oldExpectedAliveCycle = this.expectedAliveCycle;
        this.expectedAliveCycle = newExpectedAliveCycle;
        boolean oldExpectedAliveCycleESet = this.expectedAliveCycleESet;
        this.expectedAliveCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldExpectedAliveCycle, (Object)this.expectedAliveCycle, !oldExpectedAliveCycleESet));
        }
    }

    public void unsetExpectedAliveCycle() {
        Double oldExpectedAliveCycle = this.expectedAliveCycle;
        boolean oldExpectedAliveCycleESet = this.expectedAliveCycleESet;
        this.expectedAliveCycle = EXPECTED_ALIVE_CYCLE_EDEFAULT;
        this.expectedAliveCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldExpectedAliveCycle, (Object)EXPECTED_ALIVE_CYCLE_EDEFAULT, oldExpectedAliveCycleESet));
        }
    }

    public boolean isSetExpectedAliveCycle() {
        return this.expectedAliveCycleESet;
    }

    public Double getMaxAliveCycle() {
        return this.maxAliveCycle;
    }

    public void setMaxAliveCycle(Double newMaxAliveCycle) {
        Double oldMaxAliveCycle = this.maxAliveCycle;
        this.maxAliveCycle = newMaxAliveCycle;
        boolean oldMaxAliveCycleESet = this.maxAliveCycleESet;
        this.maxAliveCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxAliveCycle, (Object)this.maxAliveCycle, !oldMaxAliveCycleESet));
        }
    }

    public void unsetMaxAliveCycle() {
        Double oldMaxAliveCycle = this.maxAliveCycle;
        boolean oldMaxAliveCycleESet = this.maxAliveCycleESet;
        this.maxAliveCycle = MAX_ALIVE_CYCLE_EDEFAULT;
        this.maxAliveCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxAliveCycle, (Object)MAX_ALIVE_CYCLE_EDEFAULT, oldMaxAliveCycleESet));
        }
    }

    public boolean isSetMaxAliveCycle() {
        return this.maxAliveCycleESet;
    }

    public Double getMinAliveCycle() {
        return this.minAliveCycle;
    }

    public void setMinAliveCycle(Double newMinAliveCycle) {
        Double oldMinAliveCycle = this.minAliveCycle;
        this.minAliveCycle = newMinAliveCycle;
        boolean oldMinAliveCycleESet = this.minAliveCycleESet;
        this.minAliveCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMinAliveCycle, (Object)this.minAliveCycle, !oldMinAliveCycleESet));
        }
    }

    public void unsetMinAliveCycle() {
        Double oldMinAliveCycle = this.minAliveCycle;
        boolean oldMinAliveCycleESet = this.minAliveCycleESet;
        this.minAliveCycle = MIN_ALIVE_CYCLE_EDEFAULT;
        this.minAliveCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMinAliveCycle, (Object)MIN_ALIVE_CYCLE_EDEFAULT, oldMinAliveCycleESet));
        }
    }

    public boolean isSetMinAliveCycle() {
        return this.minAliveCycleESet;
    }

    public Long getToleratedFailedCycles() {
        return (Long)this.toleratedFailedCycles.basicGetValue();
    }

    public void setToleratedFailedCycles(Long newToleratedFailedCycles) {
        Long oldToleratedFailedCycles = (Long)this.toleratedFailedCycles.basicGetValue();
        this.toleratedFailedCycles.basicSetValue((Object)newToleratedFailedCycles);
        boolean oldToleratedFailedCyclesESet = this.toleratedFailedCyclesESet;
        this.toleratedFailedCyclesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldToleratedFailedCycles, (Object)newToleratedFailedCycles, !oldToleratedFailedCyclesESet));
        }
    }

    public void unsetToleratedFailedCycles() {
        Long oldToleratedFailedCycles = (Long)this.toleratedFailedCycles.basicGetValue();
        boolean oldToleratedFailedCyclesESet = this.toleratedFailedCyclesESet;
        this.toleratedFailedCycles = TOLERATED_FAILED_CYCLES_EDEFAULT.clone();
        this.toleratedFailedCyclesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldToleratedFailedCycles, (Object)TOLERATED_FAILED_CYCLES_EDEFAULT, oldToleratedFailedCyclesESet));
        }
    }

    public boolean isSetToleratedFailedCycles() {
        return this.toleratedFailedCyclesESet;
    }

    public PositiveIntegerDatatype getToleratedFailedCyclesData() {
        return this.toleratedFailedCycles.clone();
    }

    public void setToleratedFailedCyclesData(PositiveIntegerDatatype newToleratedFailedCycles) {
        this.toleratedFailedCycles.setRadix((int)newToleratedFailedCycles.getRadix());
        this.toleratedFailedCycles.setNoOfDigits((int)newToleratedFailedCycles.getNoOfDigits());
        this.setToleratedFailedCycles(newToleratedFailedCycles.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getActivateAtStart();
            }
            case 19: {
                return this.getEnableDeactivation();
            }
            case 20: {
                return this.getExpectedAliveCycle();
            }
            case 21: {
                return this.getMaxAliveCycle();
            }
            case 22: {
                return this.getMinAliveCycle();
            }
            case 23: {
                return this.getToleratedFailedCycles();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setActivateAtStart((Boolean)newValue);
                return;
            }
            case 19: {
                this.setEnableDeactivation((Boolean)newValue);
                return;
            }
            case 20: {
                this.setExpectedAliveCycle((Double)newValue);
                return;
            }
            case 21: {
                this.setMaxAliveCycle((Double)newValue);
                return;
            }
            case 22: {
                this.setMinAliveCycle((Double)newValue);
                return;
            }
            case 23: {
                this.setToleratedFailedCycles((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetActivateAtStart();
                return;
            }
            case 19: {
                this.unsetEnableDeactivation();
                return;
            }
            case 20: {
                this.unsetExpectedAliveCycle();
                return;
            }
            case 21: {
                this.unsetMaxAliveCycle();
                return;
            }
            case 22: {
                this.unsetMinAliveCycle();
                return;
            }
            case 23: {
                this.unsetToleratedFailedCycles();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetActivateAtStart();
            }
            case 19: {
                return this.isSetEnableDeactivation();
            }
            case 20: {
                return this.isSetExpectedAliveCycle();
            }
            case 21: {
                return this.isSetMaxAliveCycle();
            }
            case 22: {
                return this.isSetMinAliveCycle();
            }
            case 23: {
                return this.isSetToleratedFailedCycles();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (activateAtStart: ");
        if (this.activateAtStartESet) {
            result.append(this.activateAtStart);
        } else {
            result.append("<unset>");
        }
        result.append(", enableDeactivation: ");
        if (this.enableDeactivationESet) {
            result.append(this.enableDeactivation);
        } else {
            result.append("<unset>");
        }
        result.append(", expectedAliveCycle: ");
        if (this.expectedAliveCycleESet) {
            result.append(this.expectedAliveCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", maxAliveCycle: ");
        if (this.maxAliveCycleESet) {
            result.append(this.maxAliveCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", minAliveCycle: ");
        if (this.minAliveCycleESet) {
            result.append(this.minAliveCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", toleratedFailedCycles: ");
        if (this.toleratedFailedCyclesESet) {
            result.append(this.toleratedFailedCycles);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

