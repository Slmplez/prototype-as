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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.RoleBasedBswModuleEntryAssignment;
import autosar40.commonstructure.serviceneeds.RoleBasedDataAssignment;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.commonstructure.serviceneeds.impl.ServiceDependencyImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BswServiceDependencyImpl
extends ServiceDependencyImpl
implements BswServiceDependency {
    protected EList<RoleBasedDataAssignment> assignedDatas;
    protected EList<RoleBasedBswModuleEntryAssignment> assignedEntryRoles;
    protected ServiceNeeds serviceNeeds;
    protected VariationPoint variationPoint;

    protected BswServiceDependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_SERVICE_DEPENDENCY;
    }

    @Override
    public BswInternalBehavior getBswInternalBehavior() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (BswInternalBehavior)this.eContainer();
    }

    public NotificationChain basicSetBswInternalBehavior(BswInternalBehavior newBswInternalBehavior, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswInternalBehavior, 4, msgs);
        return msgs;
    }

    @Override
    public void setBswInternalBehavior(BswInternalBehavior newBswInternalBehavior) {
        if (newBswInternalBehavior != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newBswInternalBehavior != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswInternalBehavior)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswInternalBehavior != null) {
                msgs = ((InternalEObject)newBswInternalBehavior).eInverseAdd((InternalEObject)this, 32, BswInternalBehavior.class, msgs);
            }
            if ((msgs = this.basicSetBswInternalBehavior(newBswInternalBehavior, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newBswInternalBehavior, (Object)newBswInternalBehavior));
        }
    }

    @Override
    public EList<RoleBasedDataAssignment> getAssignedDatas() {
        if (this.assignedDatas == null) {
            this.assignedDatas = new EObjectContainmentEList(RoleBasedDataAssignment.class, (InternalEObject)this, 5);
        }
        return this.assignedDatas;
    }

    @Override
    public EList<RoleBasedBswModuleEntryAssignment> getAssignedEntryRoles() {
        if (this.assignedEntryRoles == null) {
            this.assignedEntryRoles = new EObjectContainmentWithInverseEList(RoleBasedBswModuleEntryAssignment.class, (InternalEObject)this, 6, 4);
        }
        return this.assignedEntryRoles;
    }

    @Override
    public ServiceNeeds getServiceNeeds() {
        return this.serviceNeeds;
    }

    public NotificationChain basicSetServiceNeeds(ServiceNeeds newServiceNeeds, NotificationChain msgs) {
        ServiceNeeds oldServiceNeeds = this.serviceNeeds;
        this.serviceNeeds = newServiceNeeds;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldServiceNeeds, (Object)newServiceNeeds);
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
                msgs = ((InternalEObject)this.serviceNeeds).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newServiceNeeds != null) {
                msgs = ((InternalEObject)newServiceNeeds).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetServiceNeeds(newServiceNeeds, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newServiceNeeds, (Object)newServiceNeeds));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswInternalBehavior((BswInternalBehavior)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getAssignedEntryRoles()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetBswInternalBehavior(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getAssignedDatas()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getAssignedEntryRoles()).basicRemove((Object)otherEnd, msgs);
            }
            case 7: {
                return this.basicSetServiceNeeds(null, msgs);
            }
            case 8: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, BswInternalBehavior.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBswInternalBehavior();
            }
            case 5: {
                return this.getAssignedDatas();
            }
            case 6: {
                return this.getAssignedEntryRoles();
            }
            case 7: {
                return this.getServiceNeeds();
            }
            case 8: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBswInternalBehavior((BswInternalBehavior)newValue);
                return;
            }
            case 5: {
                this.getAssignedDatas().clear();
                this.getAssignedDatas().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getAssignedEntryRoles().clear();
                this.getAssignedEntryRoles().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setServiceNeeds((ServiceNeeds)newValue);
                return;
            }
            case 8: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setBswInternalBehavior(null);
                return;
            }
            case 5: {
                this.getAssignedDatas().clear();
                return;
            }
            case 6: {
                this.getAssignedEntryRoles().clear();
                return;
            }
            case 7: {
                this.setServiceNeeds(null);
                return;
            }
            case 8: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getBswInternalBehavior() != null;
            }
            case 5: {
                return this.assignedDatas != null && !this.assignedDatas.isEmpty();
            }
            case 6: {
                return this.assignedEntryRoles != null && !this.assignedEntryRoles.isEmpty();
            }
            case 7: {
                return this.serviceNeeds != null;
            }
            case 8: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

