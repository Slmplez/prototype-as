/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
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
package autosar40.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
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
public class SwcServiceDependencyImpl
extends AtpStructureElementImpl
implements SwcServiceDependency,
IReferringClass {
    protected EList<RoleBasedDataAssignment> assignedDatas;
    protected EList<RoleBasedPortAssignment> assignedPorts;
    protected PortGroup representedPortGroup;
    protected ServiceNeeds serviceNeeds;
    protected VariationPoint variationPoint;

    protected SwcServiceDependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ServicemappingPackage.Literals.SWC_SERVICE_DEPENDENCY;
    }

    @Override
    public SwcInternalBehavior getSwcInternalBehavior() {
        if (this.eContainerFeatureID() != 19) {
            return null;
        }
        return (SwcInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwcInternalBehavior, 19, msgs);
        return msgs;
    }

    @Override
    public void setSwcInternalBehavior(SwcInternalBehavior newSwcInternalBehavior) {
        if (newSwcInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 19 && newSwcInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwcInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwcInternalBehavior != null) {
                msgs = ((InternalEObject)newSwcInternalBehavior).eInverseAdd((InternalEObject)this, 43, SwcInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetSwcInternalBehavior(newSwcInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newSwcInternalBehavior, (Object)newSwcInternalBehavior));
        }
    }

    @Override
    public EList<RoleBasedDataAssignment> getAssignedDatas() {
        if (this.assignedDatas == null) {
            this.assignedDatas = new EObjectContainmentEList(RoleBasedDataAssignment.class, (InternalEObject)this, 20);
        }
        return this.assignedDatas;
    }

    @Override
    public EList<RoleBasedPortAssignment> getAssignedPorts() {
        if (this.assignedPorts == null) {
            this.assignedPorts = new EObjectContainmentEList(RoleBasedPortAssignment.class, (InternalEObject)this, 21);
        }
        return this.assignedPorts;
    }

    @Override
    public PortGroup getRepresentedPortGroup() {
        if (this.representedPortGroup != null && this.representedPortGroup.eIsProxy()) {
            InternalEObject oldRepresentedPortGroup = (InternalEObject)this.representedPortGroup;
            this.representedPortGroup = (PortGroup)this.eResolveProxy(oldRepresentedPortGroup);
            if (this.representedPortGroup != oldRepresentedPortGroup && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldRepresentedPortGroup, (Object)this.representedPortGroup));
            }
        }
        return this.representedPortGroup;
    }

    public PortGroup basicGetRepresentedPortGroup() {
        return this.representedPortGroup;
    }

    @Override
    public void setRepresentedPortGroup(PortGroup newRepresentedPortGroup) {
        PortGroup oldRepresentedPortGroup = this.representedPortGroup;
        this.representedPortGroup = newRepresentedPortGroup;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldRepresentedPortGroup, (Object)this.representedPortGroup));
        }
    }

    @Override
    public ServiceNeeds getServiceNeeds() {
        return this.serviceNeeds;
    }

    public NotificationChain basicSetServiceNeeds(ServiceNeeds newServiceNeeds, NotificationChain msgs) {
        ServiceNeeds oldServiceNeeds = this.serviceNeeds;
        this.serviceNeeds = newServiceNeeds;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldServiceNeeds, (Object)newServiceNeeds);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setServiceNeeds(ServiceNeeds newServiceNeeds) {
        if (newServiceNeeds != this.serviceNeeds) {
            NotificationChain msgs = null;
            if (this.serviceNeeds != null) {
                msgs = ((InternalEObject)this.serviceNeeds).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newServiceNeeds != null) {
                msgs = ((InternalEObject)newServiceNeeds).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetServiceNeeds(newServiceNeeds, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newServiceNeeds, (Object)newServiceNeeds));
        }
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwcInternalBehavior((SwcInternalBehavior)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetSwcInternalBehavior(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getAssignedDatas()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getAssignedPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetServiceNeeds(null, msgs);
            }
            case 24: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 19: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 43, SwcInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getSwcInternalBehavior();
            }
            case 20: {
                return this.getAssignedDatas();
            }
            case 21: {
                return this.getAssignedPorts();
            }
            case 22: {
                if (resolve) {
                    return this.getRepresentedPortGroup();
                }
                return this.basicGetRepresentedPortGroup();
            }
            case 23: {
                return this.getServiceNeeds();
            }
            case 24: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setSwcInternalBehavior((SwcInternalBehavior)newValue);
                return;
            }
            case 20: {
                this.getAssignedDatas().clear();
                this.getAssignedDatas().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getAssignedPorts().clear();
                this.getAssignedPorts().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setRepresentedPortGroup((PortGroup)newValue);
                return;
            }
            case 23: {
                this.setServiceNeeds((ServiceNeeds)newValue);
                return;
            }
            case 24: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setSwcInternalBehavior(null);
                return;
            }
            case 20: {
                this.getAssignedDatas().clear();
                return;
            }
            case 21: {
                this.getAssignedPorts().clear();
                return;
            }
            case 22: {
                this.setRepresentedPortGroup(null);
                return;
            }
            case 23: {
                this.setServiceNeeds(null);
                return;
            }
            case 24: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.getSwcInternalBehavior() != null;
            }
            case 20: {
                return this.assignedDatas != null && !this.assignedDatas.isEmpty();
            }
            case 21: {
                return this.assignedPorts != null && !this.assignedPorts.isEmpty();
            }
            case 22: {
                return this.representedPortGroup != null;
            }
            case 23: {
                return this.serviceNeeds != null;
            }
            case 24: {
                return this.variationPoint != null;
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

