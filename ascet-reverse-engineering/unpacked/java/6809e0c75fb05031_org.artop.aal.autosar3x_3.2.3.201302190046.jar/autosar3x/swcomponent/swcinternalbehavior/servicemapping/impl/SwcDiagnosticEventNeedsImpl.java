/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar3x.commonstructure.serviceneeds.impl.DiagnosticEventNeedsImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticEventNeeds;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcDiagnosticEventNeedsImpl
extends DiagnosticEventNeedsImpl
implements SwcDiagnosticEventNeeds {
    protected EList<RoleBasedPPortAssignment> callbackPorts;
    protected EList<RoleBasedRPortAssignment> serviceCallPorts;

    protected SwcDiagnosticEventNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_DIAGNOSTIC_EVENT_NEEDS;
    }

    @Override
    public EList<RoleBasedPPortAssignment> getCallbackPorts() {
        if (this.callbackPorts == null) {
            this.callbackPorts = new EObjectContainmentEList(RoleBasedPPortAssignment.class, (InternalEObject)this, 17);
        }
        return this.callbackPorts;
    }

    @Override
    public EList<RoleBasedRPortAssignment> getServiceCallPorts() {
        if (this.serviceCallPorts == null) {
            this.serviceCallPorts = new EObjectContainmentEList(RoleBasedRPortAssignment.class, (InternalEObject)this, 18);
        }
        return this.serviceCallPorts;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getCallbackPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getServiceCallPorts()).basicRemove((Object)otherEnd, msgs);
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
                return this.getServiceCallPorts();
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
                this.getServiceCallPorts().clear();
                this.getServiceCallPorts().addAll((Collection)newValue);
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
                this.getServiceCallPorts().clear();
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
                return this.serviceCallPorts != null && !this.serviceCallPorts.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

