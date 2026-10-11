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
package autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MultidimensionalTimeImpl
extends ARObjectImpl
implements MultidimensionalTime {
    protected static final Integer CSE_CODE_EDEFAULT = new Integer(0);
    protected Integer cseCode = CSE_CODE_EDEFAULT;
    protected boolean cseCodeESet;
    protected static final IntegerDatatype CSE_CODE_FACTOR_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cseCodeFactor = CSE_CODE_FACTOR_EDEFAULT.clone();
    protected boolean cseCodeFactorESet;

    protected MultidimensionalTimeImpl() {
    }

    protected EClass eStaticClass() {
        return MultidimensionaltimePackage.Literals.MULTIDIMENSIONAL_TIME;
    }

    public Integer getCseCode() {
        return this.cseCode;
    }

    public void setCseCode(Integer newCseCode) {
        Integer oldCseCode = this.cseCode;
        this.cseCode = newCseCode;
        boolean oldCseCodeESet = this.cseCodeESet;
        this.cseCodeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCseCode, (Object)this.cseCode, !oldCseCodeESet));
        }
    }

    public void unsetCseCode() {
        Integer oldCseCode = this.cseCode;
        boolean oldCseCodeESet = this.cseCodeESet;
        this.cseCode = CSE_CODE_EDEFAULT;
        this.cseCodeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldCseCode, (Object)CSE_CODE_EDEFAULT, oldCseCodeESet));
        }
    }

    public boolean isSetCseCode() {
        return this.cseCodeESet;
    }

    public Integer getCseCodeFactor() {
        return (Integer)this.cseCodeFactor.basicGetValue();
    }

    public void setCseCodeFactor(Integer newCseCodeFactor) {
        Integer oldCseCodeFactor = (Integer)this.cseCodeFactor.basicGetValue();
        this.cseCodeFactor.basicSetValue((Object)newCseCodeFactor);
        boolean oldCseCodeFactorESet = this.cseCodeFactorESet;
        this.cseCodeFactorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCseCodeFactor, (Object)newCseCodeFactor, !oldCseCodeFactorESet));
        }
    }

    public void unsetCseCodeFactor() {
        Integer oldCseCodeFactor = (Integer)this.cseCodeFactor.basicGetValue();
        boolean oldCseCodeFactorESet = this.cseCodeFactorESet;
        this.cseCodeFactor = CSE_CODE_FACTOR_EDEFAULT.clone();
        this.cseCodeFactorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCseCodeFactor, (Object)CSE_CODE_FACTOR_EDEFAULT, oldCseCodeFactorESet));
        }
    }

    public boolean isSetCseCodeFactor() {
        return this.cseCodeFactorESet;
    }

    public IntegerDatatype getCseCodeFactorData() {
        return this.cseCodeFactor.clone();
    }

    public void setCseCodeFactorData(IntegerDatatype newCseCodeFactor) {
        this.cseCodeFactor.setRadix((int)newCseCodeFactor.getRadix());
        this.cseCodeFactor.setNoOfDigits((int)newCseCodeFactor.getNoOfDigits());
        this.setCseCodeFactor(newCseCodeFactor.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCseCode();
            }
            case 5: {
                return this.getCseCodeFactor();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCseCode((Integer)newValue);
                return;
            }
            case 5: {
                this.setCseCodeFactor((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetCseCode();
                return;
            }
            case 5: {
                this.unsetCseCodeFactor();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetCseCode();
            }
            case 5: {
                return this.isSetCseCodeFactor();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cseCode: ");
        if (this.cseCodeESet) {
            result.append(this.cseCode);
        } else {
            result.append("<unset>");
        }
        result.append(", cseCodeFactor: ");
        if (this.cseCodeFactorESet) {
            result.append(this.cseCodeFactor);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

