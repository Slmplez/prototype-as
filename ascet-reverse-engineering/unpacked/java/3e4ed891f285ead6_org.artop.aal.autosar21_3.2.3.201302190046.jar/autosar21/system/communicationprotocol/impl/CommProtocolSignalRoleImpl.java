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
package autosar21.system.communicationprotocol.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalRoleProtocolElement;
import autosar21.system.systemsignal.SystemSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommProtocolSignalRoleImpl
extends IdentifiableImpl
implements CommProtocolSignalRole,
IReferringClass {
    protected CommProtocolSignalRoleProtocolElement protocolElement;
    protected SystemSignal signalInstance;

    protected CommProtocolSignalRoleImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationprotocolPackage.Literals.COMM_PROTOCOL_SIGNAL_ROLE;
    }

    public CommProtocolInstance getCommProtocolInstance() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommProtocolInstance)this.eContainer();
    }

    public NotificationChain basicSetCommProtocolInstance(CommProtocolInstance newCommProtocolInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommProtocolInstance, 16, msgs);
        return msgs;
    }

    public void setCommProtocolInstance(CommProtocolInstance newCommProtocolInstance) {
        if (newCommProtocolInstance != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommProtocolInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommProtocolInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommProtocolInstance != null) {
                msgs = ((InternalEObject)newCommProtocolInstance).eInverseAdd((InternalEObject)this, 18, CommProtocolInstance.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolInstance(newCommProtocolInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommProtocolInstance, (Object)newCommProtocolInstance));
        }
    }

    public CommProtocolSignalRoleProtocolElement getProtocolElement() {
        return this.protocolElement;
    }

    public NotificationChain basicSetProtocolElement(CommProtocolSignalRoleProtocolElement newProtocolElement, NotificationChain msgs) {
        CommProtocolSignalRoleProtocolElement oldProtocolElement = this.protocolElement;
        this.protocolElement = newProtocolElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldProtocolElement, (Object)newProtocolElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setProtocolElement(CommProtocolSignalRoleProtocolElement newProtocolElement) {
        if (newProtocolElement != this.protocolElement) {
            NotificationChain msgs = null;
            if (this.protocolElement != null) {
                msgs = ((InternalEObject)this.protocolElement).eInverseRemove((InternalEObject)this, 4, CommProtocolSignalRoleProtocolElement.class, msgs);
            }
            if (newProtocolElement != null) {
                msgs = ((InternalEObject)newProtocolElement).eInverseAdd((InternalEObject)this, 4, CommProtocolSignalRoleProtocolElement.class, msgs);
            }
            if ((msgs = this.basicSetProtocolElement(newProtocolElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newProtocolElement, (Object)newProtocolElement));
        }
    }

    public SystemSignal getSignalInstance() {
        if (this.signalInstance != null && this.signalInstance.eIsProxy()) {
            InternalEObject oldSignalInstance = (InternalEObject)this.signalInstance;
            this.signalInstance = (SystemSignal)this.eResolveProxy(oldSignalInstance);
            if (this.signalInstance != oldSignalInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldSignalInstance, (Object)this.signalInstance));
            }
        }
        return this.signalInstance;
    }

    public SystemSignal basicGetSignalInstance() {
        return this.signalInstance;
    }

    public void setSignalInstance(SystemSignal newSignalInstance) {
        SystemSignal oldSignalInstance = this.signalInstance;
        this.signalInstance = newSignalInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSignalInstance, (Object)this.signalInstance));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommProtocolInstance((CommProtocolInstance)otherEnd, msgs);
            }
            case 17: {
                if (this.protocolElement != null) {
                    msgs = ((InternalEObject)this.protocolElement).eInverseRemove((InternalEObject)this, -18, null, msgs);
                }
                return this.basicSetProtocolElement((CommProtocolSignalRoleProtocolElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommProtocolInstance(null, msgs);
            }
            case 17: {
                return this.basicSetProtocolElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, CommProtocolInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommProtocolInstance();
            }
            case 17: {
                return this.getProtocolElement();
            }
            case 18: {
                if (resolve) {
                    return this.getSignalInstance();
                }
                return this.basicGetSignalInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommProtocolInstance((CommProtocolInstance)newValue);
                return;
            }
            case 17: {
                this.setProtocolElement((CommProtocolSignalRoleProtocolElement)newValue);
                return;
            }
            case 18: {
                this.setSignalInstance((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommProtocolInstance(null);
                return;
            }
            case 17: {
                this.setProtocolElement(null);
                return;
            }
            case 18: {
                this.setSignalInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommProtocolInstance() != null;
            }
            case 17: {
                return this.protocolElement != null;
            }
            case 18: {
                return this.signalInstance != null;
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

