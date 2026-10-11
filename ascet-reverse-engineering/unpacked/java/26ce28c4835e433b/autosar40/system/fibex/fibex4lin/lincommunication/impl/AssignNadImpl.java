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
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.AssignNad;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AssignNadImpl
extends LinConfigurationEntryImpl
implements AssignNad {
    protected static final IntegerDatatype NEW_NAD_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype newNad = NEW_NAD_EDEFAULT.clone();
    protected boolean newNadESet;

    protected AssignNadImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.ASSIGN_NAD;
    }

    public Integer getNewNad() {
        return (Integer)this.newNad.basicGetValue();
    }

    public void setNewNad(Integer newNewNad) {
        Integer oldNewNad = (Integer)this.newNad.basicGetValue();
        this.newNad.basicSetValue((Object)newNewNad);
        boolean oldNewNadESet = this.newNadESet;
        this.newNadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNewNad, (Object)newNewNad, !oldNewNadESet));
        }
    }

    public void unsetNewNad() {
        Integer oldNewNad = (Integer)this.newNad.basicGetValue();
        boolean oldNewNadESet = this.newNadESet;
        this.newNad = NEW_NAD_EDEFAULT.clone();
        this.newNadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldNewNad, (Object)NEW_NAD_EDEFAULT, oldNewNadESet));
        }
    }

    public boolean isSetNewNad() {
        return this.newNadESet;
    }

    public IntegerDatatype getNewNadData() {
        return this.newNad.clone();
    }

    public void setNewNadData(IntegerDatatype newNewNad) {
        this.newNad.setRadix((int)newNewNad.getRadix());
        this.newNad.setNoOfDigits((int)newNewNad.getNoOfDigits());
        this.setNewNad(newNewNad.getValue());
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

