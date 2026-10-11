/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.resources.heapusage.impl;

import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.heapusage.WorstCaseHeapUsage;
import autosar21.swcomponent.resources.heapusage.impl.HeapUsageImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class WorstCaseHeapUsageImpl
extends HeapUsageImpl
implements WorstCaseHeapUsage {
    protected static final Integer MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean memoryConsumptionESet;

    protected WorstCaseHeapUsageImpl() {
    }

    protected EClass eStaticClass() {
        return HeapusagePackage.Literals.WORST_CASE_HEAP_USAGE;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMemoryConsumption, (Object)this.memoryConsumption, !oldMemoryConsumptionESet));
        }
    }

    public void unsetMemoryConsumption() {
        Integer oldMemoryConsumption = this.memoryConsumption;
        boolean oldMemoryConsumptionESet = this.memoryConsumptionESet;
        this.memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT;
        this.memoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMemoryConsumption, (Object)MEMORY_CONSUMPTION_EDEFAULT, oldMemoryConsumptionESet));
        }
    }

    public boolean isSetMemoryConsumption() {
        return this.memoryConsumptionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getMemoryConsumption();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setMemoryConsumption((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.unsetMemoryConsumption();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
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

