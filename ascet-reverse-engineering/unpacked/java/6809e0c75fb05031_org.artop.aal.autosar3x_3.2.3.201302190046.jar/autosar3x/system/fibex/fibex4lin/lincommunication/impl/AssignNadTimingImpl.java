/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4lin.lincommunication.impl;

import autosar3x.system.fibex.fibex4lin.lincommunication.AssignNadTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.AssignmentTimingTypeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AssignNadTimingImpl
extends AssignmentTimingTypeImpl
implements AssignNadTiming {
    protected static final Integer NEW_NAD_EDEFAULT = new Integer(0);
    protected Integer newNad = NEW_NAD_EDEFAULT;
    protected boolean newNadESet;

    protected AssignNadTimingImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.ASSIGN_NAD_TIMING;
    }

    public Integer getNewNad() {
        return this.newNad;
    }

    public void setNewNad(Integer newNewNad) {
        Integer oldNewNad = this.newNad;
        this.newNad = newNewNad;
        boolean oldNewNadESet = this.newNadESet;
        this.newNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNewNad, (Object)this.newNad, !oldNewNadESet));
        }
    }

    public void unsetNewNad() {
        Integer oldNewNad = this.newNad;
        boolean oldNewNadESet = this.newNadESet;
        this.newNad = NEW_NAD_EDEFAULT;
        this.newNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldNewNad, (Object)NEW_NAD_EDEFAULT, oldNewNadESet));
        }
    }

    public boolean isSetNewNad() {
        return this.newNadESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getNewNad();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setNewNad((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.unsetNewNad();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.isSetNewNad();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (newNad: ");
        if (this.newNadESet) {
            result.append(this.newNad);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

