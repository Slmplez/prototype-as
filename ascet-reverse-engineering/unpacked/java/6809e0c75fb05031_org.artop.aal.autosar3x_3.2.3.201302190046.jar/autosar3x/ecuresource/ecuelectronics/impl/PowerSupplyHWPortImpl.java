/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.basicelements.ElectricalRange;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar3x.ecuresource.impl.HWPortImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PowerSupplyHWPortImpl
extends HWPortImpl
implements PowerSupplyHWPort {
    protected static final Boolean CAN_BE_SWITCHED_OFF_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeSwitchedOff = CAN_BE_SWITCHED_OFF_EDEFAULT;
    protected boolean canBeSwitchedOffESet;
    protected ElectricalRange supplied;

    protected PowerSupplyHWPortImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_SUPPLY_HW_PORT;
    }

    @Override
    public Boolean getCanBeSwitchedOff() {
        return this.canBeSwitchedOff;
    }

    @Override
    public void setCanBeSwitchedOff(Boolean newCanBeSwitchedOff) {
        Boolean oldCanBeSwitchedOff = this.canBeSwitchedOff;
        this.canBeSwitchedOff = newCanBeSwitchedOff;
        boolean oldCanBeSwitchedOffESet = this.canBeSwitchedOffESet;
        this.canBeSwitchedOffESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldCanBeSwitchedOff, (Object)this.canBeSwitchedOff, !oldCanBeSwitchedOffESet));
        }
    }

    @Override
    public void unsetCanBeSwitchedOff() {
        Boolean oldCanBeSwitchedOff = this.canBeSwitchedOff;
        boolean oldCanBeSwitchedOffESet = this.canBeSwitchedOffESet;
        this.canBeSwitchedOff = CAN_BE_SWITCHED_OFF_EDEFAULT;
        this.canBeSwitchedOffESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldCanBeSwitchedOff, (Object)CAN_BE_SWITCHED_OFF_EDEFAULT, oldCanBeSwitchedOffESet));
        }
    }

    @Override
    public boolean isSetCanBeSwitchedOff() {
        return this.canBeSwitchedOffESet;
    }

    @Override
    public ElectricalRange getSupplied() {
        return this.supplied;
    }

    public NotificationChain basicSetSupplied(ElectricalRange newSupplied, NotificationChain msgs) {
        ElectricalRange oldSupplied = this.supplied;
        this.supplied = newSupplied;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldSupplied, (Object)newSupplied);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupplied(ElectricalRange newSupplied) {
        if (newSupplied != this.supplied) {
            NotificationChain msgs = null;
            if (this.supplied != null) {
                msgs = ((InternalEObject)this.supplied).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newSupplied != null) {
                msgs = ((InternalEObject)newSupplied).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetSupplied(newSupplied, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newSupplied, (Object)newSupplied));
        }
    }

    @Override
    public boolean _directioninordirectionout(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetSupplied(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getCanBeSwitchedOff();
            }
            case 21: {
                return this.getSupplied();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setCanBeSwitchedOff((Boolean)newValue);
                return;
            }
            case 21: {
                this.setSupplied((ElectricalRange)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetCanBeSwitchedOff();
                return;
            }
            case 21: {
                this.setSupplied(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetCanBeSwitchedOff();
            }
            case 21: {
                return this.supplied != null;
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
        result.append(" (canBeSwitchedOff: ");
        if (this.canBeSwitchedOffESet) {
            result.append(this.canBeSwitchedOff);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

