/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.communication.filter.impl;

import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.NewIsOutside;
import autosar21.swcomponent.communication.filter.impl.DataFilterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class NewIsOutsideImpl
extends DataFilterImpl
implements NewIsOutside {
    protected static final Integer MAX_EDEFAULT = new Integer(0);
    protected Integer max = MAX_EDEFAULT;
    protected boolean maxESet;
    protected static final Integer MIN_EDEFAULT = new Integer(0);
    protected Integer min = MIN_EDEFAULT;
    protected boolean minESet;

    protected NewIsOutsideImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.NEW_IS_OUTSIDE;
    }

    public Integer getMax() {
        return this.max;
    }

    public void setMax(Integer newMax) {
        Integer oldMax = this.max;
        this.max = newMax;
        boolean oldMaxESet = this.maxESet;
        this.maxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMax, (Object)this.max, !oldMaxESet));
        }
    }

    public void unsetMax() {
        Integer oldMax = this.max;
        boolean oldMaxESet = this.maxESet;
        this.max = MAX_EDEFAULT;
        this.maxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMax, (Object)MAX_EDEFAULT, oldMaxESet));
        }
    }

    public boolean isSetMax() {
        return this.maxESet;
    }

    public Integer getMin() {
        return this.min;
    }

    public void setMin(Integer newMin) {
        Integer oldMin = this.min;
        this.min = newMin;
        boolean oldMinESet = this.minESet;
        this.minESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMin, (Object)this.min, !oldMinESet));
        }
    }

    public void unsetMin() {
        Integer oldMin = this.min;
        boolean oldMinESet = this.minESet;
        this.min = MIN_EDEFAULT;
        this.minESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMin, (Object)MIN_EDEFAULT, oldMinESet));
        }
    }

    public boolean isSetMin() {
        return this.minESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMax();
            }
            case 6: {
                return this.getMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMax((Integer)newValue);
                return;
            }
            case 6: {
                this.setMin((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetMax();
                return;
            }
            case 6: {
                this.unsetMin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetMax();
            }
            case 6: {
                return this.isSetMin();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (max: ");
        if (this.maxESet) {
            result.append(this.max);
        } else {
            result.append("<unset>");
        }
        result.append(", min: ");
        if (this.minESet) {
            result.append(this.min);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

