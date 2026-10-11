/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseTypeAbsSize;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.impl.BaseTypeSizeDefinitionImpl;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BaseTypeAbsSizeImpl
extends BaseTypeSizeDefinitionImpl
implements BaseTypeAbsSize {
    protected static final Integer GBASE_TYPE_SIZE_EDEFAULT = null;
    protected static final IntegerDatatype BASE_TYPE_SIZE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype baseTypeSize = BASE_TYPE_SIZE_EDEFAULT.clone();
    protected boolean baseTypeSizeESet;

    protected BaseTypeAbsSizeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasetypesPackage.Literals.BASE_TYPE_ABS_SIZE;
    }

    public Integer gGetBaseTypeSize() {
        Integer tgtFeatureValue = this.getBaseTypeSize();
        return tgtFeatureValue;
    }

    public void gSetBaseTypeSize(Integer newGBaseTypeSize) {
        this.setBaseTypeSize(newGBaseTypeSize);
    }

    public void gUnsetBaseTypeSize() {
        this.unsetBaseTypeSize();
    }

    public boolean gIsSetBaseTypeSize() {
        return this.isSetBaseTypeSize();
    }

    @Override
    public Integer getBaseTypeSize() {
        return (Integer)this.baseTypeSize.basicGetValue();
    }

    @Override
    public void setBaseTypeSize(Integer newBaseTypeSize) {
        Integer oldBaseTypeSize = (Integer)this.baseTypeSize.basicGetValue();
        this.baseTypeSize.basicSetValue((Object)newBaseTypeSize);
        boolean oldBaseTypeSizeESet = this.baseTypeSizeESet;
        this.baseTypeSizeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldBaseTypeSize, (Object)newBaseTypeSize, !oldBaseTypeSizeESet));
        }
    }

    @Override
    public void unsetBaseTypeSize() {
        Integer oldBaseTypeSize = (Integer)this.baseTypeSize.basicGetValue();
        boolean oldBaseTypeSizeESet = this.baseTypeSizeESet;
        this.baseTypeSize = BASE_TYPE_SIZE_EDEFAULT.clone();
        this.baseTypeSizeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldBaseTypeSize, (Object)BASE_TYPE_SIZE_EDEFAULT, oldBaseTypeSizeESet));
        }
    }

    @Override
    public boolean isSetBaseTypeSize() {
        return this.baseTypeSizeESet;
    }

    @Override
    public IntegerDatatype getBaseTypeSizeData() {
        return this.baseTypeSize.clone();
    }

    @Override
    public void setBaseTypeSizeData(IntegerDatatype newBaseTypeSize) {
        this.baseTypeSize.setRadix((int)newBaseTypeSize.getRadix());
        this.baseTypeSize.setNoOfDigits((int)newBaseTypeSize.getNoOfDigits());
        this.setBaseTypeSize(newBaseTypeSize.getValue());
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetBaseTypeSize();
            }
            case 6: {
                return this.getBaseTypeSize();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetBaseTypeSize((Integer)newValue);
                return;
            }
            case 6: {
                this.setBaseTypeSize((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetBaseTypeSize();
                return;
            }
            case 6: {
                this.unsetBaseTypeSize();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetBaseTypeSize();
            }
            case 6: {
                return this.isSetBaseTypeSize();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GBaseTypeAbsSize.class) {
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
        if (baseClass == GBaseTypeAbsSize.class) {
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
        result.append(" (baseTypeSize: ");
        if (this.baseTypeSizeESet) {
            result.append(this.baseTypeSize);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

