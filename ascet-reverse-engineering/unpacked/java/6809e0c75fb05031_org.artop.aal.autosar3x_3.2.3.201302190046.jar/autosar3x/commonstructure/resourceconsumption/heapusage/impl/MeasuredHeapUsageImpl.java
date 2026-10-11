/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.resourceconsumption.heapusage.impl;

import autosar3x.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar3x.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar3x.commonstructure.resourceconsumption.heapusage.impl.HeapUsageImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MeasuredHeapUsageImpl
extends HeapUsageImpl
implements MeasuredHeapUsage {
    protected static final Integer AVERAGE_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean averageMemoryConsumptionESet;
    protected static final Integer MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean maximumMemoryConsumptionESet;
    protected static final Integer MINIMUM_MEMORY_CONSUMPTION_EDEFAULT = new Integer(0);
    protected Integer minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT;
    protected boolean minimumMemoryConsumptionESet;
    protected static final String TEST_PATTERN_EDEFAULT = "";
    protected String testPattern = "";
    protected boolean testPatternESet;

    protected MeasuredHeapUsageImpl() {
    }

    protected EClass eStaticClass() {
        return HeapusagePackage.Literals.MEASURED_HEAP_USAGE;
    }

    public Integer getAverageMemoryConsumption() {
        return this.averageMemoryConsumption;
    }

    public void setAverageMemoryConsumption(Integer newAverageMemoryConsumption) {
        Integer oldAverageMemoryConsumption = this.averageMemoryConsumption;
        this.averageMemoryConsumption = newAverageMemoryConsumption;
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldAverageMemoryConsumption, (Object)this.averageMemoryConsumption, !oldAverageMemoryConsumptionESet));
        }
    }

    public void unsetAverageMemoryConsumption() {
        Integer oldAverageMemoryConsumption = this.averageMemoryConsumption;
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT;
        this.averageMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldAverageMemoryConsumption, (Object)AVERAGE_MEMORY_CONSUMPTION_EDEFAULT, oldAverageMemoryConsumptionESet));
        }
    }

    public boolean isSetAverageMemoryConsumption() {
        return this.averageMemoryConsumptionESet;
    }

    public Integer getMaximumMemoryConsumption() {
        return this.maximumMemoryConsumption;
    }

    public void setMaximumMemoryConsumption(Integer newMaximumMemoryConsumption) {
        Integer oldMaximumMemoryConsumption = this.maximumMemoryConsumption;
        this.maximumMemoryConsumption = newMaximumMemoryConsumption;
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaximumMemoryConsumption, (Object)this.maximumMemoryConsumption, !oldMaximumMemoryConsumptionESet));
        }
    }

    public void unsetMaximumMemoryConsumption() {
        Integer oldMaximumMemoryConsumption = this.maximumMemoryConsumption;
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT;
        this.maximumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldMaximumMemoryConsumption, (Object)MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMaximumMemoryConsumptionESet));
        }
    }

    public boolean isSetMaximumMemoryConsumption() {
        return this.maximumMemoryConsumptionESet;
    }

    public Integer getMinimumMemoryConsumption() {
        return this.minimumMemoryConsumption;
    }

    public void setMinimumMemoryConsumption(Integer newMinimumMemoryConsumption) {
        Integer oldMinimumMemoryConsumption = this.minimumMemoryConsumption;
        this.minimumMemoryConsumption = newMinimumMemoryConsumption;
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldMinimumMemoryConsumption, (Object)this.minimumMemoryConsumption, !oldMinimumMemoryConsumptionESet));
        }
    }

    public void unsetMinimumMemoryConsumption() {
        Integer oldMinimumMemoryConsumption = this.minimumMemoryConsumption;
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT;
        this.minimumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldMinimumMemoryConsumption, (Object)MINIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMinimumMemoryConsumptionESet));
        }
    }

    public boolean isSetMinimumMemoryConsumption() {
        return this.minimumMemoryConsumptionESet;
    }

    public String getTestPattern() {
        return this.testPattern;
    }

    public void setTestPattern(String newTestPattern) {
        String oldTestPattern = this.testPattern;
        this.testPattern = newTestPattern;
        boolean oldTestPatternESet = this.testPatternESet;
        this.testPatternESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldTestPattern, (Object)this.testPattern, !oldTestPatternESet));
        }
    }

    public void unsetTestPattern() {
        String oldTestPattern = this.testPattern;
        boolean oldTestPatternESet = this.testPatternESet;
        this.testPattern = TEST_PATTERN_EDEFAULT;
        this.testPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldTestPattern, (Object)TEST_PATTERN_EDEFAULT, oldTestPatternESet));
        }
    }

    public boolean isSetTestPattern() {
        return this.testPatternESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getAverageMemoryConsumption();
            }
            case 22: {
                return this.getMaximumMemoryConsumption();
            }
            case 23: {
                return this.getMinimumMemoryConsumption();
            }
            case 24: {
                return this.getTestPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setAverageMemoryConsumption((Integer)newValue);
                return;
            }
            case 22: {
                this.setMaximumMemoryConsumption((Integer)newValue);
                return;
            }
            case 23: {
                this.setMinimumMemoryConsumption((Integer)newValue);
                return;
            }
            case 24: {
                this.setTestPattern((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetAverageMemoryConsumption();
                return;
            }
            case 22: {
                this.unsetMaximumMemoryConsumption();
                return;
            }
            case 23: {
                this.unsetMinimumMemoryConsumption();
                return;
            }
            case 24: {
                this.unsetTestPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetAverageMemoryConsumption();
            }
            case 22: {
                return this.isSetMaximumMemoryConsumption();
            }
            case 23: {
                return this.isSetMinimumMemoryConsumption();
            }
            case 24: {
                return this.isSetTestPattern();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (averageMemoryConsumption: ");
        if (this.averageMemoryConsumptionESet) {
            result.append(this.averageMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", maximumMemoryConsumption: ");
        if (this.maximumMemoryConsumptionESet) {
            result.append(this.maximumMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumMemoryConsumption: ");
        if (this.minimumMemoryConsumptionESet) {
            result.append(this.minimumMemoryConsumption);
        } else {
            result.append("<unset>");
        }
        result.append(", testPattern: ");
        if (this.testPatternESet) {
            result.append(this.testPattern);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

