/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.IntegerParamDef;
import autosar21.ecucparameterdef.impl.ConfigParameterImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IntegerParamDefImpl
extends ConfigParameterImpl
implements IntegerParamDef {
    protected static final BigInteger DEFAULT_VALUE_EDEFAULT = new BigInteger("0");
    protected BigInteger defaultValue = DEFAULT_VALUE_EDEFAULT;
    protected boolean defaultValueESet;
    protected static final BigInteger MAX_EDEFAULT = new BigInteger("0");
    protected BigInteger max = MAX_EDEFAULT;
    protected boolean maxESet;
    protected static final BigInteger MIN_EDEFAULT = new BigInteger("0");
    protected BigInteger min = MIN_EDEFAULT;
    protected boolean minESet;

    protected IntegerParamDefImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.INTEGER_PARAM_DEF;
    }

    public BigInteger getDefaultValue() {
        return this.defaultValue;
    }

    public void setDefaultValue(BigInteger newDefaultValue) {
        BigInteger oldDefaultValue = this.defaultValue;
        this.defaultValue = newDefaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldDefaultValue, (Object)this.defaultValue, !oldDefaultValueESet));
        }
    }

    public void unsetDefaultValue() {
        BigInteger oldDefaultValue = this.defaultValue;
        boolean oldDefaultValueESet = this.defaultValueESet;
        this.defaultValue = DEFAULT_VALUE_EDEFAULT;
        this.defaultValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldDefaultValue, (Object)DEFAULT_VALUE_EDEFAULT, oldDefaultValueESet));
        }
    }

    public boolean isSetDefaultValue() {
        return this.defaultValueESet;
    }

    public BigInteger getMax() {
        return this.max;
    }

    public void setMax(BigInteger newMax) {
        BigInteger oldMax = this.max;
        this.max = newMax;
        boolean oldMaxESet = this.maxESet;
        this.maxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldMax, (Object)this.max, !oldMaxESet));
        }
    }

    public void unsetMax() {
        BigInteger oldMax = this.max;
        boolean oldMaxESet = this.maxESet;
        this.max = MAX_EDEFAULT;
        this.maxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldMax, (Object)MAX_EDEFAULT, oldMaxESet));
        }
    }

    public boolean isSetMax() {
        return this.maxESet;
    }

    public BigInteger getMin() {
        return this.min;
    }

    public void setMin(BigInteger newMin) {
        BigInteger oldMin = this.min;
        this.min = newMin;
        boolean oldMinESet = this.minESet;
        this.minESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldMin, (Object)this.min, !oldMinESet));
        }
    }

    public void unsetMin() {
        BigInteger oldMin = this.min;
        boolean oldMinESet = this.minESet;
        this.min = MIN_EDEFAULT;
        this.minESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldMin, (Object)MIN_EDEFAULT, oldMinESet));
        }
    }

    public boolean isSetMin() {
        return this.minESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getDefaultValue();
            }
            case 24: {
                return this.getMax();
            }
            case 25: {
                return this.getMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setDefaultValue((BigInteger)newValue);
                return;
            }
            case 24: {
                this.setMax((BigInteger)newValue);
                return;
            }
            case 25: {
                this.setMin((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.unsetDefaultValue();
                return;
            }
            case 24: {
                this.unsetMax();
                return;
            }
            case 25: {
                this.unsetMin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.isSetDefaultValue();
            }
            case 24: {
                return this.isSetMax();
            }
            case 25: {
                return this.isSetMin();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (defaultValue: ");
        if (this.defaultValueESet) {
            result.append(this.defaultValue);
        } else {
            result.append("<unset>");
        }
        result.append(", max: ");
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
        result.append(')');
        return result.toString();
    }
}

