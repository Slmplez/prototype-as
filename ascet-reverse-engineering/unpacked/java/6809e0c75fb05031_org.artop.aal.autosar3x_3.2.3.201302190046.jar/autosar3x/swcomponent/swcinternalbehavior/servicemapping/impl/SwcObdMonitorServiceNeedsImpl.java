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
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.commonstructure.serviceneeds.impl.ObdMonitorServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdMonitorServiceNeeds;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwcObdMonitorServiceNeedsImpl
extends ObdMonitorServiceNeedsImpl
implements SwcObdMonitorServiceNeeds {
    protected RoleBasedPPortAssignment callbackPort;

    protected SwcObdMonitorServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_OBD_MONITOR_SERVICE_NEEDS;
    }

    public RoleBasedPPortAssignment getCallbackPort() {
        return this.callbackPort;
    }

    public NotificationChain basicSetCallbackPort(RoleBasedPPortAssignment newCallbackPort, NotificationChain msgs) {
        RoleBasedPPortAssignment oldCallbackPort = this.callbackPort;
        this.callbackPort = newCallbackPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldCallbackPort, (Object)newCallbackPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCallbackPort(RoleBasedPPortAssignment newCallbackPort) {
        if (newCallbackPort != this.callbackPort) {
            NotificationChain msgs = null;
            if (this.callbackPort != null) {
                msgs = ((InternalEObject)this.callbackPort).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newCallbackPort != null) {
                msgs = ((InternalEObject)newCallbackPort).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetCallbackPort(newCallbackPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newCallbackPort, (Object)newCallbackPort));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetCallbackPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getCallbackPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setCallbackPort((RoleBasedPPortAssignment)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setCallbackPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.callbackPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

