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
package autosar21.system.topology.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.TopologyPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class ConnectorImpl
extends IdentifiableImpl
implements Connector,
IReferringClass {
    protected ECUCommunicationPortInstance commPort;

    protected ConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.CONNECTOR;
    }

    public ECUInstance getECUInstance() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ECUInstance)this.eContainer();
    }

    public NotificationChain basicSetECUInstance(ECUInstance newECUInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newECUInstance, 16, msgs);
        return msgs;
    }

    public void setECUInstance(ECUInstance newECUInstance) {
        if (newECUInstance != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newECUInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newECUInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newECUInstance != null) {
                msgs = ((InternalEObject)newECUInstance).eInverseAdd((InternalEObject)this, 21, ECUInstance.class, msgs);
            }
            if ((msgs = this.basicSetECUInstance(newECUInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newECUInstance, (Object)newECUInstance));
        }
    }

    public ECUCommunicationPortInstance getCommPort() {
        if (this.commPort != null && this.commPort.eIsProxy()) {
            InternalEObject oldCommPort = (InternalEObject)this.commPort;
            this.commPort = (ECUCommunicationPortInstance)this.eResolveProxy(oldCommPort);
            if (this.commPort != oldCommPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 17, (Object)oldCommPort, (Object)this.commPort));
            }
        }
        return this.commPort;
    }

    public ECUCommunicationPortInstance basicGetCommPort() {
        return this.commPort;
    }

    public void setCommPort(ECUCommunicationPortInstance newCommPort) {
        ECUCommunicationPortInstance oldCommPort = this.commPort;
        this.commPort = newCommPort;
        AutosarObjectUtil.setDest((EObject)this, (int)17, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldCommPort, (Object)this.commPort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetECUInstance((ECUInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetECUInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, ECUInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getECUInstance();
            }
            case 17: {
                if (resolve) {
                    return this.getCommPort();
                }
                return this.basicGetCommPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setECUInstance((ECUInstance)newValue);
                return;
            }
            case 17: {
                this.setCommPort((ECUCommunicationPortInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setECUInstance(null);
                return;
            }
            case 17: {
                this.setCommPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getECUInstance() != null;
            }
            case 17: {
                return this.commPort != null;
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

