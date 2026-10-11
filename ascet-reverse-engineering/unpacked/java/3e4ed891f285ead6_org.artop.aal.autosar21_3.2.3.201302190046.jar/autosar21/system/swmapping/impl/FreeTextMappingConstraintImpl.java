/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.swmapping.impl;

import autosar21.system.swmapping.FreeTextMappingConstraint;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.MappingConstraintImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FreeTextMappingConstraintImpl
extends MappingConstraintImpl
implements FreeTextMappingConstraint {
    protected static final String CONSTRAINT_EXPRESSION_EDEFAULT = "";
    protected String constraintExpression = "";
    protected boolean constraintExpressionESet;

    protected FreeTextMappingConstraintImpl() {
    }

    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.FREE_TEXT_MAPPING_CONSTRAINT;
    }

    public String getConstraintExpression() {
        return this.constraintExpression;
    }

    public void setConstraintExpression(String newConstraintExpression) {
        String oldConstraintExpression = this.constraintExpression;
        this.constraintExpression = newConstraintExpression;
        boolean oldConstraintExpressionESet = this.constraintExpressionESet;
        this.constraintExpressionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldConstraintExpression, (Object)this.constraintExpression, !oldConstraintExpressionESet));
        }
    }

    public void unsetConstraintExpression() {
        String oldConstraintExpression = this.constraintExpression;
        boolean oldConstraintExpressionESet = this.constraintExpressionESet;
        this.constraintExpression = CONSTRAINT_EXPRESSION_EDEFAULT;
        this.constraintExpressionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldConstraintExpression, (Object)CONSTRAINT_EXPRESSION_EDEFAULT, oldConstraintExpressionESet));
        }
    }

    public boolean isSetConstraintExpression() {
        return this.constraintExpressionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getConstraintExpression();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setConstraintExpression((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetConstraintExpression();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetConstraintExpression();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (constraintExpression: ");
        if (this.constraintExpressionESet) {
            result.append(this.constraintExpression);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

