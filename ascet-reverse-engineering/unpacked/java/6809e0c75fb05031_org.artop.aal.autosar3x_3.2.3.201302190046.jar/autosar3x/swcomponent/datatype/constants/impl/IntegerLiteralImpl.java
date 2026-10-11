/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.constants.impl;

import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.IntegerLiteral;
import autosar3x.swcomponent.datatype.constants.impl.PrimitiveSpecificationImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IntegerLiteralImpl
extends PrimitiveSpecificationImpl
implements IntegerLiteral {
    protected static final BigInteger VALUE_EDEFAULT = new BigInteger("0");
    protected BigInteger value = VALUE_EDEFAULT;
    protected boolean valueESet;

    protected IntegerLiteralImpl() {
    }

    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.INTEGER_LITERAL;
    }

    public BigInteger getValue() {
        return this.value;
    }

    public void setValue(BigInteger newValue) {
        BigInteger oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    public void unsetValue() {
        BigInteger oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    public boolean isSetValue() {
        return this.valueESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setValue((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
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

