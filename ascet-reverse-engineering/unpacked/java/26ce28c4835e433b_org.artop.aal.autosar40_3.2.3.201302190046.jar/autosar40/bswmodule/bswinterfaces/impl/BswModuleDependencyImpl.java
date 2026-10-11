/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
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
package autosar40.bswmodule.bswinterfaces.impl;

import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import java.util.Collection;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
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
public class BswModuleDependencyImpl
extends IdentifiableImpl
implements BswModuleDependency {
    protected static final PositiveIntegerDatatype TARGET_MODULE_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype targetModuleId = TARGET_MODULE_ID_EDEFAULT.clone();
    protected boolean targetModuleIdESet;
    protected EList<BswModuleEntryRefConditional> requiredEntries;
    protected EList<BswModuleEntryRefConditional> expectedCallbacks;
    protected EList<ServiceNeeds> serviceItems;
    protected VariationPoint variationPoint;

    protected BswModuleDependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswinterfacesPackage.Literals.BSW_MODULE_DEPENDENCY;
    }

    @Override
    public BswModuleDescription getBswModuleDescription() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (BswModuleDescription)this.eContainer();
    }

    public NotificationChain basicSetBswModuleDescription(BswModuleDescription newBswModuleDescription, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswModuleDescription, 18, msgs);
        return msgs;
    }

    @Override
    public void setBswModuleDescription(BswModuleDescription newBswModuleDescription) {
        if (newBswModuleDescription != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newBswModuleDescription != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswModuleDescription)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswModuleDescription != null) {
                msgs = ((InternalEObject)newBswModuleDescription).eInverseAdd((InternalEObject)this, 27, BswModuleDescription.class, msgs);
            }
            if ((msgs = this.basicSetBswModuleDescription(newBswModuleDescription, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newBswModuleDescription, (Object)newBswModuleDescription));
        }
    }

    @Override
    public Long getTargetModuleId() {
        return (Long)this.targetModuleId.basicGetValue();
    }

    @Override
    public void setTargetModuleId(Long newTargetModuleId) {
        Long oldTargetModuleId = (Long)this.targetModuleId.basicGetValue();
        this.targetModuleId.basicSetValue((Object)newTargetModuleId);
        boolean oldTargetModuleIdESet = this.targetModuleIdESet;
        this.targetModuleIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTargetModuleId, (Object)newTargetModuleId, !oldTargetModuleIdESet));
        }
    }

    @Override
    public void unsetTargetModuleId() {
        Long oldTargetModuleId = (Long)this.targetModuleId.basicGetValue();
        boolean oldTargetModuleIdESet = this.targetModuleIdESet;
        this.targetModuleId = TARGET_MODULE_ID_EDEFAULT.clone();
        this.targetModuleIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTargetModuleId, (Object)TARGET_MODULE_ID_EDEFAULT, oldTargetModuleIdESet));
        }
    }

    @Override
    public boolean isSetTargetModuleId() {
        return this.targetModuleIdESet;
    }

    @Override
    public EList<BswModuleEntryRefConditional> getRequiredEntries() {
        if (this.requiredEntries == null) {
            this.requiredEntries = new EObjectContainmentEList(BswModuleEntryRefConditional.class, (InternalEObject)this, 20);
        }
        return this.requiredEntries;
    }

    @Override
    public EList<BswModuleEntryRefConditional> getExpectedCallbacks() {
        if (this.expectedCallbacks == null) {
            this.expectedCallbacks = new EObjectContainmentEList(BswModuleEntryRefConditional.class, (InternalEObject)this, 21);
        }
        return this.expectedCallbacks;
    }

    @Override
    public EList<ServiceNeeds> getServiceItems() {
        if (this.serviceItems == null) {
            this.serviceItems = new EObjectContainmentEList(ServiceNeeds.class, (InternalEObject)this, 22);
        }
        return this.serviceItems;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    @Override
    public PositiveIntegerDatatype getTargetModuleIdData() {
        return this.targetModuleId.clone();
    }

    @Override
    public void setTargetModuleIdData(PositiveIntegerDatatype newTargetModuleId) {
        this.targetModuleId.setRadix((int)newTargetModuleId.getRadix());
        this.targetModuleId.setNoOfDigits((int)newTargetModuleId.getNoOfDigits());
        this.setTargetModuleId(newTargetModuleId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswModuleDescription((BswModuleDescription)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetBswModuleDescription(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getRequiredEntries()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getExpectedCallbacks()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getServiceItems()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 27, BswModuleDescription.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getBswModuleDescription();
            }
            case 19: {
                return this.getTargetModuleId();
            }
            case 20: {
                return this.getRequiredEntries();
            }
            case 21: {
                return this.getExpectedCallbacks();
            }
            case 22: {
                return this.getServiceItems();
            }
            case 23: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setBswModuleDescription((BswModuleDescription)newValue);
                return;
            }
            case 19: {
                this.setTargetModuleId((Long)newValue);
                return;
            }
            case 20: {
                this.getRequiredEntries().clear();
                this.getRequiredEntries().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getExpectedCallbacks().clear();
                this.getExpectedCallbacks().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getServiceItems().clear();
                this.getServiceItems().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setBswModuleDescription(null);
                return;
            }
            case 19: {
                this.unsetTargetModuleId();
                return;
            }
            case 20: {
                this.getRequiredEntries().clear();
                return;
            }
            case 21: {
                this.getExpectedCallbacks().clear();
                return;
            }
            case 22: {
                this.getServiceItems().clear();
                return;
            }
            case 23: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getBswModuleDescription() != null;
            }
            case 19: {
                return this.isSetTargetModuleId();
            }
            case 20: {
                return this.requiredEntries != null && !this.requiredEntries.isEmpty();
            }
            case 21: {
                return this.expectedCallbacks != null && !this.expectedCallbacks.isEmpty();
            }
            case 22: {
                return this.serviceItems != null && !this.serviceItems.isEmpty();
            }
            case 23: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (targetModuleId: ");
        if (this.targetModuleIdESet) {
            result.append(this.targetModuleId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

