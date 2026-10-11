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
import autosar21.system.CommunicationMatrixInstance;
import autosar21.system.communication.Frame;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
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

public class CommProtocolFrameRoleFrameInstanceImpl
extends ARObjectImpl
implements CommProtocolFrameRoleFrameInstance,
IReferringClass {
    protected CommunicationMatrixInstance communicationMatrix;
    protected Frame frameInstance;

    protected CommProtocolFrameRoleFrameInstanceImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefPackage.Literals.COMM_PROTOCOL_FRAME_ROLE_FRAME_INSTANCE;
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
                msgs = ((InternalEObject)newCommProtocolFrameRole).eInverseAdd((InternalEObject)this, 17, CommProtocolFrameRole.class, msgs);
            }
            if ((msgs = this.basicSetCommProtocolFrameRole(newCommProtocolFrameRole, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCommProtocolFrameRole, (Object)newCommProtocolFrameRole));
        }
    }

    public CommunicationMatrixInstance getCommunicationMatrix() {
        if (this.communicationMatrix != null && this.communicationMatrix.eIsProxy()) {
            InternalEObject oldCommunicationMatrix = (InternalEObject)this.communicationMatrix;
            this.communicationMatrix = (CommunicationMatrixInstance)this.eResolveProxy(oldCommunicationMatrix);
            if (this.communicationMatrix != oldCommunicationMatrix && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldCommunicationMatrix, (Object)this.communicationMatrix));
            }
        }
        return this.communicationMatrix;
    }

    public CommunicationMatrixInstance basicGetCommunicationMatrix() {
        return this.communicationMatrix;
    }

    public void setCommunicationMatrix(CommunicationMatrixInstance newCommunicationMatrix) {
        CommunicationMatrixInstance oldCommunicationMatrix = this.communicationMatrix;
        this.communicationMatrix = newCommunicationMatrix;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationMatrix, (Object)this.communicationMatrix));
        }
    }

    public Frame getFrameInstance() {
        if (this.frameInstance != null && this.frameInstance.eIsProxy()) {
            InternalEObject oldFrameInstance = (InternalEObject)this.frameInstance;
            this.frameInstance = (Frame)this.eResolveProxy(oldFrameInstance);
            if (this.frameInstance != oldFrameInstance && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldFrameInstance, (Object)this.frameInstance));
            }
        }
        return this.frameInstance;
    }

    public Frame basicGetFrameInstance() {
        return this.frameInstance;
    }

    public void setFrameInstance(Frame newFrameInstance) {
        Frame oldFrameInstance = this.frameInstance;
        this.frameInstance = newFrameInstance;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFrameInstance, (Object)this.frameInstance));
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, CommProtocolFrameRole.class, msgs);
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
                    return this.getCommunicationMatrix();
                }
                return this.basicGetCommunicationMatrix();
            }
            case 6: {
                if (resolve) {
                    return this.getFrameInstance();
                }
                return this.basicGetFrameInstance();
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
                this.setCommunicationMatrix((CommunicationMatrixInstance)newValue);
                return;
            }
            case 6: {
                this.setFrameInstance((Frame)newValue);
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
                this.setCommunicationMatrix(null);
                return;
            }
            case 6: {
                this.setFrameInstance(null);
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
                return this.communicationMatrix != null;
            }
            case 6: {
                return this.frameInstance != null;
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

