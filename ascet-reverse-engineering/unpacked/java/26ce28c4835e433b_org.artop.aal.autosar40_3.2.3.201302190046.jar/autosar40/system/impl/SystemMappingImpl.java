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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.system.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.System;
import autosar40.system.SystemMapping;
import autosar40.system.SystemPackage;
import autosar40.system.datamapping.DataMapping;
import autosar40.system.ecuresourcemapping.ECUMapping;
import autosar40.system.pncmapping.PncMapping;
import autosar40.system.signalpaths.SignalPathConstraint;
import autosar40.system.swmapping.EcuResourceEstimation;
import autosar40.system.swmapping.MappingConstraint;
import autosar40.system.swmapping.SwcToEcuMapping;
import autosar40.system.swmapping.SwcToImplMapping;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SystemMappingImpl
extends IdentifiableImpl
implements SystemMapping {
    protected EList<DataMapping> dataMappings;
    protected EList<ECUMapping> ecuResourceMappings;
    protected EList<MappingConstraint> mappingConstraints;
    protected EList<PncMapping> pncMappings;
    protected EList<EcuResourceEstimation> resourceEstimations;
    protected EList<SignalPathConstraint> signalPathConstraints;
    protected EList<SwcToImplMapping> swImplMappings;
    protected EList<SwcToEcuMapping> swMappings;
    protected VariationPoint variationPoint;

    protected SystemMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM_MAPPING;
    }

    @Override
    public System getSystem() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (System)this.eContainer();
    }

    public NotificationChain basicSetSystem(System newSystem, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystem, 18, msgs);
        return msgs;
    }

    @Override
    public void setSystem(System newSystem) {
        if (newSystem != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSystem != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystem)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystem != null) {
                msgs = ((InternalEObject)newSystem).eInverseAdd((InternalEObject)this, 25, System.class, msgs);
            }
            if ((msgs = this.basicSetSystem(newSystem, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSystem, (Object)newSystem));
        }
    }

    @Override
    public EList<DataMapping> getDataMappings() {
        if (this.dataMappings == null) {
            this.dataMappings = new EObjectContainmentWithInverseEList(DataMapping.class, (InternalEObject)this, 19, 4);
        }
        return this.dataMappings;
    }

    @Override
    public EList<ECUMapping> getEcuResourceMappings() {
        if (this.ecuResourceMappings == null) {
            this.ecuResourceMappings = new EObjectContainmentWithInverseEList(ECUMapping.class, (InternalEObject)this, 20, 18);
        }
        return this.ecuResourceMappings;
    }

    @Override
    public EList<MappingConstraint> getMappingConstraints() {
        if (this.mappingConstraints == null) {
            this.mappingConstraints = new EObjectContainmentWithInverseEList(MappingConstraint.class, (InternalEObject)this, 21, 4);
        }
        return this.mappingConstraints;
    }

    @Override
    public EList<PncMapping> getPncMappings() {
        if (this.pncMappings == null) {
            this.pncMappings = new EObjectContainmentWithInverseEList(PncMapping.class, (InternalEObject)this, 22, 4);
        }
        return this.pncMappings;
    }

    @Override
    public EList<EcuResourceEstimation> getResourceEstimations() {
        if (this.resourceEstimations == null) {
            this.resourceEstimations = new EObjectContainmentWithInverseEList(EcuResourceEstimation.class, (InternalEObject)this, 23, 4);
        }
        return this.resourceEstimations;
    }

    @Override
    public EList<SignalPathConstraint> getSignalPathConstraints() {
        if (this.signalPathConstraints == null) {
            this.signalPathConstraints = new EObjectContainmentWithInverseEList(SignalPathConstraint.class, (InternalEObject)this, 24, 4);
        }
        return this.signalPathConstraints;
    }

    @Override
    public EList<SwcToImplMapping> getSwImplMappings() {
        if (this.swImplMappings == null) {
            this.swImplMappings = new EObjectContainmentWithInverseEList(SwcToImplMapping.class, (InternalEObject)this, 25, 18);
        }
        return this.swImplMappings;
    }

    @Override
    public EList<SwcToEcuMapping> getSwMappings() {
        if (this.swMappings == null) {
            this.swMappings = new EObjectContainmentWithInverseEList(SwcToEcuMapping.class, (InternalEObject)this, 26, 18);
        }
        return this.swMappings;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystem((System)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getDataMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEcuResourceMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getMappingConstraints()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getPncMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getResourceEstimations()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getSignalPathConstraints()).basicAdd((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getSwImplMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSwMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSystem(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getDataMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getEcuResourceMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getMappingConstraints()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getPncMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getResourceEstimations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getSignalPathConstraints()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return ((InternalEList)this.getSwImplMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 26: {
                return ((InternalEList)this.getSwMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 27: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 25, System.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSystem();
            }
            case 19: {
                return this.getDataMappings();
            }
            case 20: {
                return this.getEcuResourceMappings();
            }
            case 21: {
                return this.getMappingConstraints();
            }
            case 22: {
                return this.getPncMappings();
            }
            case 23: {
                return this.getResourceEstimations();
            }
            case 24: {
                return this.getSignalPathConstraints();
            }
            case 25: {
                return this.getSwImplMappings();
            }
            case 26: {
                return this.getSwMappings();
            }
            case 27: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSystem((System)newValue);
                return;
            }
            case 19: {
                this.getDataMappings().clear();
                this.getDataMappings().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getEcuResourceMappings().clear();
                this.getEcuResourceMappings().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getMappingConstraints().clear();
                this.getMappingConstraints().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getPncMappings().clear();
                this.getPncMappings().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getResourceEstimations().clear();
                this.getResourceEstimations().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getSignalPathConstraints().clear();
                this.getSignalPathConstraints().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.getSwImplMappings().clear();
                this.getSwImplMappings().addAll((Collection)newValue);
                return;
            }
            case 26: {
                this.getSwMappings().clear();
                this.getSwMappings().addAll((Collection)newValue);
                return;
            }
            case 27: {
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
                this.setSystem(null);
                return;
            }
            case 19: {
                this.getDataMappings().clear();
                return;
            }
            case 20: {
                this.getEcuResourceMappings().clear();
                return;
            }
            case 21: {
                this.getMappingConstraints().clear();
                return;
            }
            case 22: {
                this.getPncMappings().clear();
                return;
            }
            case 23: {
                this.getResourceEstimations().clear();
                return;
            }
            case 24: {
                this.getSignalPathConstraints().clear();
                return;
            }
            case 25: {
                this.getSwImplMappings().clear();
                return;
            }
            case 26: {
                this.getSwMappings().clear();
                return;
            }
            case 27: {
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
                return this.getSystem() != null;
            }
            case 19: {
                return this.dataMappings != null && !this.dataMappings.isEmpty();
            }
            case 20: {
                return this.ecuResourceMappings != null && !this.ecuResourceMappings.isEmpty();
            }
            case 21: {
                return this.mappingConstraints != null && !this.mappingConstraints.isEmpty();
            }
            case 22: {
                return this.pncMappings != null && !this.pncMappings.isEmpty();
            }
            case 23: {
                return this.resourceEstimations != null && !this.resourceEstimations.isEmpty();
            }
            case 24: {
                return this.signalPathConstraints != null && !this.signalPathConstraints.isEmpty();
            }
            case 25: {
                return this.swImplMappings != null && !this.swImplMappings.isEmpty();
            }
            case 26: {
                return this.swMappings != null && !this.swMappings.isEmpty();
            }
            case 27: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

