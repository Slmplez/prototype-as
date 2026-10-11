/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.basicelements.impl;

import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.ElectricalRange;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ElectricalRangeImpl
extends ARObjectImpl
implements ElectricalRange {
    protected static final Double MAX_CURRENT_EDEFAULT = new Double(0.0);
    protected Double maxCurrent = MAX_CURRENT_EDEFAULT;
    protected boolean maxCurrentESet;
    protected static final Double MAX_VOLTAGE_EDEFAULT = new Double(0.0);
    protected Double maxVoltage = MAX_VOLTAGE_EDEFAULT;
    protected boolean maxVoltageESet;
    protected static final Double MIN_CURRENT_EDEFAULT = new Double(0.0);
    protected Double minCurrent = MIN_CURRENT_EDEFAULT;
    protected boolean minCurrentESet;
    protected static final Double MIN_VOLTAGE_EDEFAULT = new Double(0.0);
    protected Double minVoltage = MIN_VOLTAGE_EDEFAULT;
    protected boolean minVoltageESet;
    protected static final Double TYPICAL_CURRENT_EDEFAULT = new Double(0.0);
    protected Double typicalCurrent = TYPICAL_CURRENT_EDEFAULT;
    protected boolean typicalCurrentESet;
    protected static final Double TYPICAL_VOLTAGE_EDEFAULT = new Double(0.0);
    protected Double typicalVoltage = TYPICAL_VOLTAGE_EDEFAULT;
    protected boolean typicalVoltageESet;

    protected ElectricalRangeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.ELECTRICAL_RANGE;
    }

    @Override
    public Double getMaxCurrent() {
        return this.maxCurrent;
    }

    @Override
    public void setMaxCurrent(Double newMaxCurrent) {
        Double oldMaxCurrent = this.maxCurrent;
        this.maxCurrent = newMaxCurrent;
        boolean oldMaxCurrentESet = this.maxCurrentESet;
        this.maxCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMaxCurrent, (Object)this.maxCurrent, !oldMaxCurrentESet));
        }
    }

    @Override
    public void unsetMaxCurrent() {
        Double oldMaxCurrent = this.maxCurrent;
        boolean oldMaxCurrentESet = this.maxCurrentESet;
        this.maxCurrent = MAX_CURRENT_EDEFAULT;
        this.maxCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMaxCurrent, (Object)MAX_CURRENT_EDEFAULT, oldMaxCurrentESet));
        }
    }

    @Override
    public boolean isSetMaxCurrent() {
        return this.maxCurrentESet;
    }

    @Override
    public Double getMaxVoltage() {
        return this.maxVoltage;
    }

    @Override
    public void setMaxVoltage(Double newMaxVoltage) {
        Double oldMaxVoltage = this.maxVoltage;
        this.maxVoltage = newMaxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMaxVoltage, (Object)this.maxVoltage, !oldMaxVoltageESet));
        }
    }

    @Override
    public void unsetMaxVoltage() {
        Double oldMaxVoltage = this.maxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltage = MAX_VOLTAGE_EDEFAULT;
        this.maxVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMaxVoltage, (Object)MAX_VOLTAGE_EDEFAULT, oldMaxVoltageESet));
        }
    }

    @Override
    public boolean isSetMaxVoltage() {
        return this.maxVoltageESet;
    }

    @Override
    public Double getMinCurrent() {
        return this.minCurrent;
    }

    @Override
    public void setMinCurrent(Double newMinCurrent) {
        Double oldMinCurrent = this.minCurrent;
        this.minCurrent = newMinCurrent;
        boolean oldMinCurrentESet = this.minCurrentESet;
        this.minCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMinCurrent, (Object)this.minCurrent, !oldMinCurrentESet));
        }
    }

    @Override
    public void unsetMinCurrent() {
        Double oldMinCurrent = this.minCurrent;
        boolean oldMinCurrentESet = this.minCurrentESet;
        this.minCurrent = MIN_CURRENT_EDEFAULT;
        this.minCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMinCurrent, (Object)MIN_CURRENT_EDEFAULT, oldMinCurrentESet));
        }
    }

    @Override
    public boolean isSetMinCurrent() {
        return this.minCurrentESet;
    }

    @Override
    public Double getMinVoltage() {
        return this.minVoltage;
    }

    @Override
    public void setMinVoltage(Double newMinVoltage) {
        Double oldMinVoltage = this.minVoltage;
        this.minVoltage = newMinVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMinVoltage, (Object)this.minVoltage, !oldMinVoltageESet));
        }
    }

    @Override
    public void unsetMinVoltage() {
        Double oldMinVoltage = this.minVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltage = MIN_VOLTAGE_EDEFAULT;
        this.minVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMinVoltage, (Object)MIN_VOLTAGE_EDEFAULT, oldMinVoltageESet));
        }
    }

    @Override
    public boolean isSetMinVoltage() {
        return this.minVoltageESet;
    }

    @Override
    public Double getTypicalCurrent() {
        return this.typicalCurrent;
    }

    @Override
    public void setTypicalCurrent(Double newTypicalCurrent) {
        Double oldTypicalCurrent = this.typicalCurrent;
        this.typicalCurrent = newTypicalCurrent;
        boolean oldTypicalCurrentESet = this.typicalCurrentESet;
        this.typicalCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTypicalCurrent, (Object)this.typicalCurrent, !oldTypicalCurrentESet));
        }
    }

    @Override
    public void unsetTypicalCurrent() {
        Double oldTypicalCurrent = this.typicalCurrent;
        boolean oldTypicalCurrentESet = this.typicalCurrentESet;
        this.typicalCurrent = TYPICAL_CURRENT_EDEFAULT;
        this.typicalCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldTypicalCurrent, (Object)TYPICAL_CURRENT_EDEFAULT, oldTypicalCurrentESet));
        }
    }

    @Override
    public boolean isSetTypicalCurrent() {
        return this.typicalCurrentESet;
    }

    @Override
    public Double getTypicalVoltage() {
        return this.typicalVoltage;
    }

    @Override
    public void setTypicalVoltage(Double newTypicalVoltage) {
        Double oldTypicalVoltage = this.typicalVoltage;
        this.typicalVoltage = newTypicalVoltage;
        boolean oldTypicalVoltageESet = this.typicalVoltageESet;
        this.typicalVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTypicalVoltage, (Object)this.typicalVoltage, !oldTypicalVoltageESet));
        }
    }

    @Override
    public void unsetTypicalVoltage() {
        Double oldTypicalVoltage = this.typicalVoltage;
        boolean oldTypicalVoltageESet = this.typicalVoltageESet;
        this.typicalVoltage = TYPICAL_VOLTAGE_EDEFAULT;
        this.typicalVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldTypicalVoltage, (Object)TYPICAL_VOLTAGE_EDEFAULT, oldTypicalVoltageESet));
        }
    }

    @Override
    public boolean isSetTypicalVoltage() {
        return this.typicalVoltageESet;
    }

    @Override
    public boolean _minCurrenttypicalCurrentandtypicalCurrentmaxCurrent(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean _minVoltagetypicalVoltageandtypicalVoltagemaxVoltage(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMaxCurrent();
            }
            case 5: {
                return this.getMaxVoltage();
            }
            case 6: {
                return this.getMinCurrent();
            }
            case 7: {
                return this.getMinVoltage();
            }
            case 8: {
                return this.getTypicalCurrent();
            }
            case 9: {
                return this.getTypicalVoltage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMaxCurrent((Double)newValue);
                return;
            }
            case 5: {
                this.setMaxVoltage((Double)newValue);
                return;
            }
            case 6: {
                this.setMinCurrent((Double)newValue);
                return;
            }
            case 7: {
                this.setMinVoltage((Double)newValue);
                return;
            }
            case 8: {
                this.setTypicalCurrent((Double)newValue);
                return;
            }
            case 9: {
                this.setTypicalVoltage((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMaxCurrent();
                return;
            }
            case 5: {
                this.unsetMaxVoltage();
                return;
            }
            case 6: {
                this.unsetMinCurrent();
                return;
            }
            case 7: {
                this.unsetMinVoltage();
                return;
            }
            case 8: {
                this.unsetTypicalCurrent();
                return;
            }
            case 9: {
                this.unsetTypicalVoltage();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMaxCurrent();
            }
            case 5: {
                return this.isSetMaxVoltage();
            }
            case 6: {
                return this.isSetMinCurrent();
            }
            case 7: {
                return this.isSetMinVoltage();
            }
            case 8: {
                return this.isSetTypicalCurrent();
            }
            case 9: {
                return this.isSetTypicalVoltage();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxCurrent: ");
        if (this.maxCurrentESet) {
            result.append(this.maxCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(", maxVoltage: ");
        if (this.maxVoltageESet) {
            result.append(this.maxVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", minCurrent: ");
        if (this.minCurrentESet) {
            result.append(this.minCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(", minVoltage: ");
        if (this.minVoltageESet) {
            result.append(this.minVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", typicalCurrent: ");
        if (this.typicalCurrentESet) {
            result.append(this.typicalCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(", typicalVoltage: ");
        if (this.typicalVoltageESet) {
            result.append(this.typicalVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

