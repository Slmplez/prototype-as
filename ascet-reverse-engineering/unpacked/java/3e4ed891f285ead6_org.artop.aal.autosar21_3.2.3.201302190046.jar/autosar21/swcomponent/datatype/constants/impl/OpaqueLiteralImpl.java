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
package autosar21.swcomponent.datatype.constants.impl;

import autosar21.swcomponent.datatype.constants.ConstantsPackage;
import autosar21.swcomponent.datatype.constants.OpaqueLiteral;
import autosar21.swcomponent.datatype.constants.impl.PrimitiveSpecificationImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OpaqueLiteralImpl
extends PrimitiveSpecificationImpl
implements OpaqueLiteral {
    protected static final String VALUE_EDEFAULT = "";
    protected String value = "";
    protected boolean valueESet;

    protected OpaqueLiteralImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ConstantsPackage.Literals.OPAQUE_LITERAL;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldValue, (Object)this.value, !oldValueESet));
        }
    }

    @Override
    public void unsetValue() {
        String oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = VALUE_EDEFAULT;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldValue, (Object)VALUE_EDEFAULT, oldValueESet));
        }
    }

    @Override
    public boolean isSetValue() {
        return this.valueESet;
    }

    @Override
    public boolean _datatypeisopaque(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setValue((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
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

