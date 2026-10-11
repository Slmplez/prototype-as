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
package autosar21.system.communicationprotocol.instanceref.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.InstancerefPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommProtocolFrameRoleProtocolElementImpl
extends ARObjectImpl
implements CommProtocolFrameRoleProtocolElement,
IReferringClass {
    protected CommProtocolInstance commProtocolInstance;
    protected CommProtocolElement protocolElement;

    protected CommProtocolFrameRoleProtocolElementImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.COMM_PROTOCOL_FRAME_ROLE_PROTOCOL_ELEMENT;
    }

    public CommProtocolFrameRole getCommProtocolFrameRole() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommProtocolFrameRole)this.eContainer();
    }

    public NotificationChain basicSetCommProtocolFrameRole(CommProtocolFrameRole newCommProtocolFrameRole, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommProtocolFrameRole, 4, msgs);
        return msgs;
    }

    public void setCommProtocolFrameRole(CommProtocolFrameRole newCommProtocolFrameRole) {
        if (newCommProtocolFrameRole != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommProtocolFrameRole != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommProtocolFrameRole)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommProtocolFrameRole != null) {
                msgs = ((InternalEObject)newCommProtocolFrameRole).eInverseAdd((InternalEObject)this, 18, CommProtocolFrameRole.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolFrameRole(newCommProtocolFrameRole, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommProtocolFrameRole, (Object)newCommProtocolFrameRole));
        }
    }

    public CommProtocolInstance getCommProtocolInstance() {
        if (this.commProtocolInstance != null && this.commProtocolInstance.eIsProxy()) {
            InternalEObject oldCommProtocolInstance = (InternalEObject)this.commProtocolInstance;
            this.commProtocolInstance = (CommProtocolInstance)this.eResolveProxy(oldCommProtocolInstance);
            if (this.commProtocolInstance != oldCommProtocolInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCommProtocolInstance, (Object)this.commProtocolInstance));
            }
        }
        return this.commProtocolInstance;
    }

    public CommProtocolInstance basicGetCommProtocolInstance() {
        return this.commProtocolInstance;
    }

    public void setCommProtocolInstance(CommProtocolInstance newCommProtocolInstance) {
        CommProtocolInstance oldCommProtocolInstance = this.commProtocolInstance;
        this.commProtocolInstance = newCommProtocolInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommProtocolInstance, (Object)this.commProtocolInstance));
        }
    }

    public CommProtocolElement getProtocolElement() {
        if (this.protocolElement != null && this.protocolElement.eIsProxy()) {
            InternalEObject oldProtocolElement = (InternalEObject)this.protocolElement;
            this.protocolElement = (CommProtocolElement)this.eResolveProxy(oldProtocolElement);
            if (this.protocolElement != oldProtocolElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldProtocolElement, (Object)this.protocolElement));
            }
        }
        return this.protocolElement;
    }

    public CommProtocolElement basicGetProtocolElement() {
        return this.protocolElement;
    }

    public void setProtocolElement(CommProtocolElement newProtocolElement) {
        CommProtocolElement oldProtocolElement = this.protocolElement;
        this.protocolElement = newProtocolElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldProtocolElement, (Object)this.protocolElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommProtocolFrameRole((CommProtocolFrameRole)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommProtocolFrameRole(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, CommProtocolFrameRole.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommProtocolFrameRole();
            }
            case 5: {
                if (resolve) {
                    return this.getCommProtocolInstance();
                }
                return this.basicGetCommProtocolInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getProtocolElement();
                }
                return this.basicGetProtocolElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommProtocolFrameRole((CommProtocolFrameRole)newValue);
                return;
            }
            case 5: {
                this.setCommProtocolInstance((CommProtocolInstance)newValue);
                return;
            }
            case 6: {
                this.setProtocolElement((CommProtocolElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommProtocolFrameRole(null);
                return;
            }
            case 5: {
                this.setCommProtocolInstance(null);
                return;
            }
            case 6: {
                this.setProtocolElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommProtocolFrameRole() != null;
            }
            case 5: {
                return this.commProtocolInstance != null;
            }
            case 6: {
                return this.protocolElement != null;
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

