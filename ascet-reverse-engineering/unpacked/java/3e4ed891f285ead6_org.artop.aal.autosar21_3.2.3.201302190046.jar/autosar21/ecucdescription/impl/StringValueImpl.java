/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucdescription.GStringValue
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecucdescription.impl;

import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.StringValue;
import autosar21.ecucdescription.impl.ParameterValueImpl;
import gautosar.gecucdescription.GStringValue;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StringValueImpl
extends ParameterValueImpl
implements StringValue {
    protected static final String GVALUE_EDEFAULT = null;
    protected static final String VALUE_EDEFAULT = "";
    protected String value = "";
    protected boolean valueESet;

    protected StringValueImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucdescriptionPackage.Literals.STRING_VALUE;
    }

    public String gGetValue() {
        String tgtFeatureValue = this.getValue();
        return tgtFeatureValue;
    }

    public void gSetValue(String newGValue) {
        this.setValue(newGValue);
    }

    public void gUnsetValue() {
        this.unsetValue();
    }

    public boolean gIsSetValue() {
        return this.isSetValue();
    }

    @Override
    public String getValue() {
        return this.value;
    }

    @Override
    public void setValue(String newValue) {
        String oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    @Override
    public void unsetValue() {
        String oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    @Override
    public boolean isSetValue() {
        return this.valueESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.gGetValue();
            }
            case 7: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.gSetValue((String)newValue);
                return;
            }
            case 7: {
                this.setValue((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.gUnsetValue();
                return;
            }
            case 7: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.gIsSetValue();
            }
            case 7: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GStringValue.class) {
            switch (derivedFeatureID) {
                case 6: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GStringValue.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

