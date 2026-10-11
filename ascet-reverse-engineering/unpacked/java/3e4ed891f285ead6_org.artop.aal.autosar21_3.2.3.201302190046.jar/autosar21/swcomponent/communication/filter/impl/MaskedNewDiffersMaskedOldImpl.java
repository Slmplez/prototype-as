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
import autosar21.swcomponent.communication.filter.MaskedNewDiffersMaskedOld;
import autosar21.swcomponent.communication.filter.impl.DataFilterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MaskedNewDiffersMaskedOldImpl
extends DataFilterImpl
implements MaskedNewDiffersMaskedOld {
    protected static final Integer MASK_EDEFAULT = new Integer(0);
    protected Integer mask = MASK_EDEFAULT;
    protected boolean maskESet;

    protected MaskedNewDiffersMaskedOldImpl() {
    }

    protected EClass eStaticClass() {
        return FilterPackage.Literals.MASKED_NEW_DIFFERS_MASKED_OLD;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMask, (Object)this.mask, !oldMaskESet));
        }
    }

    public void unsetMask() {
        Integer oldMask = this.mask;
        boolean oldMaskESet = this.maskESet;
        this.mask = MASK_EDEFAULT;
        this.maskESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMask, (Object)MASK_EDEFAULT, oldMaskESet));
        }
    }

    public boolean isSetMask() {
        return this.maskESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMask();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMask((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetMask();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetMask();
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
        result.append(')');
        return result.toString();
    }
}

