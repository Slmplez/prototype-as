/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.datatype.localconstraints.impl;

import autosar40.genericstructure.varianthandling.impl.AbstractNumericalVariationPointImpl;
import autosar40.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GIntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class LimitImpl
extends AbstractNumericalVariationPointImpl
implements Limit {
    protected static final GIntervalTypeEnum GINTERVAL_TYPE_EDEFAULT = GIntervalTypeEnum.CLOSED;
    protected static final String GVALUE_EDEFAULT = null;
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

    public String gGetValue() {
        String tgtFeatureValue = this.getMixedText();
        return tgtFeatureValue;
    }

    public void gSetValue(String newGValue) {
        this.setMixedText(newGValue);
    }

    public void gUnsetValue() {
        this.unsetMixed();
    }

    public boolean gIsSetValue() {
        return this.isSetMixed();
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldIntervalType, (Object)this.intervalType, !oldIntervalTypeESet));
        }
    }

    @Override
    public void unsetIntervalType() {
        IntervalTypeEnum oldIntervalType = this.intervalType;
        boolean oldIntervalTypeESet = this.intervalTypeESet;
        this.intervalType = INTERVAL_TYPE_EDEFAULT;
        this.intervalTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldIntervalType, (Object)INTERVAL_TYPE_EDEFAULT, oldIntervalTypeESet));
        }
    }

    @Override
    public boolean isSetIntervalType() {
        return this.intervalTypeESet;
    }

    @Override
    public boolean bindingTimePreCompiletime(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 12: {
                return this.gGetIntervalType();
            }
            case 13: {
                return this.gGetValue();
            }
            case 14: {
                return this.getIntervalType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 12: {
                this.gSetIntervalType((GIntervalTypeEnum)newValue);
                return;
            }
            case 13: {
                this.gSetValue((String)newValue);
                return;
            }
            case 14: {
                this.setIntervalType((IntervalTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 12: {
                this.gUnsetIntervalType();
                return;
            }
            case 13: {
                this.gUnsetValue();
                return;
            }
            case 14: {
                this.unsetIntervalType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 12: {
                return this.gIsSetIntervalType();
            }
            case 13: {
                return this.gIsSetValue();
            }
            case 14: {
                return this.isSetIntervalType();
            }
        }
        return super.eIsSet(featureID);
    }

    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GAbstractLimit.class) {
            switch (derivedFeatureID) {
                case 12: {
                    return 2;
                }
            }
            return -1;
        }
        if (baseClass == GARLimit.class) {
            switch (derivedFeatureID) {
                case 13: {
                    return 3;
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
                    return 12;
                }
            }
            return -1;
        }
        if (baseClass == GARLimit.class) {
            switch (baseFeatureID) {
                case 3: {
                    return 13;
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

