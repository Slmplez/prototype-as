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
package autosar40.commonstructure.resourceconsumption.heapusage.impl;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.WorstCaseHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapUsageImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class WorstCaseHeapUsageImpl
extends HeapUsageImpl
implements WorstCaseHeapUsage {
    protected static final PositiveIntegerDatatype MEMORY_CONSUMPTION_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT.clone();
    protected boolean memoryConsumptionESet;

    protected WorstCaseHeapUsageImpl() {
    }

    protected EClass eStaticClass() {
        return HeapusagePackage.Literals.WORST_CASE_HEAP_USAGE;
    }

    public Long getMemoryConsumption() {
        return (Long)this.memoryConsumption.basicGetValue();
    }

    public void setMemoryConsumption(Long newMemoryConsumption) {
        Long oldMemoryConsumption = (Long)this.memoryConsumption.basicGetValue();
        this.memoryConsumption.basicSetValue((Object)newMemoryConsumption);
        boolean oldMemoryConsumptionESet = this.memoryConsumptionESet;
        this.memoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMemoryConsumption, (Object)newMemoryConsumption, !oldMemoryConsumptionESet));
        }
    }

    public void unsetMemoryConsumption() {
        Long oldMemoryConsumption = (Long)this.memoryConsumption.basicGetValue();
        boolean oldMemoryConsumptionESet = this.memoryConsumptionESet;
        this.memoryConsumption = MEMORY_CONSUMPTION_EDEFAULT.clone();
        this.memoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMemoryConsumption, (Object)MEMORY_CONSUMPTION_EDEFAULT, oldMemoryConsumptionESet));
        }
    }

    public boolean isSetMemoryConsumption() {
        return this.memoryConsumptionESet;
    }

    public PositiveIntegerDatatype getMemoryConsumptionData() {
        return this.memoryConsumption.clone();
    }

    public void setMemoryConsumptionData(PositiveIntegerDatatype newMemoryConsumption) {
        this.memoryConsumption.setRadix((int)newMemoryConsumption.getRadix());
        this.memoryConsumption.setNoOfDigits((int)newMemoryConsumption.getNoOfDigits());
        this.setMemoryConsumption(newMemoryConsumption.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getMemoryConsumption();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setMemoryConsumption((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetMemoryConsumption();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
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

