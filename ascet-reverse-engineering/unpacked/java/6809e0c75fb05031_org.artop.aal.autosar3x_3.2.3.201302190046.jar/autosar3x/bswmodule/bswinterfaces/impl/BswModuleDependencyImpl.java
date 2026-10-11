/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
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
package autosar3x.bswmodule.bswinterfaces.impl;

import autosar3x.bswmodule.bswinterfaces.BswModuleDependency;
import autosar3x.bswmodule.bswinterfaces.BswModuleEntry;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
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
public class BswModuleDependencyImpl
extends IdentifiableImpl
implements BswModuleDependency,
IReferringClass {
    protected EList<BswModuleEntry> expectedCallbacks;
    protected EList<BswModuleEntry> requiredEntries;
    protected EList<ServiceNeeds> serviceItems;
    protected static final Integer TARGET_MODULE_ID_EDEFAULT = new Integer(0);
    protected Integer targetModuleId = TARGET_MODULE_ID_EDEFAULT;
    protected boolean targetModuleIdESet;

    protected BswModuleDependencyImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswinterfacesPackage.Literals.BSW_MODULE_DEPENDENCY;
    }

    @Override
    public BswModuleDescription getBswModuleDescription() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (BswModuleDescription)this.eContainer();
    }

    public NotificationChain basicSetBswModuleDescription(BswModuleDescription newBswModuleDescription, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswModuleDescription, 17, msgs);
        return msgs;
    }

    @Override
    public void setBswModuleDescription(BswModuleDescription newBswModuleDescription) {
        if (newBswModuleDescription != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newBswModuleDescription != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswModuleDescription)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswModuleDescription != null) {
                msgs = ((InternalEObject)newBswModuleDescription).eInverseAdd((InternalEObject)this, 19, BswModuleDescription.class, msgs);
            }
            if ((msgs = this.basicSetBswModuleDescription(newBswModuleDescription, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newBswModuleDescription, (Object)newBswModuleDescription));
        }
    }

    @Override
    public EList<BswModuleEntry> getExpectedCallbacks() {
        if (this.expectedCallbacks == null) {
            this.expectedCallbacks = new EObjectResolvingReferringEList(BswModuleEntry.class, (InternalEObject)this, 18);
        }
        return this.expectedCallbacks;
    }

    @Override
    public EList<BswModuleEntry> getRequiredEntries() {
        if (this.requiredEntries == null) {
            this.requiredEntries = new EObjectResolvingReferringEList(BswModuleEntry.class, (InternalEObject)this, 19);
        }
        return this.requiredEntries;
    }

    @Override
    public EList<ServiceNeeds> getServiceItems() {
        if (this.serviceItems == null) {
            this.serviceItems = new EObjectContainmentEList(ServiceNeeds.class, (InternalEObject)this, 20);
        }
        return this.serviceItems;
    }

    @Override
    public Integer getTargetModuleId() {
        return this.targetModuleId;
    }

    @Override
    public void setTargetModuleId(Integer newTargetModuleId) {
        Integer oldTargetModuleId = this.targetModuleId;
        this.targetModuleId = newTargetModuleId;
        boolean oldTargetModuleIdESet = this.targetModuleIdESet;
        this.targetModuleIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTargetModuleId, (Object)this.targetModuleId, !oldTargetModuleIdESet));
        }
    }

    @Override
    public void unsetTargetModuleId() {
        Integer oldTargetModuleId = this.targetModuleId;
        boolean oldTargetModuleIdESet = this.targetModuleIdESet;
        this.targetModuleId = TARGET_MODULE_ID_EDEFAULT;
        this.targetModuleIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTargetModuleId, (Object)TARGET_MODULE_ID_EDEFAULT, oldTargetModuleIdESet));
        }
    }

    @Override
    public boolean isSetTargetModuleId() {
        return this.targetModuleIdESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
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
            case 17: {
                return this.basicSetBswModuleDescription(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getServiceItems()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, BswModuleDescription.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getBswModuleDescription();
            }
            case 18: {
                return this.getExpectedCallbacks();
            }
            case 19: {
                return this.getRequiredEntries();
            }
            case 20: {
                return this.getServiceItems();
            }
            case 21: {
                return this.getTargetModuleId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setBswModuleDescription((BswModuleDescription)newValue);
                return;
            }
            case 18: {
                this.getExpectedCallbacks().clear();
                this.getExpectedCallbacks().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getRequiredEntries().clear();
                this.getRequiredEntries().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getServiceItems().clear();
                this.getServiceItems().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setTargetModuleId((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setBswModuleDescription(null);
                return;
            }
            case 18: {
                this.getExpectedCallbacks().clear();
                return;
            }
            case 19: {
                this.getRequiredEntries().clear();
                return;
            }
            case 20: {
                this.getServiceItems().clear();
                return;
            }
            case 21: {
                this.unsetTargetModuleId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getBswModuleDescription() != null;
            }
            case 18: {
                return this.expectedCallbacks != null && !this.expectedCallbacks.isEmpty();
            }
            case 19: {
                return this.requiredEntries != null && !this.requiredEntries.isEmpty();
            }
            case 20: {
                return this.serviceItems != null && !this.serviceItems.isEmpty();
            }
            case 21: {
                return this.isSetTargetModuleId();
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

