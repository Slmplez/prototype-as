/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IntegerContainerImpl
extends ARObjectImpl
implements IntegerContainer {
    protected static final IntegerDatatype VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype value = VALUE_EDEFAULT.clone();
    protected boolean valueESet;

    protected IntegerContainerImpl() {
    }

    protected EClass eStaticClass() {
        return PrimitivetypesPackage.Literals.INTEGER_CONTAINER;
    }

    public Integer getValue() {
        return (Integer)this.value.basicGetValue();
    }

    public void setValue(Integer newValue) {
        Integer oldValue = (Integer)this.value.basicGetValue();
        this.value.basicSetValue((Object)newValue);
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldValue, (Object)newValue, !oldValueESet));
        }
    }

    public void unsetValue() {
        Integer oldValue = (Integer)this.value.basicGetValue();
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT.clone();
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public IntegerDatatype getValueData() {
        return this.value.clone();
    }

    public void setValueData(IntegerDatatype newValue) {
        this.value.setRadix((int)newValue.getRadix());
        this.value.setNoOfDigits((int)newValue.getNoOfDigits());
        this.setValue(newValue.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setValue((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
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

