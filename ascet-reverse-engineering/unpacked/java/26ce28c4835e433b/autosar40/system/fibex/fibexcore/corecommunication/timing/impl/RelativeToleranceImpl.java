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
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimeRangeTypeToleranceImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RelativeToleranceImpl
extends TimeRangeTypeToleranceImpl
implements RelativeTolerance {
    protected static final IntegerDatatype RELATIVE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype relative = RELATIVE_EDEFAULT.clone();
    protected boolean relativeESet;

    protected RelativeToleranceImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.RELATIVE_TOLERANCE;
    }

    public Integer getRelative() {
        return (Integer)this.relative.basicGetValue();
    }

    public void setRelative(Integer newRelative) {
        Integer oldRelative = (Integer)this.relative.basicGetValue();
        this.relative.basicSetValue((Object)newRelative);
        boolean oldRelativeESet = this.relativeESet;
        this.relativeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRelative, (Object)newRelative, !oldRelativeESet));
        }
    }

    public void unsetRelative() {
        Integer oldRelative = (Integer)this.relative.basicGetValue();
        boolean oldRelativeESet = this.relativeESet;
        this.relative = RELATIVE_EDEFAULT.clone();
        this.relativeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldRelative, (Object)RELATIVE_EDEFAULT, oldRelativeESet));
        }
    }

    public boolean isSetRelative() {
        return this.relativeESet;
    }

    public IntegerDatatype getRelativeData() {
        return this.relative.clone();
    }

    public void setRelativeData(IntegerDatatype newRelative) {
        this.relative.setRadix((int)newRelative.getRadix());
        this.relative.setNoOfDigits((int)newRelative.getNoOfDigits());
        this.setRelative(newRelative.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getRelative();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setRelative((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetRelative();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetRelative();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (relative: ");
        if (this.relativeESet) {
            result.append(this.relative);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

