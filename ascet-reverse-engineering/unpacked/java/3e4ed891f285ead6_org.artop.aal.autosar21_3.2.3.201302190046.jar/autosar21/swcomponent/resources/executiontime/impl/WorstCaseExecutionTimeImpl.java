/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.WorstCaseExecutionTime;
import autosar21.swcomponent.resources.executiontime.impl.ExecutionTimeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class WorstCaseExecutionTimeImpl
extends ExecutionTimeImpl
implements WorstCaseExecutionTime {
    protected static final Double MAXIMAL_EXECUTION_TIME_EDEFAULT = new Double(0.0);
    protected Double maximalExecutionTime = MAXIMAL_EXECUTION_TIME_EDEFAULT;
    protected boolean maximalExecutionTimeESet;
    protected static final Double MINIMAL_EXECUTION_TIME_EDEFAULT = new Double(0.0);
    protected Double minimalExecutionTime = MINIMAL_EXECUTION_TIME_EDEFAULT;
    protected boolean minimalExecutionTimeESet;

    protected WorstCaseExecutionTimeImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.WORST_CASE_EXECUTION_TIME;
    }

    public Double getMaximalExecutionTime() {
        return this.maximalExecutionTime;
    }

    public void setMaximalExecutionTime(Double newMaximalExecutionTime) {
        Double oldMaximalExecutionTime = this.maximalExecutionTime;
        this.maximalExecutionTime = newMaximalExecutionTime;
        boolean oldMaximalExecutionTimeESet = this.maximalExecutionTimeESet;
        this.maximalExecutionTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaximalExecutionTime, (Object)this.maximalExecutionTime, !oldMaximalExecutionTimeESet));
        }
    }

    public void unsetMaximalExecutionTime() {
        Double oldMaximalExecutionTime = this.maximalExecutionTime;
        boolean oldMaximalExecutionTimeESet = this.maximalExecutionTimeESet;
        this.maximalExecutionTime = MAXIMAL_EXECUTION_TIME_EDEFAULT;
        this.maximalExecutionTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaximalExecutionTime, (Object)MAXIMAL_EXECUTION_TIME_EDEFAULT, oldMaximalExecutionTimeESet));
        }
    }

    public boolean isSetMaximalExecutionTime() {
        return this.maximalExecutionTimeESet;
    }

    public Double getMinimalExecutionTime() {
        return this.minimalExecutionTime;
    }

    public void setMinimalExecutionTime(Double newMinimalExecutionTime) {
        Double oldMinimalExecutionTime = this.minimalExecutionTime;
        this.minimalExecutionTime = newMinimalExecutionTime;
        boolean oldMinimalExecutionTimeESet = this.minimalExecutionTimeESet;
        this.minimalExecutionTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMinimalExecutionTime, (Object)this.minimalExecutionTime, !oldMinimalExecutionTimeESet));
        }
    }

    public void unsetMinimalExecutionTime() {
        Double oldMinimalExecutionTime = this.minimalExecutionTime;
        boolean oldMinimalExecutionTimeESet = this.minimalExecutionTimeESet;
        this.minimalExecutionTime = MINIMAL_EXECUTION_TIME_EDEFAULT;
        this.minimalExecutionTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMinimalExecutionTime, (Object)MINIMAL_EXECUTION_TIME_EDEFAULT, oldMinimalExecutionTimeESet));
        }
    }

    public boolean isSetMinimalExecutionTime() {
        return this.minimalExecutionTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getMaximalExecutionTime();
            }
            case 25: {
                return this.getMinimalExecutionTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setMaximalExecutionTime((Double)newValue);
                return;
            }
            case 25: {
                this.setMinimalExecutionTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetMaximalExecutionTime();
                return;
            }
            case 25: {
                this.unsetMinimalExecutionTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetMaximalExecutionTime();
            }
            case 25: {
                return this.isSetMinimalExecutionTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maximalExecutionTime: ");
        if (this.maximalExecutionTimeESet) {
            result.append(this.maximalExecutionTime);
        } else {
            result.append("<unset>");
        }
        result.append(", minimalExecutionTime: ");
        if (this.minimalExecutionTimeESet) {
            result.append(this.minimalExecutionTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

