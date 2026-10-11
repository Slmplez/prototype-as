/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.datatype.datatypes.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.datatype.datatypes.ARLimit;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ARLimitImpl
extends ARObjectImpl
implements ARLimit {
    protected static final GIntervalTypeEnum GINTERVAL_TYPE_EDEFAULT = GIntervalTypeEnum.CLOSED;
    protected static final String GVALUE_EDEFAULT = null;
    protected static final IntervalTypeEnum INTERVAL_TYPE_EDEFAULT = IntervalTypeEnum.OPEN;
    protected IntervalTypeEnum intervalType = INTERVAL_TYPE_EDEFAULT;
    protected boolean intervalTypeESet;
    protected static final String VALUE_EDEFAULT = "";
    protected String value = "";
    protected boolean valueESet;

    protected ARLimitImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.AR_LIMIT;
    }

    public GIntervalTypeEnum gGetIntervalType() {
        return GIntervalTypeEnum.getByName((String)this.getIntervalType().getName());
    }

    public void gSetIntervalType(GIntervalTypeEnum newGIntervalType) {
        this.setIntervalType(IntervalTypeEnum.getByName(newGIntervalType.getName()));
    }

    public void gUnsetIntervalType() {
        this.unsetIntervalType();
    }

    public boolean gIsSetIntervalType() {
        return this.isSetIntervalType();
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
    public IntervalTypeEnum getIntervalType() {
        return this.intervalType;
    }

    @Override
    public void setIntervalType(IntervalTypeEnum newIntervalType) {
        IntervalTypeEnum oldIntervalType = this.intervalType;
        this.intervalType = newIntervalType == null ? INTERVAL_TYPE_EDEFAULT : newIntervalType;
        boolean oldIntervalTypeESet = this.intervalTypeESet;
        this.intervalTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldIntervalType, (Object)this.intervalType, !oldIntervalTypeESet));
        }
    }

    @Override
    public void unsetIntervalType() {
        IntervalTypeEnum oldIntervalType = this.intervalType;
        boolean oldIntervalTypeESet = this.intervalTypeESet;
        this.intervalType = INTERVAL_TYPE_EDEFAULT;
        this.intervalTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldIntervalType, (Object)INTERVAL_TYPE_EDEFAULT, oldIntervalTypeESet));
        }
    }

    @Override
    public boolean isSetIntervalType() {
        return this.intervalTypeESet;
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
            case 4: {
                return this.gGetIntervalType();
            }
            case 5: {
                return this.gGetValue();
            }
            case 6: {
                return this.getIntervalType();
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
            case 4: {
                this.gSetIntervalType((GIntervalTypeEnum)newValue);
                return;
            }
            case 5: {
                this.gSetValue((String)newValue);
                return;
            }
            case 6: {
                this.setIntervalType((IntervalTypeEnum)((Object)newValue));
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
            case 4: {
                this.gUnsetIntervalType();
                return;
            }
            case 5: {
                this.gUnsetValue();
                return;
            }
            case 6: {
                this.unsetIntervalType();
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
            case 4: {
                return this.gIsSetIntervalType();
            }
            case 5: {
                return this.gIsSetValue();
            }
            case 6: {
                return this.isSetIntervalType();
            }
            case 7: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAbstractLimit.class) {
            switch (derivedFeatureID) {
                case 4: {
                    return 2;
                }
            }
            return -1;
        }
        if (baseClass == GARLimit.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 3;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GAbstractLimit.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 4;
                }
            }
            return -1;
        }
        if (baseClass == GARLimit.class) {
            switch (baseFeatureID) {
                case 3: {
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
        result.append(" (intervalType: ");
        if (this.intervalTypeESet) {
            result.append((Object)this.intervalType);
        } else {
            result.append("<unset>");
        }
        result.append(", value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

