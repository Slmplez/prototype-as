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
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CommunicationControllerImpl
extends IdentifiableImpl
implements CommunicationController {
    protected CommunicationControllerImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CONTROLLER;
    }

    public EcuInstance getEcuInstance() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (EcuInstance)this.eContainer();
    }

    public NotificationChain basicSetEcuInstance(EcuInstance newEcuInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuInstance, 18, msgs);
        return msgs;
    }

    public void setEcuInstance(EcuInstance newEcuInstance) {
        if (newEcuInstance != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newEcuInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 28, EcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEcuInstance((EcuInstance)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetEcuInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, EcuInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setEcuInstance(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getEcuInstance() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

