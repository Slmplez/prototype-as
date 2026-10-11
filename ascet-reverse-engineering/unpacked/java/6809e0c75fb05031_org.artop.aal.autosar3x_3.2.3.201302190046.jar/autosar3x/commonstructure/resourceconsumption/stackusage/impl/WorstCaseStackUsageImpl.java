/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.resourceconsumption.stackusage.impl;

import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.WorstCaseStackUsage;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.StackUsageImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class WorstCaseStackUsageImpl
extends StackUsageImpl
implements WorstCaseStackUsage {
    protected static final Integer MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean memoryConsumptionESet;

    protected WorstCaseStackUsageImpl() {
    }

    protected EClass eStaticClass() {
        return StackusagePackage.Literals.WORST_CASE_STACK_USAGE;
    }

    public Integer getMemoryConsumption() {
        return this.memoryConsumption;
    }

    public void setMemoryConsumption(Integer newMemoryConsumption) {
        Integer oldMemoryConsumption = this.memoryConsumption;
        this.memoryConsumption = newMemoryConsumption;
        boolean oldMemoryConsumptionESet = this.memoryConsumptionESet;
        this.memoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMemoryConsumption, (Object)this.memoryConsumption, !oldMemoryConsumptionESet));
        }
    }

    public void unsetMemoryConsumption() {
        Integer oldMemoryConsumption = this.memoryConsumption;
        boolean oldMemoryConsumptionESet = this.memoryConsumptionESet;
        this.memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT;
        this.memoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMemoryConsumption, (Object)MEMORY_CONSUMPTION_EDEFAULT, oldMemoryConsumptionESet));
        }
    }

    public boolean isSetMemoryConsumption() {
        return this.memoryConsumptionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getMemoryConsumption();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setMemoryConsumption((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetMemoryConsumption();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetMemoryConsumption();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (memoryConsumption: ");
        if (this.memoryConsumptionESet) {
            result.append(this.memoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

