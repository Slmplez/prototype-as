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
package autosar40.swcomponent.components.instancerefs.impl;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.swcomponent.components.AtomicSwComponentType;
import autosar40.swcomponent.components.RPortPrototype;
import autosar40.swcomponent.components.instancerefs.InstancerefsPackage;
import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.components.instancerefs.impl.TriggerInAtomicSwcInstanceRefImpl;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RTriggerInAtomicSwcInstanceRefImpl
extends TriggerInAtomicSwcInstanceRefImpl
implements RTriggerInAtomicSwcInstanceRef,
IReferringClass {
    protected RPortPrototype contextRPort;
    protected Trigger targetTrigger;

    protected RTriggerInAtomicSwcInstanceRefImpl() {
    }

    protected EClass eStaticClass() {
        return InstancerefsPackage.Literals.RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF;
    }

    public ExternalTriggerOccurredEvent getExternalTriggerOccurredEvent() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ExternalTriggerOccurredEvent)this.eContainer();
    }

    public NotificationChain basicSetExternalTriggerOccurredEvent(ExternalTriggerOccurredEvent newExternalTriggerOccurredEvent, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newExternalTriggerOccurredEvent, 4, msgs);
        return msgs;
    }

    public void setExternalTriggerOccurredEvent(ExternalTriggerOccurredEvent newExternalTriggerOccurredEvent) {
        if (newExternalTriggerOccurredEvent != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newExternalTriggerOccurredEvent != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newExternalTriggerOccurredEvent)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newExternalTriggerOccurredEvent != null) {
                msgs = ((InternalEObject)newExternalTriggerOccurredEvent).eInverseAdd((InternalEObject)this, 24, ExternalTriggerOccurredEvent.class, msgs);
            }
            if ((msgs = this.basicSetExternalTriggerOccurredEvent(newExternalTriggerOccurredEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newExternalTriggerOccurredEvent, (Object)newExternalTriggerOccurredEvent));
        }
    }

    public RPortPrototype getContextRPort() {
        if (this.contextRPort != null && this.contextRPort.eIsProxy()) {
            InternalEObject oldContextRPort = (InternalEObject)this.contextRPort;
            this.contextRPort = (RPortPrototype)this.eResolveProxy(oldContextRPort);
            if (this.contextRPort != oldContextRPort && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldContextRPort, (Object)this.contextRPort));
            }
        }
        return this.contextRPort;
    }

    public RPortPrototype basicGetContextRPort() {
        return this.contextRPort;
    }

    public void setContextRPort(RPortPrototype newContextRPort) {
        RPortPrototype oldContextRPort = this.contextRPort;
        this.contextRPort = newContextRPort;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldContextRPort, (Object)this.contextRPort));
        }
    }

    public Trigger getTargetTrigger() {
        if (this.targetTrigger != null && this.targetTrigger.eIsProxy()) {
            InternalEObject oldTargetTrigger = (InternalEObject)this.targetTrigger;
            this.targetTrigger = (Trigger)this.eResolveProxy(oldTargetTrigger);
            if (this.targetTrigger != oldTargetTrigger && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldTargetTrigger, (Object)this.targetTrigger));
            }
        }
        return this.targetTrigger;
    }

    public Trigger basicGetTargetTrigger() {
        return this.targetTrigger;
    }

    public void setTargetTrigger(Trigger newTargetTrigger) {
        Trigger oldTargetTrigger = this.targetTrigger;
        this.targetTrigger = newTargetTrigger;
        AutosarObjectUtil.setDest((EObject)this, (int)6, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTargetTrigger, (Object)this.targetTrigger));
        }
    }

    public AtomicSwComponentType getBase() {
        RPortPrototype contextRPort = this.getContextRPort();
        if (contextRPort != null) {
            return (AtomicSwComponentType)contextRPort.getSwComponentType();
        }
        return null;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetExternalTriggerOccurredEvent((ExternalTriggerOccurredEvent)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetExternalTriggerOccurredEvent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 24, ExternalTriggerOccurredEvent.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getExternalTriggerOccurredEvent();
            }
            case 5: {
                if (resolve) {
                    return this.getContextRPort();
                }
                return this.basicGetContextRPort();
            }
            case 6: {
                if (resolve) {
                    return this.getTargetTrigger();
                }
                return this.basicGetTargetTrigger();
            }
            case 7: {
                return this.getBase();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setExternalTriggerOccurredEvent((ExternalTriggerOccurredEvent)newValue);
                return;
            }
            case 5: {
                this.setContextRPort((RPortPrototype)newValue);
                return;
            }
            case 6: {
                this.setTargetTrigger((Trigger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setExternalTriggerOccurredEvent(null);
                return;
            }
            case 5: {
                this.setContextRPort(null);
                return;
            }
            case 6: {
                this.setTargetTrigger(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getExternalTriggerOccurredEvent() != null;
            }
            case 5: {
                return this.contextRPort != null;
            }
            case 6: {
                return this.targetTrigger != null;
            }
            case 7: {
                return this.getBase() != null;
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

