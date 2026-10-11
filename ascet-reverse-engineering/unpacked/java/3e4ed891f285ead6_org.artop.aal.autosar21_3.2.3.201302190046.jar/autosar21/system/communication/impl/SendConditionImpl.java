/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.EventControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SystemStateTrigger;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SendConditionImpl
extends ARObjectImpl
implements SendCondition {
    protected EList<SignalTrigger> signalStates;
    protected EList<SystemStateTrigger> systemStates;

    protected SendConditionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SEND_CONDITION;
    }

    @Override
    public EventControlledTiming getEventControlledTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (EventControlledTiming)this.eContainer();
    }

    public NotificationChain basicSetEventControlledTiming(EventControlledTiming newEventControlledTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newEventControlledTiming, 4, msgs);
        return msgs;
    }

    @Override
    public void setEventControlledTiming(EventControlledTiming newEventControlledTiming) {
        if (newEventControlledTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newEventControlledTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newEventControlledTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newEventControlledTiming != null) {
                msgs = ((InternalEObject)newEventControlledTiming).eInverseAdd((InternalEObject)this, 9, EventControlledTiming.class, msgs);
            }
            if ((msgs = this.basicSetEventControlledTiming(newEventControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newEventControlledTiming, (Object)newEventControlledTiming));
        }
    }

    @Override
    public EList<SignalTrigger> getSignalStates() {
        if (this.signalStates == null) {
            this.signalStates = new EObjectContainmentEList(SignalTrigger.class, (InternalEObject)this, 5);
        }
        return this.signalStates;
    }

    @Override
    public EList<SystemStateTrigger> getSystemStates() {
        if (this.systemStates == null) {
            this.systemStates = new EObjectContainmentEList(SystemStateTrigger.class, (InternalEObject)this, 6);
        }
        return this.systemStates;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetEventControlledTiming((EventControlledTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetEventControlledTiming(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getSignalStates()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getSystemStates()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 9, EventControlledTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getEventControlledTiming();
            }
            case 5: {
                return this.getSignalStates();
            }
            case 6: {
                return this.getSystemStates();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setEventControlledTiming((EventControlledTiming)newValue);
                return;
            }
            case 5: {
                this.getSignalStates().clear();
                this.getSignalStates().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSystemStates().clear();
                this.getSystemStates().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setEventControlledTiming(null);
                return;
            }
            case 5: {
                this.getSignalStates().clear();
                return;
            }
            case 6: {
                this.getSystemStates().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getEventControlledTiming() != null;
            }
            case 5: {
                return this.signalStates != null && !this.signalStates.isEmpty();
            }
            case 6: {
                return this.systemStates != null && !this.systemStates.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

