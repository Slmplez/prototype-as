/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationBaseT;
import com.etas.amd620.core.ComponentImplementation.impl.PrimitiveImplementationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NumericImplementationBaseTImpl
extends PrimitiveImplementationTImpl
implements NumericImplementationBaseT {
    protected static final boolean IS_LIMIT_OVERFLOW_EDEFAULT = false;
    protected boolean isLimitOverflow = false;
    protected boolean isLimitOverflowESet;
    protected static final boolean LIMIT_ASSIGNMENTS_EDEFAULT = false;
    protected boolean limitAssignments = false;
    protected boolean limitAssignmentsESet;
    protected static final LimitOverflowType LIMIT_OVERFLOW_EDEFAULT = LimitOverflowType.NONE;
    protected LimitOverflowType limitOverflow = LIMIT_OVERFLOW_EDEFAULT;
    protected boolean limitOverflowESet;

    protected NumericImplementationBaseTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.NUMERIC_IMPLEMENTATION_BASE_T;
    }

    @Override
    public boolean isIsLimitOverflow() {
        return this.isLimitOverflow;
    }

    @Override
    public void setIsLimitOverflow(boolean newIsLimitOverflow) {
        boolean oldIsLimitOverflow = this.isLimitOverflow;
        this.isLimitOverflow = newIsLimitOverflow;
        boolean oldIsLimitOverflowESet = this.isLimitOverflowESet;
        this.isLimitOverflowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldIsLimitOverflow, this.isLimitOverflow, !oldIsLimitOverflowESet));
        }
    }

    @Override
    public void unsetIsLimitOverflow() {
        boolean oldIsLimitOverflow = this.isLimitOverflow;
        boolean oldIsLimitOverflowESet = this.isLimitOverflowESet;
        this.isLimitOverflow = false;
        this.isLimitOverflowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldIsLimitOverflow, false, oldIsLimitOverflowESet));
        }
    }

    @Override
    public boolean isSetIsLimitOverflow() {
        return this.isLimitOverflowESet;
    }

    @Override
    public boolean isLimitAssignments() {
        return this.limitAssignments;
    }

    @Override
    public void setLimitAssignments(boolean newLimitAssignments) {
        boolean oldLimitAssignments = this.limitAssignments;
        this.limitAssignments = newLimitAssignments;
        boolean oldLimitAssignmentsESet = this.limitAssignmentsESet;
        this.limitAssignmentsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldLimitAssignments, this.limitAssignments, !oldLimitAssignmentsESet));
        }
    }

    @Override
    public void unsetLimitAssignments() {
        boolean oldLimitAssignments = this.limitAssignments;
        boolean oldLimitAssignmentsESet = this.limitAssignmentsESet;
        this.limitAssignments = false;
        this.limitAssignmentsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldLimitAssignments, false, oldLimitAssignmentsESet));
        }
    }

    @Override
    public boolean isSetLimitAssignments() {
        return this.limitAssignmentsESet;
    }

    @Override
    public LimitOverflowType getLimitOverflow() {
        return this.limitOverflow;
    }

    @Override
    public void setLimitOverflow(LimitOverflowType newLimitOverflow) {
        LimitOverflowType oldLimitOverflow = this.limitOverflow;
        this.limitOverflow = newLimitOverflow == null ? LIMIT_OVERFLOW_EDEFAULT : newLimitOverflow;
        boolean oldLimitOverflowESet = this.limitOverflowESet;
        this.limitOverflowESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldLimitOverflow, (Object)this.limitOverflow, !oldLimitOverflowESet));
        }
    }

    @Override
    public void unsetLimitOverflow() {
        LimitOverflowType oldLimitOverflow = this.limitOverflow;
        boolean oldLimitOverflowESet = this.limitOverflowESet;
        this.limitOverflow = LIMIT_OVERFLOW_EDEFAULT;
        this.limitOverflowESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldLimitOverflow, (Object)LIMIT_OVERFLOW_EDEFAULT, oldLimitOverflowESet));
        }
    }

    @Override
    public boolean isSetLimitOverflow() {
        return this.limitOverflowESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.isIsLimitOverflow();
            }
            case 8: {
                return this.isLimitAssignments();
            }
            case 9: {
                return this.getLimitOverflow();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setIsLimitOverflow((Boolean)newValue);
                return;
            }
            case 8: {
                this.setLimitAssignments((Boolean)newValue);
                return;
            }
            case 9: {
                this.setLimitOverflow((LimitOverflowType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.unsetIsLimitOverflow();
                return;
            }
            case 8: {
                this.unsetLimitAssignments();
                return;
            }
            case 9: {
                this.unsetLimitOverflow();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.isSetIsLimitOverflow();
            }
            case 8: {
                return this.isSetLimitAssignments();
            }
            case 9: {
                return this.isSetLimitOverflow();
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
        result.append(" (isLimitOverflow: ");
        if (this.isLimitOverflowESet) {
            result.append(this.isLimitOverflow);
        } else {
            result.append("<unset>");
        }
        result.append(", limitAssignments: ");
        if (this.limitAssignmentsESet) {
            result.append(this.limitAssignments);
        } else {
            result.append("<unset>");
        }
        result.append(", limitOverflow: ");
        if (this.limitOverflowESet) {
            result.append((Object)this.limitOverflow);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

