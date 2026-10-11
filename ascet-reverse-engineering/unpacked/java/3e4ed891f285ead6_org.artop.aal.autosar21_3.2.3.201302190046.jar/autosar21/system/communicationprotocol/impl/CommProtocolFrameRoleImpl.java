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
package autosar21.system.communicationprotocol.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommProtocolFrameRoleImpl
extends IdentifiableImpl
implements CommProtocolFrameRole {
    protected CommProtocolFrameRoleFrameInstance frameInstance;
    protected CommProtocolFrameRoleProtocolElement protocolElement;

    protected CommProtocolFrameRoleImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationprotocolPackage.Literals.COMM_PROTOCOL_FRAME_ROLE;
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
                msgs = ((InternalEObject)newCommProtocolInstance).eInverseAdd((InternalEObject)this, 17, CommProtocolInstance.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolInstance(newCommProtocolInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommProtocolInstance, (Object)newCommProtocolInstance));
        }
    }

    public CommProtocolFrameRoleFrameInstance getFrameInstance() {
        return this.frameInstance;
    }

    public NotificationChain basicSetFrameInstance(CommProtocolFrameRoleFrameInstance newFrameInstance, NotificationChain msgs) {
        CommProtocolFrameRoleFrameInstance oldFrameInstance = this.frameInstance;
        this.frameInstance = newFrameInstance;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldFrameInstance, (Object)newFrameInstance);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setFrameInstance(CommProtocolFrameRoleFrameInstance newFrameInstance) {
        if (newFrameInstance != this.frameInstance) {
            NotificationChain msgs = null;
            if (this.frameInstance != null) {
                msgs = ((InternalEObject)this.frameInstance).eInverseRemove((InternalEObject)this, 4, CommProtocolFrameRoleFrameInstance.class, msgs);
            }
            if (newFrameInstance != null) {
                msgs = ((InternalEObject)newFrameInstance).eInverseAdd((InternalEObject)this, 4, CommProtocolFrameRoleFrameInstance.class, msgs);
            }
            if ((msgs = this.basicSetFrameInstance(newFrameInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newFrameInstance, (Object)newFrameInstance));
        }
    }

    public CommProtocolFrameRoleProtocolElement getProtocolElement() {
        return this.protocolElement;
    }

    public NotificationChain basicSetProtocolElement(CommProtocolFrameRoleProtocolElement newProtocolElement, NotificationChain msgs) {
        CommProtocolFrameRoleProtocolElement oldProtocolElement = this.protocolElement;
        this.protocolElement = newProtocolElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldProtocolElement, (Object)newProtocolElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setProtocolElement(CommProtocolFrameRoleProtocolElement newProtocolElement) {
        if (newProtocolElement != this.protocolElement) {
            NotificationChain msgs = null;
            if (this.protocolElement != null) {
                msgs = ((InternalEObject)this.protocolElement).eInverseRemove((InternalEObject)this, 4, CommProtocolFrameRoleProtocolElement.class, msgs);
            }
            if (newProtocolElement != null) {
                msgs = ((InternalEObject)newProtocolElement).eInverseAdd((InternalEObject)this, 4, CommProtocolFrameRoleProtocolElement.class, msgs);
            }
            if ((msgs = this.basicSetProtocolElement(newProtocolElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newProtocolElement, (Object)newProtocolElement));
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
                if (this.frameInstance != null) {
                    msgs = ((InternalEObject)this.frameInstance).eInverseRemove((InternalEObject)this, -18, null, msgs);
                }
                return this.basicSetFrameInstance((CommProtocolFrameRoleFrameInstance)otherEnd, msgs);
            }
            case 18: {
                if (this.protocolElement != null) {
                    msgs = ((InternalEObject)this.protocolElement).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetProtocolElement((CommProtocolFrameRoleProtocolElement)otherEnd, msgs);
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
                return this.basicSetFrameInstance(null, msgs);
            }
            case 18: {
                return this.basicSetProtocolElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, CommProtocolInstance.class, msgs);
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
                return this.getFrameInstance();
            }
            case 18: {
                return this.getProtocolElement();
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
                this.setFrameInstance((CommProtocolFrameRoleFrameInstance)newValue);
                return;
            }
            case 18: {
                this.setProtocolElement((CommProtocolFrameRoleProtocolElement)newValue);
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
                this.setFrameInstance(null);
                return;
            }
            case 18: {
                this.setProtocolElement(null);
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
                return this.frameInstance != null;
            }
            case 18: {
                return this.protocolElement != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

