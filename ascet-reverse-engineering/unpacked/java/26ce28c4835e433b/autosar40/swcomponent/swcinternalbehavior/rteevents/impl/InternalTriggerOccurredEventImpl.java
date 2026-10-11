/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.swcomponent.swcinternalbehavior.rteevents.InternalTriggerOccurredEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class InternalTriggerOccurredEventImpl
extends RTEEventImpl
implements InternalTriggerOccurredEvent,
IReferringClass {
    protected InternalTriggeringPoint eventSource;

    protected InternalTriggerOccurredEventImpl() {
    }

    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.INTERNAL_TRIGGER_OCCURRED_EVENT;
    }

    public InternalTriggeringPoint getEventSource() {
        if (this.eventSource != null && this.eventSource.eIsProxy()) {
            InternalEObject oldEventSource = (InternalEObject)this.eventSource;
            this.eventSource = (InternalTriggeringPoint)this.eResolveProxy(oldEventSource);
            if (this.eventSource != oldEventSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldEventSource, (Object)this.eventSource));
            }
        }
        return this.eventSource;
    }

    public InternalTriggeringPoint basicGetEventSource() {
        return this.eventSource;
    }

    public void setEventSource(InternalTriggeringPoint newEventSource) {
        InternalTriggeringPoint oldEventSource = this.eventSource;
        this.eventSource = newEventSource;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldEventSource, (Object)this.eventSource));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getEventSource();
                }
                return this.basicGetEventSource();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setEventSource((InternalTriggeringPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setEventSource(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.eventSource != null;
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

