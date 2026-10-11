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
package autosar21.system.systemsignal.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.instanceref.ClusterSignalTransmitterCommunicationPort;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClusterSignalTransmitterImpl
extends ARObjectImpl
implements ClusterSignalTransmitter {
    protected ClusterSignalTransmitterCommunicationPort communicationPort;

    protected ClusterSignalTransmitterImpl() {
    }

    protected EClass eStaticClass() {
        return SystemsignalPackage.Literals.CLUSTER_SIGNAL_TRANSMITTER;
    }

    public ClusterSignal getClusterSignal() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClusterSignal)this.eContainer();
    }

    public NotificationChain basicSetClusterSignal(ClusterSignal newClusterSignal, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClusterSignal, 4, msgs);
        return msgs;
    }

    public void setClusterSignal(ClusterSignal newClusterSignal) {
        if (newClusterSignal != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClusterSignal != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClusterSignal)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClusterSignal != null) {
                msgs = ((InternalEObject)newClusterSignal).eInverseAdd((InternalEObject)this, 19, ClusterSignal.class, msgs);
            }
            if ((msgs = this.basicSetClusterSignal(newClusterSignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClusterSignal, (Object)newClusterSignal));
        }
    }

    public ClusterSignalTransmitterCommunicationPort getCommunicationPort() {
        return this.communicationPort;
    }

    public NotificationChain basicSetCommunicationPort(ClusterSignalTransmitterCommunicationPort newCommunicationPort, NotificationChain msgs) {
        ClusterSignalTransmitterCommunicationPort oldCommunicationPort = this.communicationPort;
        this.communicationPort = newCommunicationPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationPort, (Object)newCommunicationPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCommunicationPort(ClusterSignalTransmitterCommunicationPort newCommunicationPort) {
        if (newCommunicationPort != this.communicationPort) {
            NotificationChain msgs = null;
            if (this.communicationPort != null) {
                msgs = ((InternalEObject)this.communicationPort).eInverseRemove((InternalEObject)this, 4, ClusterSignalTransmitterCommunicationPort.class, msgs);
            }
            if (newCommunicationPort != null) {
                msgs = ((InternalEObject)newCommunicationPort).eInverseAdd((InternalEObject)this, 4, ClusterSignalTransmitterCommunicationPort.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationPort(newCommunicationPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCommunicationPort, (Object)newCommunicationPort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClusterSignal((ClusterSignal)otherEnd, msgs);
            }
            case 5: {
                if (this.communicationPort != null) {
                    msgs = ((InternalEObject)this.communicationPort).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCommunicationPort((ClusterSignalTransmitterCommunicationPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClusterSignal(null, msgs);
            }
            case 5: {
                return this.basicSetCommunicationPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, ClusterSignal.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignal();
            }
            case 5: {
                return this.getCommunicationPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClusterSignal((ClusterSignal)newValue);
                return;
            }
            case 5: {
                this.setCommunicationPort((ClusterSignalTransmitterCommunicationPort)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClusterSignal(null);
                return;
            }
            case 5: {
                this.setCommunicationPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignal() != null;
            }
            case 5: {
                return this.communicationPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

