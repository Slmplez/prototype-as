/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.filter.impl;

import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.MaskedNewDiffersX;
import autosar3x.commonstructure.filter.impl.DataFilterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MaskedNewDiffersXImpl
extends DataFilterImpl
implements MaskedNewDiffersX {
    protected static final Integer MASK_EDEFAULT = new Integer(0);
    protected Integer mask = MASK_EDEFAULT;
    protected boolean maskESet;
    protected static final Integer X_EDEFAULT = new Integer(0);
    protected Integer x = X_EDEFAULT;
    protected boolean xESet;

    protected MaskedNewDiffersXImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.MASKED_NEW_DIFFERS_X;
    }

    public Integer getMask() {
        return this.mask;
    }

    public void setMask(Integer newMask) {
        Integer oldMask = this.mask;
        this.mask = newMask;
        boolean oldMaskESet = this.maskESet;
        this.maskESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMask, (Object)this.mask, !oldMaskESet));
        }
    }

    public void unsetMask() {
        Integer oldMask = this.mask;
        boolean oldMaskESet = this.maskESet;
        this.mask = MASK_EDEFAULT;
        this.maskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMask, (Object)MASK_EDEFAULT, oldMaskESet));
        }
    }

    public boolean isSetMask() {
        return this.maskESet;
    }

    public Integer getX() {
        return this.x;
    }

    public void setX(Integer newX) {
        Integer oldX = this.x;
        this.x = newX;
        boolean oldXESet = this.xESet;
        this.xESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldX, (Object)this.x, !oldXESet));
        }
    }

    public void unsetX() {
        Integer oldX = this.x;
        boolean oldXESet = this.xESet;
        this.x = X_EDEFAULT;
        this.xESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldX, (Object)X_EDEFAULT, oldXESet));
        }
    }

    public boolean isSetX() {
        return this.xESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMask();
            }
            case 5: {
                return this.getX();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMask((Integer)newValue);
                return;
            }
            case 5: {
                this.setX((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMask();
                return;
            }
            case 5: {
                this.unsetX();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMask();
            }
            case 5: {
                return this.isSetX();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mask: ");
        if (this.maskESet) {
            result.append(this.mask);
        } else {
            result.append("<unset>");
        }
        result.append(", x: ");
        if (this.xESet) {
            result.append(this.x);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

