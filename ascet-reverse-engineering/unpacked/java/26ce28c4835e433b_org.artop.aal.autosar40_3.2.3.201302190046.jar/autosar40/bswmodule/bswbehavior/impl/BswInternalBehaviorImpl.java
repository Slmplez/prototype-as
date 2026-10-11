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

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswbehavior.BswInternalTriggeringPoint;
import autosar40.bswmodule.bswbehavior.BswModeReceiverPolicy;
import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.bswmodule.bswbehavior.BswSchedulerNamePrefix;
import autosar40.bswmodule.bswbehavior.BswServiceDependency;
import autosar40.bswmodule.bswbehavior.BswTriggerDirectImplementation;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.internalbehavior.impl.InternalBehaviorImpl;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
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
public class BswInternalBehaviorImpl
extends InternalBehaviorImpl
implements BswInternalBehavior {
    protected EList<BswInternalTriggeringPoint> internalTriggeringPoints;
    protected EList<BswModuleEntity> entities;
    protected EList<BswEvent> events;
    protected EList<BswTriggerDirectImplementation> triggerDirectImplementations;
    protected EList<BswModeSenderPolicy> modeSenderPolicies;
    protected EList<BswModeReceiverPolicy> modeReceiverPolicies;
    protected EList<BswServiceDependency> serviceDependencies;
    protected EList<ParameterDataPrototype> perInstanceParameters;
    protected EList<BswSchedulerNamePrefix> schedulerNamePrefixs;

    protected BswInternalBehaviorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_INTERNAL_BEHAVIOR;
    }

    @Override
    public BswModuleDescription getBswModuleDescription() {
        if (this.eContainerFeatureID() != 25) {
            return null;
        }
        return (BswModuleDescription)this.eContainer();
    }

    public NotificationChain basicSetBswModuleDescription(BswModuleDescription newBswModuleDescription, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newBswModuleDescription, 25, msgs);
        return msgs;
    }

    @Override
    public void setBswModuleDescription(BswModuleDescription newBswModuleDescription) {
        if (newBswModuleDescription != this.eInternalContainer() || this.eContainerFeatureID() != 25 && newBswModuleDescription != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newBswModuleDescription)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newBswModuleDescription != null) {
                msgs = ((InternalEObject)newBswModuleDescription).eInverseAdd((InternalEObject)this, 32, BswModuleDescription.class, msgs);
            }
            if ((msgs = this.basicSetBswModuleDescription(newBswModuleDescription, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newBswModuleDescription, (Object)newBswModuleDescription));
        }
    }

    @Override
    public EList<BswInternalTriggeringPoint> getInternalTriggeringPoints() {
        if (this.internalTriggeringPoints == null) {
            this.internalTriggeringPoints = new EObjectContainmentWithInverseEList(BswInternalTriggeringPoint.class, (InternalEObject)this, 26, 18);
        }
        return this.internalTriggeringPoints;
    }

    @Override
    public EList<BswModuleEntity> getEntities() {
        if (this.entities == null) {
            this.entities = new EObjectContainmentWithInverseEList(BswModuleEntity.class, (InternalEObject)this, 27, 24);
        }
        return this.entities;
    }

    @Override
    public EList<BswEvent> getEvents() {
        if (this.events == null) {
            this.events = new EObjectContainmentWithInverseEList(BswEvent.class, (InternalEObject)this, 28, 18);
        }
        return this.events;
    }

    @Override
    public EList<BswTriggerDirectImplementation> getTriggerDirectImplementations() {
        if (this.triggerDirectImplementations == null) {
            this.triggerDirectImplementations = new EObjectContainmentWithInverseEList(BswTriggerDirectImplementation.class, (InternalEObject)this, 29, 4);
        }
        return this.triggerDirectImplementations;
    }

    @Override
    public EList<BswModeSenderPolicy> getModeSenderPolicies() {
        if (this.modeSenderPolicies == null) {
            this.modeSenderPolicies = new EObjectContainmentWithInverseEList(BswModeSenderPolicy.class, (InternalEObject)this, 30, 4);
        }
        return this.modeSenderPolicies;
    }

    @Override
    public EList<BswModeReceiverPolicy> getModeReceiverPolicies() {
        if (this.modeReceiverPolicies == null) {
            this.modeReceiverPolicies = new EObjectContainmentWithInverseEList(BswModeReceiverPolicy.class, (InternalEObject)this, 31, 4);
        }
        return this.modeReceiverPolicies;
    }

    @Override
    public EList<BswServiceDependency> getServiceDependencies() {
        if (this.serviceDependencies == null) {
            this.serviceDependencies = new EObjectContainmentWithInverseEList(BswServiceDependency.class, (InternalEObject)this, 32, 4);
        }
        return this.serviceDependencies;
    }

    @Override
    public EList<ParameterDataPrototype> getPerInstanceParameters() {
        if (this.perInstanceParameters == null) {
            this.perInstanceParameters = new EObjectContainmentEList(ParameterDataPrototype.class, (InternalEObject)this, 33);
        }
        return this.perInstanceParameters;
    }

    @Override
    public EList<BswSchedulerNamePrefix> getSchedulerNamePrefixs() {
        if (this.schedulerNamePrefixs == null) {
            this.schedulerNamePrefixs = new EObjectContainmentWithInverseEList(BswSchedulerNamePrefix.class, (InternalEObject)this, 34, 7);
        }
        return this.schedulerNamePrefixs;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetBswModuleDescription((BswModuleDescription)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getInternalTriggeringPoints()).basicAdd((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getEntities()).basicAdd((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getEvents()).basicAdd((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getTriggerDirectImplementations()).basicAdd((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getModeSenderPolicies()).basicAdd((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getModeReceiverPolicies()).basicAdd((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getServiceDependencies()).basicAdd((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getSchedulerNamePrefixs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return this.basicSetBswModuleDescription(null, msgs);
            }
            case 26: {
                return ((InternalEList)this.getInternalTriggeringPoints()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return ((InternalEList)this.getEntities()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getEvents()).basicRemove((Object)otherEnd, msgs);
            }
            case 29: {
                return ((InternalEList)this.getTriggerDirectImplementations()).basicRemove((Object)otherEnd, msgs);
            }
            case 30: {
                return ((InternalEList)this.getModeSenderPolicies()).basicRemove((Object)otherEnd, msgs);
            }
            case 31: {
                return ((InternalEList)this.getModeReceiverPolicies()).basicRemove((Object)otherEnd, msgs);
            }
            case 32: {
                return ((InternalEList)this.getServiceDependencies()).basicRemove((Object)otherEnd, msgs);
            }
            case 33: {
                return ((InternalEList)this.getPerInstanceParameters()).basicRemove((Object)otherEnd, msgs);
            }
            case 34: {
                return ((InternalEList)this.getSchedulerNamePrefixs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 25: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, BswModuleDescription.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 25: {
                return this.getBswModuleDescription();
            }
            case 26: {
                return this.getInternalTriggeringPoints();
            }
            case 27: {
                return this.getEntities();
            }
            case 28: {
                return this.getEvents();
            }
            case 29: {
                return this.getTriggerDirectImplementations();
            }
            case 30: {
                return this.getModeSenderPolicies();
            }
            case 31: {
                return this.getModeReceiverPolicies();
            }
            case 32: {
                return this.getServiceDependencies();
            }
            case 33: {
                return this.getPerInstanceParameters();
            }
            case 34: {
                return this.getSchedulerNamePrefixs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 25: {
                this.setBswModuleDescription((BswModuleDescription)newValue);
                return;
            }
            case 26: {
                this.getInternalTriggeringPoints().clear();
                this.getInternalTriggeringPoints().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getEntities().clear();
                this.getEntities().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.getEvents().clear();
                this.getEvents().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getTriggerDirectImplementations().clear();
                this.getTriggerDirectImplementations().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.getModeSenderPolicies().clear();
                this.getModeSenderPolicies().addAll((Collection)newValue);
                return;
            }
            case 31: {
                this.getModeReceiverPolicies().clear();
                this.getModeReceiverPolicies().addAll((Collection)newValue);
                return;
            }
            case 32: {
                this.getServiceDependencies().clear();
                this.getServiceDependencies().addAll((Collection)newValue);
                return;
            }
            case 33: {
                this.getPerInstanceParameters().clear();
                this.getPerInstanceParameters().addAll((Collection)newValue);
                return;
            }
            case 34: {
                this.getSchedulerNamePrefixs().clear();
                this.getSchedulerNamePrefixs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 25: {
                this.setBswModuleDescription(null);
                return;
            }
            case 26: {
                this.getInternalTriggeringPoints().clear();
                return;
            }
            case 27: {
                this.getEntities().clear();
                return;
            }
            case 28: {
                this.getEvents().clear();
                return;
            }
            case 29: {
                this.getTriggerDirectImplementations().clear();
                return;
            }
            case 30: {
                this.getModeSenderPolicies().clear();
                return;
            }
            case 31: {
                this.getModeReceiverPolicies().clear();
                return;
            }
            case 32: {
                this.getServiceDependencies().clear();
                return;
            }
            case 33: {
                this.getPerInstanceParameters().clear();
                return;
            }
            case 34: {
                this.getSchedulerNamePrefixs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 25: {
                return this.getBswModuleDescription() != null;
            }
            case 26: {
                return this.internalTriggeringPoints != null && !this.internalTriggeringPoints.isEmpty();
            }
            case 27: {
                return this.entities != null && !this.entities.isEmpty();
            }
            case 28: {
                return this.events != null && !this.events.isEmpty();
            }
            case 29: {
                return this.triggerDirectImplementations != null && !this.triggerDirectImplementations.isEmpty();
            }
            case 30: {
                return this.modeSenderPolicies != null && !this.modeSenderPolicies.isEmpty();
            }
            case 31: {
                return this.modeReceiverPolicies != null && !this.modeReceiverPolicies.isEmpty();
            }
            case 32: {
                return this.serviceDependencies != null && !this.serviceDependencies.isEmpty();
            }
            case 33: {
                return this.perInstanceParameters != null && !this.perInstanceParameters.isEmpty();
            }
            case 34: {
                return this.schedulerNamePrefixs != null && !this.schedulerNamePrefixs.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

