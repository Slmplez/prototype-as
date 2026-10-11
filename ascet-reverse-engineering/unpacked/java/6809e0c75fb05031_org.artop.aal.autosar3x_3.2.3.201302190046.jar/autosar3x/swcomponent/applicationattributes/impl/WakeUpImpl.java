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
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar3x.swcomponent.applicationattributes.WakeUp;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class WakeUpImpl
extends ARObjectImpl
implements WakeUp {
    protected WakeUpImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.WAKE_UP;
    }

    public IoHwAbstractionServerAnnotation getIoHwAbstractionServerAnnotation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (IoHwAbstractionServerAnnotation)this.eContainer();
    }

    public NotificationChain basicSetIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation newIoHwAbstractionServerAnnotation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newIoHwAbstractionServerAnnotation, 4, msgs);
        return msgs;
    }

    public void setIoHwAbstractionServerAnnotation(IoHwAbstractionServerAnnotation newIoHwAbstractionServerAnnotation) {
        if (newIoHwAbstractionServerAnnotation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newIoHwAbstractionServerAnnotation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newIoHwAbstractionServerAnnotation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newIoHwAbstractionServerAnnotation != null) {
                msgs = ((InternalEObject)newIoHwAbstractionServerAnnotation).eInverseAdd((InternalEObject)this, 20, IoHwAbstractionServerAnnotation.class, msgs);
            }
            if ((msgs = this.basicSetIoHwAbstractionServerAnnotation(newIoHwAbstractionServerAnnotation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newIoHwAbstractionServerAnnotation, (Object)newIoHwAbstractionServerAnnotation));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetIoHwAbstractionServerAnnotation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, IoHwAbstractionServerAnnotation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getIoHwAbstractionServerAnnotation();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setIoHwAbstractionServerAnnotation((IoHwAbstractionServerAnnotation)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setIoHwAbstractionServerAnnotation(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getIoHwAbstractionServerAnnotation() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

