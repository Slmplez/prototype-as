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
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWPin;
import autosar21.ecuresource.HWPort;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class HWPinImpl
extends IdentifiableImpl
implements HWPin {
    protected HWPinImpl() {
    }

    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_PIN;
    }

    public HWPort getHWPort() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (HWPort)this.eContainer();
    }

    public NotificationChain basicSetHWPort(HWPort newHWPort, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWPort, 16, msgs);
        return msgs;
    }

    public void setHWPort(HWPort newHWPort) {
        if (newHWPort != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newHWPort != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWPort)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWPort != null) {
                msgs = ((InternalEObject)newHWPort).eInverseAdd((InternalEObject)this, 18, HWPort.class, msgs);
            }
            if ((msgs = this.basicSetHWPort(newHWPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newHWPort, (Object)newHWPort));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWPort((HWPort)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetHWPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, HWPort.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getHWPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setHWPort((HWPort)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setHWPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getHWPort() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

