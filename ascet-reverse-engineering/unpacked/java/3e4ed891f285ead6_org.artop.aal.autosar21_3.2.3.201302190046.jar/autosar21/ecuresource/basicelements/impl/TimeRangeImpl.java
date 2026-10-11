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
package autosar21.ecuresource.basicelements.impl;

import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimeRangeImpl
extends ARObjectImpl
implements TimeRange {
    protected static final Double MAX_EDEFAULT = new Double(0.0);
    protected Double max = MAX_EDEFAULT;
    protected boolean maxESet;
    protected static final Double MIN_EDEFAULT = new Double(0.0);
    protected Double min = MIN_EDEFAULT;
    protected boolean minESet;
    protected static final Double TYPICAL_EDEFAULT = new Double(0.0);
    protected Double typical = TYPICAL_EDEFAULT;
    protected boolean typicalESet;

    protected TimeRangeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.TIME_RANGE;
    }

    @Override
    public Double getMax() {
        return this.max;
    }

    @Override
    public void setMax(Double newMax) {
        Double oldMax = this.max;
        this.max = newMax;
        boolean oldMaxESet = this.maxESet;
        this.maxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMax, (Object)this.max, !oldMaxESet));
        }
    }

    @Override
    public void unsetMax() {
        Double oldMax = this.max;
        boolean oldMaxESet = this.maxESet;
        this.max = MAX_EDEFAULT;
        this.maxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMax, (Object)MAX_EDEFAULT, oldMaxESet));
        }
    }

    @Override
    public boolean isSetMax() {
        return this.maxESet;
    }

    @Override
    public Double getMin() {
        return this.min;
    }

    @Override
    public void setMin(Double newMin) {
        Double oldMin = this.min;
        this.min = newMin;
        boolean oldMinESet = this.minESet;
        this.minESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMin, (Object)this.min, !oldMinESet));
        }
    }

    @Override
    public void unsetMin() {
        Double oldMin = this.min;
        boolean oldMinESet = this.minESet;
        this.min = MIN_EDEFAULT;
        this.minESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMin, (Object)MIN_EDEFAULT, oldMinESet));
        }
    }

    @Override
    public boolean isSetMin() {
        return this.minESet;
    }

    @Override
    public Double getTypical() {
        return this.typical;
    }

    @Override
    public void setTypical(Double newTypical) {
        Double oldTypical = this.typical;
        this.typical = newTypical;
        boolean oldTypicalESet = this.typicalESet;
        this.typicalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTypical, (Object)this.typical, !oldTypicalESet));
        }
    }

    @Override
    public void unsetTypical() {
        Double oldTypical = this.typical;
        boolean oldTypicalESet = this.typicalESet;
        this.typical = TYPICAL_EDEFAULT;
        this.typicalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTypical, (Object)TYPICAL_EDEFAULT, oldTypicalESet));
        }
    }

    @Override
    public boolean isSetTypical() {
        return this.typicalESet;
    }

    @Override
    public boolean _mintypicalandtypicalmax(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMax();
            }
            case 5: {
                return this.getMin();
            }
            case 6: {
                return this.getTypical();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMax((Double)newValue);
                return;
            }
            case 5: {
                this.setMin((Double)newValue);
                return;
            }
            case 6: {
                this.setTypical((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMax();
                return;
            }
            case 5: {
                this.unsetMin();
                return;
            }
            case 6: {
                this.unsetTypical();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMax();
            }
            case 5: {
                return this.isSetMin();
            }
            case 6: {
                return this.isSetTypical();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (max: ");
        if (this.maxESet) {
            result.append(this.max);
        } else {
            result.append("<unset>");
        }
        result.append(", min: ");
        if (this.minESet) {
            result.append(this.min);
        } else {
            result.append("<unset>");
        }
        result.append(", typical: ");
        if (this.typicalESet) {
            result.append(this.typical);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

