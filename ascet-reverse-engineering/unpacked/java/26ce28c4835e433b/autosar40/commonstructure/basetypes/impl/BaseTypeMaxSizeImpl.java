/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseTypeMaxSize;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.impl.BaseTypeSizeDefinitionImpl;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseTypeMaxSizeImpl
extends BaseTypeSizeDefinitionImpl
implements BaseTypeMaxSize {
    protected static final Integer GMAX_BASE_TYPE_SIZE_EDEFAULT = null;
    protected static final IntegerDatatype MAX_BASE_TYPE_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype maxBaseTypeSize = MAX_BASE_TYPE_SIZE_EDEFAULT.clone();
    protected boolean maxBaseTypeSizeESet;

    protected BaseTypeMaxSizeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_MAX_SIZE;
    }

    public Integer gGetMaxBaseTypeSize() {
        Integer tgtFeatureValue = this.getMaxBaseTypeSize();
        return tgtFeatureValue;
    }

    public void gSetMaxBaseTypeSize(Integer newGMaxBaseTypeSize) {
        this.setMaxBaseTypeSize(newGMaxBaseTypeSize);
    }

    public void gUnsetMaxBaseTypeSize() {
        this.unsetMaxBaseTypeSize();
    }

    public boolean gIsSetMaxBaseTypeSize() {
        return this.isSetMaxBaseTypeSize();
    }

    @Override
    public Integer getMaxBaseTypeSize() {
        return (Integer)this.maxBaseTypeSize.basicGetValue();
    }

    @Override
    public void setMaxBaseTypeSize(Integer newMaxBaseTypeSize) {
        Integer oldMaxBaseTypeSize = (Integer)this.maxBaseTypeSize.basicGetValue();
        this.maxBaseTypeSize.basicSetValue((Object)newMaxBaseTypeSize);
        boolean oldMaxBaseTypeSizeESet = this.maxBaseTypeSizeESet;
        this.maxBaseTypeSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxBaseTypeSize, (Object)newMaxBaseTypeSize, !oldMaxBaseTypeSizeESet));
        }
    }

    @Override
    public void unsetMaxBaseTypeSize() {
        Integer oldMaxBaseTypeSize = (Integer)this.maxBaseTypeSize.basicGetValue();
        boolean oldMaxBaseTypeSizeESet = this.maxBaseTypeSizeESet;
        this.maxBaseTypeSize = MAX_BASE_TYPE_SIZE_EDEFAULT.clone();
        this.maxBaseTypeSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxBaseTypeSize, (Object)MAX_BASE_TYPE_SIZE_EDEFAULT, oldMaxBaseTypeSizeESet));
        }
    }

    @Override
    public boolean isSetMaxBaseTypeSize() {
        return this.maxBaseTypeSizeESet;
    }

    @Override
    public IntegerDatatype getMaxBaseTypeSizeData() {
        return this.maxBaseTypeSize.clone();
    }

    @Override
    public void setMaxBaseTypeSizeData(IntegerDatatype newMaxBaseTypeSize) {
        this.maxBaseTypeSize.setRadix((int)newMaxBaseTypeSize.getRadix());
        this.maxBaseTypeSize.setNoOfDigits((int)newMaxBaseTypeSize.getNoOfDigits());
        this.setMaxBaseTypeSize(newMaxBaseTypeSize.getValue());
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetMaxBaseTypeSize();
            }
            case 6: {
                return this.getMaxBaseTypeSize();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetMaxBaseTypeSize((Integer)newValue);
                return;
            }
            case 6: {
                this.setMaxBaseTypeSize((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetMaxBaseTypeSize();
                return;
            }
            case 6: {
                this.unsetMaxBaseTypeSize();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetMaxBaseTypeSize();
            }
            case 6: {
                return this.isSetMaxBaseTypeSize();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseTypeMaxSize.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseTypeMaxSize.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
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
        result.append(" (maxBaseTypeSize: ");
        if (this.maxBaseTypeSizeESet) {
            result.append(this.maxBaseTypeSize);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

