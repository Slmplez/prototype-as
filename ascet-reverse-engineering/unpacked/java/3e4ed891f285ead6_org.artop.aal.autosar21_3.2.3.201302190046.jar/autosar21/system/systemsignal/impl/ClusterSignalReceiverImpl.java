/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.systemsignal.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.instanceref.ClusterSignalReceiverCommunicationPort;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClusterSignalReceiverImpl
extends ARObjectImpl
implements ClusterSignalReceiver {
    protected EList<ClusterSignalReceiverCommunicationPort> communicationPorts;
    protected static final Double TIMEOUT_EDEFAULT = new Double(0.0);
    protected Double timeout = TIMEOUT_EDEFAULT;
    protected boolean timeoutESet;

    protected ClusterSignalReceiverImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemsignalPackage.Literals.CLUSTER_SIGNAL_RECEIVER;
    }

    @Override
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

    @Override
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
                msgs = ((InternalEObject)newClusterSignal).eInverseAdd((InternalEObject)this, 17, ClusterSignal.class, msgs);
            }
            if ((msgs = this.basicSetClusterSignal(newClusterSignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newClusterSignal, (Object)newClusterSignal));
        }
    }

    @Override
    public EList<ClusterSignalReceiverCommunicationPort> getCommunicationPorts() {
        if (this.communicationPorts == null) {
            this.communicationPorts = new EObjectContainmentWithInverseEList(ClusterSignalReceiverCommunicationPort.class, (InternalEObject)this, 5, 4);
        }
        return this.communicationPorts;
    }

    @Override
    public Double getTimeout() {
        return this.timeout;
    }

    @Override
    public void setTimeout(Double newTimeout) {
        Double oldTimeout = this.timeout;
        this.timeout = newTimeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTimeout, (Object)this.timeout, !oldTimeoutESet));
        }
    }

    @Override
    public void unsetTimeout() {
        Double oldTimeout = this.timeout;
        boolean oldTimeoutESet = this.timeoutESet;
        this.timeout = TIMEOUT_EDEFAULT;
        this.timeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldTimeout, (Object)TIMEOUT_EDEFAULT, oldTimeoutESet));
        }
    }

    @Override
    public boolean isSetTimeout() {
        return this.timeoutESet;
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
                return ((InternalEList)this.getCommunicationPorts()).basicAdd((Object)otherEnd, msgs);
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
                return ((InternalEList)this.getCommunicationPorts()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, ClusterSignal.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignal();
            }
            case 5: {
                return this.getCommunicationPorts();
            }
            case 6: {
                return this.getTimeout();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setClusterSignal((ClusterSignal)newValue);
                return;
            }
            case 5: {
                this.getCommunicationPorts().clear();
                this.getCommunicationPorts().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setTimeout((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setClusterSignal(null);
                return;
            }
            case 5: {
                this.getCommunicationPorts().clear();
                return;
            }
            case 6: {
                this.unsetTimeout();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getClusterSignal() != null;
            }
            case 5: {
                return this.communicationPorts != null && !this.communicationPorts.isEmpty();
            }
            case 6: {
                return this.isSetTimeout();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeout: ");
        if (this.timeoutESet) {
            result.append(this.timeout);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

