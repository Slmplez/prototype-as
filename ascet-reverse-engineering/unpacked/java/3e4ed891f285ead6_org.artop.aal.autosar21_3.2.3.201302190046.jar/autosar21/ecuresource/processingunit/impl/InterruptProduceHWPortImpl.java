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
package autosar21.ecuresource.processingunit.impl;

import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.impl.InterruptHWPortImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class InterruptProduceHWPortImpl
extends InterruptHWPortImpl
implements InterruptProduceHWPort {
    protected InterruptProduceHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.INTERRUPT_PRODUCE_HW_PORT;
    }

    public MPU getMPU() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (MPU)this.eContainer();
    }

    public NotificationChain basicSetMPU(MPU newMPU, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMPU, 19, msgs);
        return msgs;
    }

    public void setMPU(MPU newMPU) {
        if (newMPU != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newMPU != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMPU)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMPU != null) {
                msgs = ((InternalEObject)newMPU).eInverseAdd((InternalEObject)this, 7, MPU.class, msgs);
            }
            if ((msgs = this.basicSetMPU(newMPU, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newMPU, (Object)newMPU));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMPU((MPU)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetMPU(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 7, MPU.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getMPU();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setMPU((MPU)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setMPU(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getMPU() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

