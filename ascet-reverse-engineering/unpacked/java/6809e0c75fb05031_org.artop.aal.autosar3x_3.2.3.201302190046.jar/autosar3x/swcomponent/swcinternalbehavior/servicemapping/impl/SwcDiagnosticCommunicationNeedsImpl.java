/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.commonstructure.serviceneeds.impl.DiagnosticCommunicationNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticCommunicationNeeds;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcDiagnosticCommunicationNeedsImpl
extends DiagnosticCommunicationNeedsImpl
implements SwcDiagnosticCommunicationNeeds {
    protected EList<RoleBasedPPortAssignment> callbackPorts;
    protected RoleBasedRPortAssignment serviceCallPort;

    protected SwcDiagnosticCommunicationNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_DIAGNOSTIC_COMMUNICATION_NEEDS;
    }

    @Override
    public EList<RoleBasedPPortAssignment> getCallbackPorts() {
        if (this.callbackPorts == null) {
            this.callbackPorts = new EObjectContainmentEList(RoleBasedPPortAssignment.class, (InternalEObject)this, 17);
        }
        return this.callbackPorts;
    }

    @Override
    public RoleBasedRPortAssignment getServiceCallPort() {
        return this.serviceCallPort;
    }

    public NotificationChain basicSetServiceCallPort(RoleBasedRPortAssignment newServiceCallPort, NotificationChain msgs) {
        RoleBasedRPortAssignment oldServiceCallPort = this.serviceCallPort;
        this.serviceCallPort = newServiceCallPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldServiceCallPort, (Object)newServiceCallPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setServiceCallPort(RoleBasedRPortAssignment newServiceCallPort) {
        if (newServiceCallPort != this.serviceCallPort) {
            NotificationChain msgs = null;
            if (this.serviceCallPort != null) {
                msgs = ((InternalEObject)this.serviceCallPort).eInverseRemove((InternalEObject)this, -19, null, msgs);
            }
            if (newServiceCallPort != null) {
                msgs = ((InternalEObject)newServiceCallPort).eInverseAdd((InternalEObject)this, -19, null, msgs);
            }
            if ((msgs = this.basicSetServiceCallPort(newServiceCallPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newServiceCallPort, (Object)newServiceCallPort));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getCallbackPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return this.basicSetServiceCallPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getCallbackPorts();
            }
            case 18: {
                return this.getServiceCallPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.getCallbackPorts().clear();
                this.getCallbackPorts().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setServiceCallPort((RoleBasedRPortAssignment)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.getCallbackPorts().clear();
                return;
            }
            case 18: {
                this.setServiceCallPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.callbackPorts != null && !this.callbackPorts.isEmpty();
            }
            case 18: {
                return this.serviceCallPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

