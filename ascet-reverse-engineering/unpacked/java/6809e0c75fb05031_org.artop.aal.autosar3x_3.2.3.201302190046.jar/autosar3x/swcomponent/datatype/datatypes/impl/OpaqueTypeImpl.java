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
package autosar3x.swcomponent.datatype.datatypes.impl;

import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.OpaqueType;
import autosar3x.swcomponent.datatype.datatypes.impl.PrimitiveTypeImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OpaqueTypeImpl
extends PrimitiveTypeImpl
implements OpaqueType {
    protected static final Integer NUMBER_OF_BITS_EDEFAULT = new Integer(0);
    protected Integer numberOfBits = NUMBER_OF_BITS_EDEFAULT;
    protected boolean numberOfBitsESet;

    protected OpaqueTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.OPAQUE_TYPE;
    }

    @Override
    public Integer getNumberOfBits() {
        return this.numberOfBits;
    }

    @Override
    public void setNumberOfBits(Integer newNumberOfBits) {
        Integer oldNumberOfBits = this.numberOfBits;
        this.numberOfBits = newNumberOfBits;
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBitsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNumberOfBits, (Object)this.numberOfBits, !oldNumberOfBitsESet));
        }
    }

    @Override
    public void unsetNumberOfBits() {
        Integer oldNumberOfBits = this.numberOfBits;
        boolean oldNumberOfBitsESet = this.numberOfBitsESet;
        this.numberOfBits = NUMBER_OF_BITS_EDEFAULT;
        this.numberOfBitsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldNumberOfBits, (Object)NUMBER_OF_BITS_EDEFAULT, oldNumberOfBitsESet));
        }
    }

    @Override
    public boolean isSetNumberOfBits() {
        return this.numberOfBitsESet;
    }

    @Override
    public boolean numberOfBits0(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getNumberOfBits();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setNumberOfBits((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetNumberOfBits();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetNumberOfBits();
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
        result.append(" (numberOfBits: ");
        if (this.numberOfBitsESet) {
            result.append(this.numberOfBits);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

