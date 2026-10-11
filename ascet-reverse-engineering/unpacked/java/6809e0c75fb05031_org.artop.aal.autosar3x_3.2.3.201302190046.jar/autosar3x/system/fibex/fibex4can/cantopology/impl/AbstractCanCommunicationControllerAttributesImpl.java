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
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class AbstractCanCommunicationControllerAttributesImpl
extends ARObjectImpl
implements AbstractCanCommunicationControllerAttributes {
    protected AbstractCanCommunicationControllerAttributesImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_COMMUNICATION_CONTROLLER_ATTRIBUTES;
    }

    public CanCommunicationController getCanCommunicationController() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanCommunicationController)this.eContainer();
    }

    public NotificationChain basicSetCanCommunicationController(CanCommunicationController newCanCommunicationController, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanCommunicationController, 4, msgs);
        return msgs;
    }

    public void setCanCommunicationController(CanCommunicationController newCanCommunicationController) {
        if (newCanCommunicationController != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanCommunicationController != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanCommunicationController)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanCommunicationController != null) {
                msgs = ((InternalEObject)newCanCommunicationController).eInverseAdd((InternalEObject)this, 19, CanCommunicationController.class, msgs);
            }
            if ((msgs = this.basicSetCanCommunicationController(newCanCommunicationController, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanCommunicationController, (Object)newCanCommunicationController));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanCommunicationController((CanCommunicationController)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanCommunicationController(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, CanCommunicationController.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanCommunicationController();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanCommunicationController((CanCommunicationController)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanCommunicationController(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanCommunicationController() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

