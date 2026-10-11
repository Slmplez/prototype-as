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
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerContent;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
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

    public AbstractCanCommunicationControllerContent getAbstractCanCommunicationControllerContent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AbstractCanCommunicationControllerContent)this.eContainer();
    }

    public NotificationChain basicSetAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent newAbstractCanCommunicationControllerContent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAbstractCanCommunicationControllerContent, 4, msgs);
        return msgs;
    }

    public void setAbstractCanCommunicationControllerContent(AbstractCanCommunicationControllerContent newAbstractCanCommunicationControllerContent) {
        if (newAbstractCanCommunicationControllerContent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAbstractCanCommunicationControllerContent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAbstractCanCommunicationControllerContent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAbstractCanCommunicationControllerContent != null) {
                msgs = ((InternalEObject)newAbstractCanCommunicationControllerContent).eInverseAdd((InternalEObject)this, 4, AbstractCanCommunicationControllerContent.class, msgs);
            }
            if ((msgs = this.basicSetAbstractCanCommunicationControllerContent(newAbstractCanCommunicationControllerContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAbstractCanCommunicationControllerContent, (Object)newAbstractCanCommunicationControllerContent));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAbstractCanCommunicationControllerContent((AbstractCanCommunicationControllerContent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAbstractCanCommunicationControllerContent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, AbstractCanCommunicationControllerContent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAbstractCanCommunicationControllerContent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAbstractCanCommunicationControllerContent((AbstractCanCommunicationControllerContent)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAbstractCanCommunicationControllerContent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAbstractCanCommunicationControllerContent() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

