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
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationSpeed;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.PeripheralHWPortImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationHWPortImpl
extends PeripheralHWPortImpl
implements CommunicationHWPort {
    protected CommunicationPhysicalMedium physicalLayer;
    protected CommunicationSpeed speed;

    protected CommunicationHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_HW_PORT;
    }

    public CommunicationPeripheral getCommunicationPeripheral() {
        if (this.eContainerFeatureID() != 23) {
            return null;
        }
        return (CommunicationPeripheral)this.eContainer();
    }

    public NotificationChain basicSetCommunicationPeripheral(CommunicationPeripheral newCommunicationPeripheral, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationPeripheral, 23, msgs);
        return msgs;
    }

    public void setCommunicationPeripheral(CommunicationPeripheral newCommunicationPeripheral) {
        if (newCommunicationPeripheral != this.eInternalContainer() || this.eContainerFeatureID() != 23 && newCommunicationPeripheral != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationPeripheral)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationPeripheral != null) {
                msgs = ((InternalEObject)newCommunicationPeripheral).eInverseAdd((InternalEObject)this, 30, CommunicationPeripheral.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationPeripheral(newCommunicationPeripheral, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newCommunicationPeripheral, (Object)newCommunicationPeripheral));
        }
    }

    public CommunicationPhysicalMedium getPhysicalLayer() {
        return this.physicalLayer;
    }

    public NotificationChain basicSetPhysicalLayer(CommunicationPhysicalMedium newPhysicalLayer, NotificationChain msgs) {
        CommunicationPhysicalMedium oldPhysicalLayer = this.physicalLayer;
        this.physicalLayer = newPhysicalLayer;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPhysicalLayer, (Object)newPhysicalLayer);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPhysicalLayer(CommunicationPhysicalMedium newPhysicalLayer) {
        if (newPhysicalLayer != this.physicalLayer) {
            NotificationChain msgs = null;
            if (this.physicalLayer != null) {
                msgs = ((InternalEObject)this.physicalLayer).eInverseRemove((InternalEObject)this, 4, CommunicationPhysicalMedium.class, msgs);
            }
            if (newPhysicalLayer != null) {
                msgs = ((InternalEObject)newPhysicalLayer).eInverseAdd((InternalEObject)this, 4, CommunicationPhysicalMedium.class, msgs);
            }
            if ((msgs = this.basicSetPhysicalLayer(newPhysicalLayer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newPhysicalLayer, (Object)newPhysicalLayer));
        }
    }

    public CommunicationSpeed getSpeed() {
        return this.speed;
    }

    public NotificationChain basicSetSpeed(CommunicationSpeed newSpeed, NotificationChain msgs) {
        CommunicationSpeed oldSpeed = this.speed;
        this.speed = newSpeed;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldSpeed, (Object)newSpeed);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSpeed(CommunicationSpeed newSpeed) {
        if (newSpeed != this.speed) {
            NotificationChain msgs = null;
            if (this.speed != null) {
                msgs = ((InternalEObject)this.speed).eInverseRemove((InternalEObject)this, 4, CommunicationSpeed.class, msgs);
            }
            if (newSpeed != null) {
                msgs = ((InternalEObject)newSpeed).eInverseAdd((InternalEObject)this, 4, CommunicationSpeed.class, msgs);
            }
            if ((msgs = this.basicSetSpeed(newSpeed, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newSpeed, (Object)newSpeed));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationPeripheral((CommunicationPeripheral)otherEnd, msgs);
            }
            case 24: {
                if (this.physicalLayer != null) {
                    msgs = ((InternalEObject)this.physicalLayer).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetPhysicalLayer((CommunicationPhysicalMedium)otherEnd, msgs);
            }
            case 25: {
                if (this.speed != null) {
                    msgs = ((InternalEObject)this.speed).eInverseRemove((InternalEObject)this, -26, null, msgs);
                }
                return this.basicSetSpeed((CommunicationSpeed)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return this.basicSetCommunicationPeripheral(null, msgs);
            }
            case 24: {
                return this.basicSetPhysicalLayer(null, msgs);
            }
            case 25: {
                return this.basicSetSpeed(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 23: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 30, CommunicationPeripheral.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 23: {
                return this.getCommunicationPeripheral();
            }
            case 24: {
                return this.getPhysicalLayer();
            }
            case 25: {
                return this.getSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 23: {
                this.setCommunicationPeripheral((CommunicationPeripheral)newValue);
                return;
            }
            case 24: {
                this.setPhysicalLayer((CommunicationPhysicalMedium)newValue);
                return;
            }
            case 25: {
                this.setSpeed((CommunicationSpeed)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 23: {
                this.setCommunicationPeripheral(null);
                return;
            }
            case 24: {
                this.setPhysicalLayer(null);
                return;
            }
            case 25: {
                this.setSpeed(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 23: {
                return this.getCommunicationPeripheral() != null;
            }
            case 24: {
                return this.physicalLayer != null;
            }
            case 25: {
                return this.speed != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

