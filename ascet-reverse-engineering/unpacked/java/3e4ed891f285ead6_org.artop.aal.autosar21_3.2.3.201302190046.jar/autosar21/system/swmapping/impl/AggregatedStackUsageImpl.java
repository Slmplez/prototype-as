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
package autosar21.system.swmapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.ResourceEstimationDetails;
import autosar21.system.swmapping.SwmappingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class AggregatedStackUsageImpl
extends ARObjectImpl
implements AggregatedStackUsage {
    protected AggregatedStackUsageImpl() {
    }

    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.AGGREGATED_STACK_USAGE;
    }

    public ResourceEstimationDetails getResourceEstimationDetails() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ResourceEstimationDetails)this.eContainer();
    }

    public NotificationChain basicSetResourceEstimationDetails(ResourceEstimationDetails newResourceEstimationDetails, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceEstimationDetails, 4, msgs);
        return msgs;
    }

    public void setResourceEstimationDetails(ResourceEstimationDetails newResourceEstimationDetails) {
        if (newResourceEstimationDetails != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newResourceEstimationDetails != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceEstimationDetails)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceEstimationDetails != null) {
                msgs = ((InternalEObject)newResourceEstimationDetails).eInverseAdd((InternalEObject)this, 5, ResourceEstimationDetails.class, msgs);
            }
            if ((msgs = this.basicSetResourceEstimationDetails(newResourceEstimationDetails, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newResourceEstimationDetails, (Object)newResourceEstimationDetails));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceEstimationDetails((ResourceEstimationDetails)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetResourceEstimationDetails(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ResourceEstimationDetails.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getResourceEstimationDetails();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setResourceEstimationDetails((ResourceEstimationDetails)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setResourceEstimationDetails(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getResourceEstimationDetails() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

