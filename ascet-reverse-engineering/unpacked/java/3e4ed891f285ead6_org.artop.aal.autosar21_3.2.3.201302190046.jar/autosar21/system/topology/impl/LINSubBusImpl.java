/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.CommunicationClusterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LINSubBusImpl
extends CommunicationClusterImpl
implements LINSubBus {
    protected static final Double MAX_PERMITTED_SLAVE_JITTER_EDEFAULT = new Double(0.0);
    protected Double maxPermittedSlaveJitter = MAX_PERMITTED_SLAVE_JITTER_EDEFAULT;
    protected boolean maxPermittedSlaveJitterESet;

    protected LINSubBusImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.LIN_SUB_BUS;
    }

    public Double getMaxPermittedSlaveJitter() {
        return this.maxPermittedSlaveJitter;
    }

    public void setMaxPermittedSlaveJitter(Double newMaxPermittedSlaveJitter) {
        Double oldMaxPermittedSlaveJitter = this.maxPermittedSlaveJitter;
        this.maxPermittedSlaveJitter = newMaxPermittedSlaveJitter;
        boolean oldMaxPermittedSlaveJitterESet = this.maxPermittedSlaveJitterESet;
        this.maxPermittedSlaveJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMaxPermittedSlaveJitter, (Object)this.maxPermittedSlaveJitter, !oldMaxPermittedSlaveJitterESet));
        }
    }

    public void unsetMaxPermittedSlaveJitter() {
        Double oldMaxPermittedSlaveJitter = this.maxPermittedSlaveJitter;
        boolean oldMaxPermittedSlaveJitterESet = this.maxPermittedSlaveJitterESet;
        this.maxPermittedSlaveJitter = MAX_PERMITTED_SLAVE_JITTER_EDEFAULT;
        this.maxPermittedSlaveJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldMaxPermittedSlaveJitter, (Object)MAX_PERMITTED_SLAVE_JITTER_EDEFAULT, oldMaxPermittedSlaveJitterESet));
        }
    }

    public boolean isSetMaxPermittedSlaveJitter() {
        return this.maxPermittedSlaveJitterESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getMaxPermittedSlaveJitter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setMaxPermittedSlaveJitter((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetMaxPermittedSlaveJitter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetMaxPermittedSlaveJitter();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxPermittedSlaveJitter: ");
        if (this.maxPermittedSlaveJitterESet) {
            result.append(this.maxPermittedSlaveJitter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

