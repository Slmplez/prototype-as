/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.datatype.localconstraints.impl;

import autosar3x.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValueByFormulaImpl;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LimitImpl
extends ValueByFormulaImpl
implements Limit {
    protected static final GIntervalTypeEnum GINTERVAL_TYPE_EDEFAULT = GIntervalTypeEnum.CLOSED;
    protected static final IntervalTypeEnum INTERVAL_TYPE_EDEFAULT = IntervalTypeEnum.CLOSED;
    protected IntervalTypeEnum intervalType = INTERVAL_TYPE_EDEFAULT;
    protected boolean intervalTypeESet;

    protected LimitImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return LocalconstraintsPackage.Literals.LIMIT;
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
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.gGetIntervalType();
            }
            case 6: {
                return this.getIntervalType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.gSetIntervalType((GIntervalTypeEnum)newValue);
                return;
            }
            case 6: {
                this.setIntervalType((IntervalTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.gUnsetIntervalType();
                return;
            }
            case 6: {
                this.unsetIntervalType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.gIsSetIntervalType();
            }
            case 6: {
                return this.isSetIntervalType();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAbstractLimit.class) {
            switch (derivedFeatureID) {
                case 5: {
                    return 2;
                }
            }
            return -1;
        }
        if (baseClass == GLimit.class) {
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GAbstractLimit.class) {
            switch (baseFeatureID) {
                case 2: {
                    return 5;
                }
            }
            return -1;
        }
        if (baseClass == GLimit.class) {
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
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
        result.append(')');
        return result.toString();
    }
}

