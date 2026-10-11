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

import autosar3x.commonstructure.serviceneeds.impl.ObdRatioServiceNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdRatioServiceNeeds;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwcObdRatioServiceNeedsImpl
extends ObdRatioServiceNeedsImpl
implements SwcObdRatioServiceNeeds {
    protected RoleBasedRPortAssignment serviceCallPort;

    protected SwcObdRatioServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_OBD_RATIO_SERVICE_NEEDS;
    }

    public RoleBasedRPortAssignment getServiceCallPort() {
        return this.serviceCallPort;
    }

    public NotificationChain basicSetServiceCallPort(RoleBasedRPortAssignment newServiceCallPort, NotificationChain msgs) {
        RoleBasedRPortAssignment oldServiceCallPort = this.serviceCallPort;
        this.serviceCallPort = newServiceCallPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldServiceCallPort, (Object)newServiceCallPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setServiceCallPort(RoleBasedRPortAssignment newServiceCallPort) {
        if (newServiceCallPort != this.serviceCallPort) {
            NotificationChain msgs = null;
            if (this.serviceCallPort != null) {
                msgs = ((InternalEObject)this.serviceCallPort).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newServiceCallPort != null) {
                msgs = ((InternalEObject)newServiceCallPort).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetServiceCallPort(newServiceCallPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newServiceCallPort, (Object)newServiceCallPort));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetServiceCallPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getServiceCallPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setServiceCallPort((RoleBasedRPortAssignment)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setServiceCallPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.serviceCallPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

