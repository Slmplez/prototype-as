/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.impl.HWPortImpl;
import autosar21.ecuresource.peripherals.Buffer;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PeripheralHWPortImpl
extends HWPortImpl
implements PeripheralHWPort {
    protected EList<Buffer> buffers;
    protected static final Boolean INVERSION_EDEFAULT = Boolean.FALSE;
    protected Boolean inversion = INVERSION_EDEFAULT;
    protected boolean inversionESet;
    protected static final Boolean POWER_ON_CAPABILITY_EDEFAULT = Boolean.FALSE;
    protected Boolean powerOnCapability = POWER_ON_CAPABILITY_EDEFAULT;
    protected boolean powerOnCapabilityESet;
    protected static final Boolean WAKE_UP_CAPABILITY_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpCapability = WAKE_UP_CAPABILITY_EDEFAULT;
    protected boolean wakeUpCapabilityESet;

    protected PeripheralHWPortImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PERIPHERAL_HW_PORT;
    }

    @Override
    public EList<Buffer> getBuffers() {
        if (this.buffers == null) {
            this.buffers = new EObjectContainmentWithInverseEList(Buffer.class, (InternalEObject)this, 19, 4);
        }
        return this.buffers;
    }

    @Override
    public Boolean getInversion() {
        return this.inversion;
    }

    @Override
    public void setInversion(Boolean newInversion) {
        Boolean oldInversion = this.inversion;
        this.inversion = newInversion;
        boolean oldInversionESet = this.inversionESet;
        this.inversionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldInversion, (Object)this.inversion, !oldInversionESet));
        }
    }

    @Override
    public void unsetInversion() {
        Boolean oldInversion = this.inversion;
        boolean oldInversionESet = this.inversionESet;
        this.inversion = INVERSION_EDEFAULT;
        this.inversionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldInversion, (Object)INVERSION_EDEFAULT, oldInversionESet));
        }
    }

    @Override
    public boolean isSetInversion() {
        return this.inversionESet;
    }

    @Override
    public Boolean getPowerOnCapability() {
        return this.powerOnCapability;
    }

    @Override
    public void setPowerOnCapability(Boolean newPowerOnCapability) {
        Boolean oldPowerOnCapability = this.powerOnCapability;
        this.powerOnCapability = newPowerOnCapability;
        boolean oldPowerOnCapabilityESet = this.powerOnCapabilityESet;
        this.powerOnCapabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldPowerOnCapability, (Object)this.powerOnCapability, !oldPowerOnCapabilityESet));
        }
    }

    @Override
    public void unsetPowerOnCapability() {
        Boolean oldPowerOnCapability = this.powerOnCapability;
        boolean oldPowerOnCapabilityESet = this.powerOnCapabilityESet;
        this.powerOnCapability = POWER_ON_CAPABILITY_EDEFAULT;
        this.powerOnCapabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldPowerOnCapability, (Object)POWER_ON_CAPABILITY_EDEFAULT, oldPowerOnCapabilityESet));
        }
    }

    @Override
    public boolean isSetPowerOnCapability() {
        return this.powerOnCapabilityESet;
    }

    @Override
    public Boolean getWakeUpCapability() {
        return this.wakeUpCapability;
    }

    @Override
    public void setWakeUpCapability(Boolean newWakeUpCapability) {
        Boolean oldWakeUpCapability = this.wakeUpCapability;
        this.wakeUpCapability = newWakeUpCapability;
        boolean oldWakeUpCapabilityESet = this.wakeUpCapabilityESet;
        this.wakeUpCapabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldWakeUpCapability, (Object)this.wakeUpCapability, !oldWakeUpCapabilityESet));
        }
    }

    @Override
    public void unsetWakeUpCapability() {
        Boolean oldWakeUpCapability = this.wakeUpCapability;
        boolean oldWakeUpCapabilityESet = this.wakeUpCapabilityESet;
        this.wakeUpCapability = WAKE_UP_CAPABILITY_EDEFAULT;
        this.wakeUpCapabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldWakeUpCapability, (Object)WAKE_UP_CAPABILITY_EDEFAULT, oldWakeUpCapabilityESet));
        }
    }

    @Override
    public boolean isSetWakeUpCapability() {
        return this.wakeUpCapabilityESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getBuffers()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return ((InternalEList)this.getBuffers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getBuffers();
            }
            case 20: {
                return this.getInversion();
            }
            case 21: {
                return this.getPowerOnCapability();
            }
            case 22: {
                return this.getWakeUpCapability();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.getBuffers().clear();
                this.getBuffers().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setInversion((Boolean)newValue);
                return;
            }
            case 21: {
                this.setPowerOnCapability((Boolean)newValue);
                return;
            }
            case 22: {
                this.setWakeUpCapability((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.getBuffers().clear();
                return;
            }
            case 20: {
                this.unsetInversion();
                return;
            }
            case 21: {
                this.unsetPowerOnCapability();
                return;
            }
            case 22: {
                this.unsetWakeUpCapability();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.buffers != null && !this.buffers.isEmpty();
            }
            case 20: {
                return this.isSetInversion();
            }
            case 21: {
                return this.isSetPowerOnCapability();
            }
            case 22: {
                return this.isSetWakeUpCapability();
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
        result.append(" (inversion: ");
        if (this.inversionESet) {
            result.append(this.inversion);
        } else {
            result.append("<unset>");
        }
        result.append(", powerOnCapability: ");
        if (this.powerOnCapabilityESet) {
            result.append(this.powerOnCapability);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeUpCapability: ");
        if (this.wakeUpCapabilityESet) {
            result.append(this.wakeUpCapability);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

