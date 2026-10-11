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
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalGroupRoleProtocolElement;
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

public class CommProtocolSignalGroupRoleProtocolElementImpl
extends ARObjectImpl
implements CommProtocolSignalGroupRoleProtocolElement,
IReferringClass {
    protected CommProtocolInstance commProtocolInstance;
    protected CommProtocolElement commProtocolElement;

    protected CommProtocolSignalGroupRoleProtocolElementImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.COMM_PROTOCOL_SIGNAL_GROUP_ROLE_PROTOCOL_ELEMENT;
    }

    public CommProtocolSignalGroupRole getCommProtocolSignalGroupRole() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CommProtocolSignalGroupRole)this.eContainer();
    }

    public NotificationChain basicSetCommProtocolSignalGroupRole(CommProtocolSignalGroupRole newCommProtocolSignalGroupRole, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommProtocolSignalGroupRole, 4, msgs);
        return msgs;
    }

    public void setCommProtocolSignalGroupRole(CommProtocolSignalGroupRole newCommProtocolSignalGroupRole) {
        if (newCommProtocolSignalGroupRole != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCommProtocolSignalGroupRole != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommProtocolSignalGroupRole)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommProtocolSignalGroupRole != null) {
                msgs = ((InternalEObject)newCommProtocolSignalGroupRole).eInverseAdd((InternalEObject)this, 17, CommProtocolSignalGroupRole.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolSignalGroupRole(newCommProtocolSignalGroupRole, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommProtocolSignalGroupRole, (Object)newCommProtocolSignalGroupRole));
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

    public CommProtocolElement getCommProtocolElement() {
        if (this.commProtocolElement != null && this.commProtocolElement.eIsProxy()) {
            InternalEObject oldCommProtocolElement = (InternalEObject)this.commProtocolElement;
            this.commProtocolElement = (CommProtocolElement)this.eResolveProxy(oldCommProtocolElement);
            if (this.commProtocolElement != oldCommProtocolElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldCommProtocolElement, (Object)this.commProtocolElement));
            }
        }
        return this.commProtocolElement;
    }

    public CommProtocolElement basicGetCommProtocolElement() {
        return this.commProtocolElement;
    }

    public void setCommProtocolElement(CommProtocolElement newCommProtocolElement) {
        CommProtocolElement oldCommProtocolElement = this.commProtocolElement;
        this.commProtocolElement = newCommProtocolElement;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCommProtocolElement, (Object)this.commProtocolElement));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommProtocolSignalGroupRole((CommProtocolSignalGroupRole)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCommProtocolSignalGroupRole(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, CommProtocolSignalGroupRole.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCommProtocolSignalGroupRole();
            }
            case 5: {
                if (resolve) {
                    return this.getCommProtocolInstance();
                }
                return this.basicGetCommProtocolInstance();
            }
            case 6: {
                if (resolve) {
                    return this.getCommProtocolElement();
                }
                return this.basicGetCommProtocolElement();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCommProtocolSignalGroupRole((CommProtocolSignalGroupRole)newValue);
                return;
            }
            case 5: {
                this.setCommProtocolInstance((CommProtocolInstance)newValue);
                return;
            }
            case 6: {
                this.setCommProtocolElement((CommProtocolElement)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCommProtocolSignalGroupRole(null);
                return;
            }
            case 5: {
                this.setCommProtocolInstance(null);
                return;
            }
            case 6: {
                this.setCommProtocolElement(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCommProtocolSignalGroupRole() != null;
            }
            case 5: {
                return this.commProtocolInstance != null;
            }
            case 6: {
                return this.commProtocolElement != null;
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

