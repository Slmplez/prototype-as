/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.system.systemsignal.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.SystemTopologyInstance;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.instanceref.ClusterSignalReceiverCommunicationPort;
import autosar21.system.systemsignal.instanceref.InstancerefPackage;
import autosar21.system.topology.ECUCommunicationPortInstance;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ClusterSignalReceiverCommunicationPortImpl
extends ARObjectImpl
implements ClusterSignalReceiverCommunicationPort,
IReferringClass {
    protected SystemTopologyInstance systemTopologyInstance;
    protected ECUCommunicationPortInstance ecuCommunicationPortInstance;

    protected ClusterSignalReceiverCommunicationPortImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.CLUSTER_SIGNAL_RECEIVER_COMMUNICATION_PORT;
    }

    public ClusterSignalReceiver getClusterSignalReceiver() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ClusterSignalReceiver)this.eContainer();
    }

    public NotificationChain basicSetClusterSignalReceiver(ClusterSignalReceiver newClusterSignalReceiver, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newClusterSignalReceiver, 4, msgs);
        return msgs;
    }

    public void setClusterSignalReceiver(ClusterSignalReceiver newClusterSignalReceiver) {
        if (newClusterSignalReceiver != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newClusterSignalReceiver != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newClusterSignalReceiver)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newClusterSignalReceiver != null) {
                msgs = ((InternalEObject)newClusterSignalReceiver).eInverseAdd((InternalEObject)this, 5, ClusterSignalReceiver.class, msgs);
            }
            if ((msgs = this.basicSetClusterSignalReceiver(newClusterSignalReceiver, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClusterSignalReceiver, (Object)newClusterSignalReceiver));
        }
    }

    public SystemTopologyInstance getSystemTopologyInstance() {
        if (this.systemTopologyInstance != null && this.systemTopologyInstance.eIsProxy()) {
            InternalEObject oldSystemTopologyInstance = (InternalEObject)this.systemTopologyInstance;
            this.systemTopologyInstance = (SystemTopologyInstance)this.eResolveProxy(oldSystemTopologyInstance);
            if (this.systemTopologyInstance != oldSystemTopologyInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
            }
        }
        return this.systemTopologyInstance;
    }

    public SystemTopologyInstance basicGetSystemTopologyInstance() {
        return this.systemTopologyInstance;
    }

    public void setSystemTopologyInstance(SystemTopologyInstance newSystemTopologyInstance) {
        SystemTopologyInstance oldSystemTopologyInstance = this.systemTopologyInstance;
        this.systemTopologyInstance = newSystemTopologyInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSystemTopologyInstance, (Object)this.systemTopologyInstance));
        }
    }

    public ECUCommunicationPortInstance getEcuCommunicationPortInstance() {
        if (this.ecuCommunicationPortInstance != null && this.ecuCommunicationPortInstance.eIsProxy()) {
            InternalEObject oldEcuCommunicationPortInstance = (InternalEObject)this.ecuCommunicationPortInstance;
            this.ecuCommunicationPortInstance = (ECUCommunicationPortInstance)this.eResolveProxy(oldEcuCommunicationPortInstance);
            if (this.ecuCommunicationPortInstance != oldEcuCommunicationPortInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldEcuCommunicationPortInstance, (Object)this.ecuCommunicationPortInstance));
            }
        }
        return this.ecuCommunicationPortInstance;
    }

    public ECUCommunicationPortInstance basicGetEcuCommunicationPortInstance() {
        return this.ecuCommunicationPortInstance;
    }

    public void setEcuCommunicationPortInstance(ECUCommunicationPortInstance newEcuCommunicationPortInstance) {
        ECUCommunicationPortInstance oldEcuCommunicationPortInstance = this.ecuCommunicationPortInstance;
        this.ecuCommunicationPortInstance = newEcuCommunicationPortInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEcuCommunicationPortInstance, (Object)this.ecuCommunicationPortInstance));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetClusterSignalReceiver((ClusterSignalReceiver)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetClusterSignalReceiver(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ClusterSignalReceiver.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignalReceiver();
            }
            case 5: {
                if (resolve) {
                    return this.getSystemTopologyInstance();
                }
                return this.basicGetSystemTopologyInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getEcuCommunicationPortInstance();
                }
                return this.basicGetEcuCommunicationPortInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClusterSignalReceiver((ClusterSignalReceiver)newValue);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance((SystemTopologyInstance)newValue);
                return;
            }
            case 6: {
                this.setEcuCommunicationPortInstance((ECUCommunicationPortInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClusterSignalReceiver(null);
                return;
            }
            case 5: {
                this.setSystemTopologyInstance(null);
                return;
            }
            case 6: {
                this.setEcuCommunicationPortInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignalReceiver() != null;
            }
            case 5: {
                return this.systemTopologyInstance != null;
            }
            case 6: {
                return this.ecuCommunicationPortInstance != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

