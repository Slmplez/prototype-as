/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimeRangeTypeToleranceImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AbsoluteToleranceImpl
extends TimeRangeTypeToleranceImpl
implements AbsoluteTolerance {
    protected static final Double ABSOLUTE_EDEFAULT = new Double(0.0);
    protected Double absolute = ABSOLUTE_EDEFAULT;
    protected boolean absoluteESet;

    protected AbsoluteToleranceImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.ABSOLUTE_TOLERANCE;
    }

    public Double getAbsolute() {
        return this.absolute;
    }

    public void setAbsolute(Double newAbsolute) {
        Double oldAbsolute = this.absolute;
        this.absolute = newAbsolute;
        boolean oldAbsoluteESet = this.absoluteESet;
        this.absoluteESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldAbsolute, (Object)this.absolute, !oldAbsoluteESet));
        }
    }

    public void unsetAbsolute() {
        Double oldAbsolute = this.absolute;
        boolean oldAbsoluteESet = this.absoluteESet;
        this.absolute = ABSOLUTE_EDEFAULT;
        this.absoluteESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldAbsolute, (Object)ABSOLUTE_EDEFAULT, oldAbsoluteESet));
        }
    }

    public boolean isSetAbsolute() {
        return this.absoluteESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getAbsolute();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setAbsolute((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetAbsolute();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetAbsolute();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (absolute: ");
        if (this.absoluteESet) {
            result.append(this.absolute);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

