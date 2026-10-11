/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.BindingTimeEnum;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.impl.SwSystemconstDependentFormulaImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ConditionByFormulaImpl
extends SwSystemconstDependentFormulaImpl
implements ConditionByFormula {
    protected static final BindingTimeEnum BINDING_TIME_EDEFAULT = BindingTimeEnum.SYSTEM_DESIGN_TIME;
    protected BindingTimeEnum bindingTime = BINDING_TIME_EDEFAULT;
    protected boolean bindingTimeESet;

    protected ConditionByFormulaImpl() {
    }

    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.CONDITION_BY_FORMULA;
    }

    public BindingTimeEnum getBindingTime() {
        return this.bindingTime;
    }

    public void setBindingTime(BindingTimeEnum newBindingTime) {
        BindingTimeEnum oldBindingTime = this.bindingTime;
        this.bindingTime = newBindingTime == null ? BINDING_TIME_EDEFAULT : newBindingTime;
        boolean oldBindingTimeESet = this.bindingTimeESet;
        this.bindingTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldBindingTime, (Object)this.bindingTime, !oldBindingTimeESet));
        }
    }

    public void unsetBindingTime() {
        BindingTimeEnum oldBindingTime = this.bindingTime;
        boolean oldBindingTimeESet = this.bindingTimeESet;
        this.bindingTime = BINDING_TIME_EDEFAULT;
        this.bindingTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldBindingTime, (Object)BINDING_TIME_EDEFAULT, oldBindingTimeESet));
        }
    }

    public boolean isSetBindingTime() {
        return this.bindingTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getBindingTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setBindingTime((BindingTimeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.unsetBindingTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.isSetBindingTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (bindingTime: ");
        if (this.bindingTimeESet) {
            result.append((Object)this.bindingTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

