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
import autosar40.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapUsageImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MeasuredHeapUsageImpl
extends HeapUsageImpl
implements MeasuredHeapUsage {
    protected static final PositiveIntegerDatatype AVERAGE_MEMORY_CONSUMPTION_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT.clone();
    protected boolean averageMemoryConsumptionESet;
    protected static final PositiveIntegerDatatype MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT.clone();
    protected boolean maximumMemoryConsumptionESet;
    protected static final PositiveIntegerDatatype MINIMUM_MEMORY_CONSUMPTION_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT.clone();
    protected boolean minimumMemoryConsumptionESet;
    protected static final String TEST_PATTERN_EDEFAULT = "";
    protected String testPattern = "";
    protected boolean testPatternESet;

    protected MeasuredHeapUsageImpl() {
    }

    protected EClass eStaticClass() {
        return HeapusagePackage.Literals.MEASURED_HEAP_USAGE;
    }

    public Long getAverageMemoryConsumption() {
        return (Long)this.averageMemoryConsumption.basicGetValue();
    }

    public void setAverageMemoryConsumption(Long newAverageMemoryConsumption) {
        Long oldAverageMemoryConsumption = (Long)this.averageMemoryConsumption.basicGetValue();
        this.averageMemoryConsumption.basicSetValue((Object)newAverageMemoryConsumption);
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldAverageMemoryConsumption, (Object)newAverageMemoryConsumption, !oldAverageMemoryConsumptionESet));
        }
    }

    public void unsetAverageMemoryConsumption() {
        Long oldAverageMemoryConsumption = (Long)this.averageMemoryConsumption.basicGetValue();
        boolean oldAverageMemoryConsumptionESet = this.averageMemoryConsumptionESet;
        this.averageMemoryConsumption = AVERAGE_MEMORY_CONSUMPTION_EDEFAULT.clone();
        this.averageMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldAverageMemoryConsumption, (Object)AVERAGE_MEMORY_CONSUMPTION_EDEFAULT, oldAverageMemoryConsumptionESet));
        }
    }

    public boolean isSetAverageMemoryConsumption() {
        return this.averageMemoryConsumptionESet;
    }

    public Long getMaximumMemoryConsumption() {
        return (Long)this.maximumMemoryConsumption.basicGetValue();
    }

    public void setMaximumMemoryConsumption(Long newMaximumMemoryConsumption) {
        Long oldMaximumMemoryConsumption = (Long)this.maximumMemoryConsumption.basicGetValue();
        this.maximumMemoryConsumption.basicSetValue((Object)newMaximumMemoryConsumption);
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMaximumMemoryConsumption, (Object)newMaximumMemoryConsumption, !oldMaximumMemoryConsumptionESet));
        }
    }

    public void unsetMaximumMemoryConsumption() {
        Long oldMaximumMemoryConsumption = (Long)this.maximumMemoryConsumption.basicGetValue();
        boolean oldMaximumMemoryConsumptionESet = this.maximumMemoryConsumptionESet;
        this.maximumMemoryConsumption = MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT.clone();
        this.maximumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMaximumMemoryConsumption, (Object)MAXIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMaximumMemoryConsumptionESet));
        }
    }

    public boolean isSetMaximumMemoryConsumption() {
        return this.maximumMemoryConsumptionESet;
    }

    public Long getMinimumMemoryConsumption() {
        return (Long)this.minimumMemoryConsumption.basicGetValue();
    }

    public void setMinimumMemoryConsumption(Long newMinimumMemoryConsumption) {
        Long oldMinimumMemoryConsumption = (Long)this.minimumMemoryConsumption.basicGetValue();
        this.minimumMemoryConsumption.basicSetValue((Object)newMinimumMemoryConsumption);
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumptionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMinimumMemoryConsumption, (Object)newMinimumMemoryConsumption, !oldMinimumMemoryConsumptionESet));
        }
    }

    public void unsetMinimumMemoryConsumption() {
        Long oldMinimumMemoryConsumption = (Long)this.minimumMemoryConsumption.basicGetValue();
        boolean oldMinimumMemoryConsumptionESet = this.minimumMemoryConsumptionESet;
        this.minimumMemoryConsumption = MINIMUM_MEMORY_CONSUMPTION_EDEFAULT.clone();
        this.minimumMemoryConsumptionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMinimumMemoryConsumption, (Object)MINIMUM_MEMORY_CONSUMPTION_EDEFAULT, oldMinimumMemoryConsumptionESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldTestPattern, (Object)this.testPattern, !oldTestPatternESet));
        }
    }

    public void unsetTestPattern() {
        String oldTestPattern = this.testPattern;
        boolean oldTestPatternESet = this.testPatternESet;
        this.testPattern = TEST_PATTERN_EDEFAULT;
        this.testPatternESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldTestPattern, (Object)TEST_PATTERN_EDEFAULT, oldTestPatternESet));
        }
    }

    public boolean isSetTestPattern() {
        return this.testPatternESet;
    }

    public PositiveIntegerDatatype getAverageMemoryConsumptionData() {
        return this.averageMemoryConsumption.clone();
    }

    public void setAverageMemoryConsumptionData(PositiveIntegerDatatype newAverageMemoryConsumption) {
        this.averageMemoryConsumption.setRadix((int)newAverageMemoryConsumption.getRadix());
        this.averageMemoryConsumption.setNoOfDigits((int)newAverageMemoryConsumption.getNoOfDigits());
        this.setAverageMemoryConsumption(newAverageMemoryConsumption.getValue());
    }

    public PositiveIntegerDatatype getMaximumMemoryConsumptionData() {
        return this.maximumMemoryConsumption.clone();
    }

    public void setMaximumMemoryConsumptionData(PositiveIntegerDatatype newMaximumMemoryConsumption) {
        this.maximumMemoryConsumption.setRadix((int)newMaximumMemoryConsumption.getRadix());
        this.maximumMemoryConsumption.setNoOfDigits((int)newMaximumMemoryConsumption.getNoOfDigits());
        this.setMaximumMemoryConsumption(newMaximumMemoryConsumption.getValue());
    }

    public PositiveIntegerDatatype getMinimumMemoryConsumptionData() {
        return this.minimumMemoryConsumption.clone();
    }

    public void setMinimumMemoryConsumptionData(PositiveIntegerDatatype newMinimumMemoryConsumption) {
        this.minimumMemoryConsumption.setRadix((int)newMinimumMemoryConsumption.getRadix());
        this.minimumMemoryConsumption.setNoOfDigits((int)newMinimumMemoryConsumption.getNoOfDigits());
        this.setMinimumMemoryConsumption(newMinimumMemoryConsumption.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getAverageMemoryConsumption();
            }
            case 24: {
                return this.getMaximumMemoryConsumption();
            }
            case 25: {
                return this.getMinimumMemoryConsumption();
            }
            case 26: {
                return this.getTestPattern();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setAverageMemoryConsumption((Long)newValue);
                return;
            }
            case 24: {
                this.setMaximumMemoryConsumption((Long)newValue);
                return;
            }
            case 25: {
                this.setMinimumMemoryConsumption((Long)newValue);
                return;
            }
            case 26: {
                this.setTestPattern((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetAverageMemoryConsumption();
                return;
            }
            case 24: {
                this.unsetMaximumMemoryConsumption();
                return;
            }
            case 25: {
                this.unsetMinimumMemoryConsumption();
                return;
            }
            case 26: {
                this.unsetTestPattern();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetAverageMemoryConsumption();
            }
            case 24: {
                return this.isSetMaximumMemoryConsumption();
            }
            case 25: {
                return this.isSetMinimumMemoryConsumption();
            }
            case 26: {
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

