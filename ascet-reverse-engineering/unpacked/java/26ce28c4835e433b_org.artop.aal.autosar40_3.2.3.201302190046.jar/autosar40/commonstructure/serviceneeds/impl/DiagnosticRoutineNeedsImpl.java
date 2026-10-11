/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagnosticRoutineNeeds;
import autosar40.commonstructure.serviceneeds.DiagnosticRoutineTypeEnum;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagnosticCapabilityElementImpl;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DiagnosticRoutineNeedsImpl
extends DiagnosticCapabilityElementImpl
implements DiagnosticRoutineNeeds {
    protected static final DiagnosticRoutineTypeEnum DIAG_ROUTINE_TYPE_EDEFAULT = DiagnosticRoutineTypeEnum.SYNCHRONOUS;
    protected DiagnosticRoutineTypeEnum diagRoutineType = DIAG_ROUTINE_TYPE_EDEFAULT;
    protected boolean diagRoutineTypeESet;
    protected static final PositiveIntegerDatatype RID_NUMBER_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype ridNumber = RID_NUMBER_EDEFAULT.clone();
    protected boolean ridNumberESet;

    protected DiagnosticRoutineNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAGNOSTIC_ROUTINE_NEEDS;
    }

    public DiagnosticRoutineTypeEnum getDiagRoutineType() {
        return this.diagRoutineType;
    }

    public void setDiagRoutineType(DiagnosticRoutineTypeEnum newDiagRoutineType) {
        DiagnosticRoutineTypeEnum oldDiagRoutineType = this.diagRoutineType;
        this.diagRoutineType = newDiagRoutineType == null ? DIAG_ROUTINE_TYPE_EDEFAULT : newDiagRoutineType;
        boolean oldDiagRoutineTypeESet = this.diagRoutineTypeESet;
        this.diagRoutineTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDiagRoutineType, (Object)this.diagRoutineType, !oldDiagRoutineTypeESet));
        }
    }

    public void unsetDiagRoutineType() {
        DiagnosticRoutineTypeEnum oldDiagRoutineType = this.diagRoutineType;
        boolean oldDiagRoutineTypeESet = this.diagRoutineTypeESet;
        this.diagRoutineType = DIAG_ROUTINE_TYPE_EDEFAULT;
        this.diagRoutineTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDiagRoutineType, (Object)DIAG_ROUTINE_TYPE_EDEFAULT, oldDiagRoutineTypeESet));
        }
    }

    public boolean isSetDiagRoutineType() {
        return this.diagRoutineTypeESet;
    }

    public Long getRidNumber() {
        return (Long)this.ridNumber.basicGetValue();
    }

    public void setRidNumber(Long newRidNumber) {
        Long oldRidNumber = (Long)this.ridNumber.basicGetValue();
        this.ridNumber.basicSetValue((Object)newRidNumber);
        boolean oldRidNumberESet = this.ridNumberESet;
        this.ridNumberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldRidNumber, (Object)newRidNumber, !oldRidNumberESet));
        }
    }

    public void unsetRidNumber() {
        Long oldRidNumber = (Long)this.ridNumber.basicGetValue();
        boolean oldRidNumberESet = this.ridNumberESet;
        this.ridNumber = RID_NUMBER_EDEFAULT.clone();
        this.ridNumberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldRidNumber, (Object)RID_NUMBER_EDEFAULT, oldRidNumberESet));
        }
    }

    public boolean isSetRidNumber() {
        return this.ridNumberESet;
    }

    public PositiveIntegerDatatype getRidNumberData() {
        return this.ridNumber.clone();
    }

    public void setRidNumberData(PositiveIntegerDatatype newRidNumber) {
        this.ridNumber.setRadix((int)newRidNumber.getRadix());
        this.ridNumber.setNoOfDigits((int)newRidNumber.getNoOfDigits());
        this.setRidNumber(newRidNumber.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDiagRoutineType();
            }
            case 22: {
                return this.getRidNumber();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDiagRoutineType((DiagnosticRoutineTypeEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setRidNumber((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDiagRoutineType();
                return;
            }
            case 22: {
                this.unsetRidNumber();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDiagRoutineType();
            }
            case 22: {
                return this.isSetRidNumber();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (diagRoutineType: ");
        if (this.diagRoutineTypeESet) {
            result.append((Object)this.diagRoutineType);
        } else {
            result.append("<unset>");
        }
        result.append(", ridNumber: ");
        if (this.ridNumberESet) {
            result.append(this.ridNumber);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

