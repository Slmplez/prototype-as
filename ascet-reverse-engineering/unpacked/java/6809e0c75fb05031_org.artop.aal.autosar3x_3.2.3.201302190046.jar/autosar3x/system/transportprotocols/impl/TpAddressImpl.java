/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TpAddressImpl
extends IdentifiableImpl
implements TpAddress {
    protected static final Integer TP_ADDRESS_EDEFAULT = new Integer(0);
    protected Integer tpAddress = TP_ADDRESS_EDEFAULT;
    protected boolean tpAddressESet;

    protected TpAddressImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.TP_ADDRESS;
    }

    public PhysicalChannel getPhysicalChannel() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (PhysicalChannel)this.eContainer();
    }

    public NotificationChain basicSetPhysicalChannel(PhysicalChannel newPhysicalChannel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPhysicalChannel, 17, msgs);
        return msgs;
    }

    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        if (newPhysicalChannel != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newPhysicalChannel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPhysicalChannel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPhysicalChannel != null) {
                msgs = ((InternalEObject)newPhysicalChannel).eInverseAdd((InternalEObject)this, 21, PhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalChannel(newPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newPhysicalChannel, (Object)newPhysicalChannel));
        }
    }

    public Integer getTpAddress() {
        return this.tpAddress;
    }

    public void setTpAddress(Integer newTpAddress) {
        Integer oldTpAddress = this.tpAddress;
        this.tpAddress = newTpAddress;
        boolean oldTpAddressESet = this.tpAddressESet;
        this.tpAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTpAddress, (Object)this.tpAddress, !oldTpAddressESet));
        }
    }

    public void unsetTpAddress() {
        Integer oldTpAddress = this.tpAddress;
        boolean oldTpAddressESet = this.tpAddressESet;
        this.tpAddress = TP_ADDRESS_EDEFAULT;
        this.tpAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTpAddress, (Object)TP_ADDRESS_EDEFAULT, oldTpAddressESet));
        }
    }

    public boolean isSetTpAddress() {
        return this.tpAddressESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPhysicalChannel((PhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, PhysicalChannel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel();
            }
            case 18: {
                return this.getTpAddress();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 18: {
                this.setTpAddress((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setPhysicalChannel(null);
                return;
            }
            case 18: {
                this.unsetTpAddress();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getPhysicalChannel() != null;
            }
            case 18: {
                return this.isSetTpAddress();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (tpAddress: ");
        if (this.tpAddressESet) {
            result.append(this.tpAddress);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

