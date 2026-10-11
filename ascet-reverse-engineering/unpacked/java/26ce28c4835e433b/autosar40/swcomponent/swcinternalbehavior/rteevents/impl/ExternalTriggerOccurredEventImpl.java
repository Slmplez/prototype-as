/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.swcomponent.components.instancerefs.RTriggerInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.ExternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ExternalTriggerOccurredEventImpl
extends RTEEventImpl
implements ExternalTriggerOccurredEvent {
    protected RTriggerInAtomicSwcInstanceRef trigger;

    protected ExternalTriggerOccurredEventImpl() {
    }

    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.EXTERNAL_TRIGGER_OCCURRED_EVENT;
    }

    public RTriggerInAtomicSwcInstanceRef getTrigger() {
        return this.trigger;
    }

    public NotificationChain basicSetTrigger(RTriggerInAtomicSwcInstanceRef newTrigger, NotificationChain msgs) {
        RTriggerInAtomicSwcInstanceRef oldTrigger = this.trigger;
        this.trigger = newTrigger;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldTrigger, (Object)newTrigger);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTrigger(RTriggerInAtomicSwcInstanceRef newTrigger) {
        if (newTrigger != this.trigger) {
            NotificationChain msgs = null;
            if (this.trigger != null) {
                msgs = ((InternalEObject)this.trigger).eInverseRemove((InternalEObject)this, 4, RTriggerInAtomicSwcInstanceRef.class, msgs);
            }
            if (newTrigger != null) {
                msgs = ((InternalEObject)newTrigger).eInverseAdd((InternalEObject)this, 4, RTriggerInAtomicSwcInstanceRef.class, msgs);
            }
            if ((msgs = this.basicSetTrigger(newTrigger, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newTrigger, (Object)newTrigger));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                if (this.trigger != null) {
                    msgs = ((InternalEObject)this.trigger).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetTrigger((RTriggerInAtomicSwcInstanceRef)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 24: {
                return this.basicSetTrigger(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getTrigger();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setTrigger((RTriggerInAtomicSwcInstanceRef)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setTrigger(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.trigger != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

