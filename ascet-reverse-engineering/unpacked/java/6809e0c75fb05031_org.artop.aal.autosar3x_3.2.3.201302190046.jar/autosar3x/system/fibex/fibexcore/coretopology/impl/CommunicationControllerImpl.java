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
package autosar3x.system.fibex.fibexcore.coretopology.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
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
    protected static final Boolean WAKE_UP_BY_CONTROLLER_SUPPORTED_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeUpByControllerSupported = WAKE_UP_BY_CONTROLLER_SUPPORTED_EDEFAULT;
    protected boolean wakeUpByControllerSupportedESet;

    protected CommunicationControllerImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.COMMUNICATION_CONTROLLER;
    }

    public EcuInstance getEcuInstance() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (EcuInstance)this.eContainer();
    }

    public NotificationChain basicSetEcuInstance(EcuInstance newEcuInstance, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEcuInstance, 17, msgs);
        return msgs;
    }

    public void setEcuInstance(EcuInstance newEcuInstance) {
        if (newEcuInstance != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newEcuInstance != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEcuInstance)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEcuInstance != null) {
                msgs = ((InternalEObject)newEcuInstance).eInverseAdd((InternalEObject)this, 25, EcuInstance.class, msgs);
            }
            if ((msgs = this.basicSetEcuInstance(newEcuInstance, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newEcuInstance, (Object)newEcuInstance));
        }
    }

    public Boolean getWakeUpByControllerSupported() {
        return this.wakeUpByControllerSupported;
    }

    public void setWakeUpByControllerSupported(Boolean newWakeUpByControllerSupported) {
        Boolean oldWakeUpByControllerSupported = this.wakeUpByControllerSupported;
        this.wakeUpByControllerSupported = newWakeUpByControllerSupported;
        boolean oldWakeUpByControllerSupportedESet = this.wakeUpByControllerSupportedESet;
        this.wakeUpByControllerSupportedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldWakeUpByControllerSupported, (Object)this.wakeUpByControllerSupported, !oldWakeUpByControllerSupportedESet));
        }
    }

    public void unsetWakeUpByControllerSupported() {
        Boolean oldWakeUpByControllerSupported = this.wakeUpByControllerSupported;
        boolean oldWakeUpByControllerSupportedESet = this.wakeUpByControllerSupportedESet;
        this.wakeUpByControllerSupported = WAKE_UP_BY_CONTROLLER_SUPPORTED_EDEFAULT;
        this.wakeUpByControllerSupportedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldWakeUpByControllerSupported, (Object)WAKE_UP_BY_CONTROLLER_SUPPORTED_EDEFAULT, oldWakeUpByControllerSupportedESet));
        }
    }

    public boolean isSetWakeUpByControllerSupported() {
        return this.wakeUpByControllerSupportedESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
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
            case 17: {
                return this.basicSetEcuInstance(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, EcuInstance.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getEcuInstance();
            }
            case 18: {
                return this.getWakeUpByControllerSupported();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setEcuInstance((EcuInstance)newValue);
                return;
            }
            case 18: {
                this.setWakeUpByControllerSupported((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setEcuInstance(null);
                return;
            }
            case 18: {
                this.unsetWakeUpByControllerSupported();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getEcuInstance() != null;
            }
            case 18: {
                return this.isSetWakeUpByControllerSupported();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (wakeUpByControllerSupported: ");
        if (this.wakeUpByControllerSupportedESet) {
            result.append(this.wakeUpByControllerSupported);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

