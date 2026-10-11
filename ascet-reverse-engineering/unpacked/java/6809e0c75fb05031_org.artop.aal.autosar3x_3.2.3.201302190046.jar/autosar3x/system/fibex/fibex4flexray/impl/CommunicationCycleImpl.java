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
package autosar3x.system.fibex.fibex4flexray.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public abstract class CommunicationCycleImpl
extends ARObjectImpl
implements CommunicationCycle {
    protected CommunicationCycleImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4flexrayPackage.Literals.COMMUNICATION_CYCLE;
    }

    public AbsolutelyScheduledTiming getAbsolutelyScheduledTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (AbsolutelyScheduledTiming)this.eContainer();
    }

    public NotificationChain basicSetAbsolutelyScheduledTiming(AbsolutelyScheduledTiming newAbsolutelyScheduledTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newAbsolutelyScheduledTiming, 4, msgs);
        return msgs;
    }

    public void setAbsolutelyScheduledTiming(AbsolutelyScheduledTiming newAbsolutelyScheduledTiming) {
        if (newAbsolutelyScheduledTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newAbsolutelyScheduledTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newAbsolutelyScheduledTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newAbsolutelyScheduledTiming != null) {
                msgs = ((InternalEObject)newAbsolutelyScheduledTiming).eInverseAdd((InternalEObject)this, 5, AbsolutelyScheduledTiming.class, msgs);
            }
            if ((msgs = this.basicSetAbsolutelyScheduledTiming(newAbsolutelyScheduledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newAbsolutelyScheduledTiming, (Object)newAbsolutelyScheduledTiming));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetAbsolutelyScheduledTiming((AbsolutelyScheduledTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetAbsolutelyScheduledTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, AbsolutelyScheduledTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAbsolutelyScheduledTiming();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAbsolutelyScheduledTiming((AbsolutelyScheduledTiming)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setAbsolutelyScheduledTiming(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getAbsolutelyScheduledTiming() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

