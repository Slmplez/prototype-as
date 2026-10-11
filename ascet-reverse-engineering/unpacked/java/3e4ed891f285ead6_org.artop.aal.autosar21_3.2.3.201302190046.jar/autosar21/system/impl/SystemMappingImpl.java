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
package autosar21.system.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.System;
import autosar21.system.SystemMapping;
import autosar21.system.SystemPackage;
import autosar21.system.datamapping.DataMapping;
import autosar21.system.signalpaths.SignalPathConstraint;
import autosar21.system.swmapping.EcuResourceEstimation;
import autosar21.system.swmapping.MappingConstraint;
import autosar21.system.swmapping.SwCompToEcuMapping;
import autosar21.system.swmapping.SwCompToImplMapping;
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
    protected EList<MappingConstraint> mappingConstraints;
    protected EList<EcuResourceEstimation> resourceEstimations;
    protected EList<SignalPathConstraint> signalPathConstraints;
    protected EList<SwCompToImplMapping> swImplMappings;
    protected EList<SwCompToEcuMapping> swMappings;

    protected SystemMappingImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemPackage.Literals.SYSTEM_MAPPING;
    }

    @Override
    public System getSystem() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (System)this.eContainer();
    }

    public NotificationChain basicSetSystem(System newSystem, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSystem, 16, msgs);
        return msgs;
    }

    @Override
    public void setSystem(System newSystem) {
        if (newSystem != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newSystem != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSystem)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSystem != null) {
                msgs = ((InternalEObject)newSystem).eInverseAdd((InternalEObject)this, 19, System.class, msgs);
            }
            if ((msgs = this.basicSetSystem(newSystem, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newSystem, (Object)newSystem));
        }
    }

    @Override
    public EList<DataMapping> getDataMappings() {
        if (this.dataMappings == null) {
            this.dataMappings = new EObjectContainmentWithInverseEList(DataMapping.class, (InternalEObject)this, 17, 4);
        }
        return this.dataMappings;
    }

    @Override
    public EList<MappingConstraint> getMappingConstraints() {
        if (this.mappingConstraints == null) {
            this.mappingConstraints = new EObjectContainmentWithInverseEList(MappingConstraint.class, (InternalEObject)this, 18, 4);
        }
        return this.mappingConstraints;
    }

    @Override
    public EList<EcuResourceEstimation> getResourceEstimations() {
        if (this.resourceEstimations == null) {
            this.resourceEstimations = new EObjectContainmentWithInverseEList(EcuResourceEstimation.class, (InternalEObject)this, 19, 4);
        }
        return this.resourceEstimations;
    }

    @Override
    public EList<SignalPathConstraint> getSignalPathConstraints() {
        if (this.signalPathConstraints == null) {
            this.signalPathConstraints = new EObjectContainmentWithInverseEList(SignalPathConstraint.class, (InternalEObject)this, 20, 4);
        }
        return this.signalPathConstraints;
    }

    @Override
    public EList<SwCompToImplMapping> getSwImplMappings() {
        if (this.swImplMappings == null) {
            this.swImplMappings = new EObjectContainmentWithInverseEList(SwCompToImplMapping.class, (InternalEObject)this, 21, 16);
        }
        return this.swImplMappings;
    }

    @Override
    public EList<SwCompToEcuMapping> getSwMappings() {
        if (this.swMappings == null) {
            this.swMappings = new EObjectContainmentWithInverseEList(SwCompToEcuMapping.class, (InternalEObject)this, 22, 16);
        }
        return this.swMappings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSystem((System)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getDataMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getMappingConstraints()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getResourceEstimations()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getSignalPathConstraints()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSwImplMappings()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getSwMappings()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetSystem(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getDataMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getMappingConstraints()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getResourceEstimations()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getSignalPathConstraints()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSwImplMappings()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getSwMappings()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, System.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getSystem();
            }
            case 17: {
                return this.getDataMappings();
            }
            case 18: {
                return this.getMappingConstraints();
            }
            case 19: {
                return this.getResourceEstimations();
            }
            case 20: {
                return this.getSignalPathConstraints();
            }
            case 21: {
                return this.getSwImplMappings();
            }
            case 22: {
                return this.getSwMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setSystem((System)newValue);
                return;
            }
            case 17: {
                this.getDataMappings().clear();
                this.getDataMappings().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.getMappingConstraints().clear();
                this.getMappingConstraints().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getResourceEstimations().clear();
                this.getResourceEstimations().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getSignalPathConstraints().clear();
                this.getSignalPathConstraints().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getSwImplMappings().clear();
                this.getSwImplMappings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getSwMappings().clear();
                this.getSwMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setSystem(null);
                return;
            }
            case 17: {
                this.getDataMappings().clear();
                return;
            }
            case 18: {
                this.getMappingConstraints().clear();
                return;
            }
            case 19: {
                this.getResourceEstimations().clear();
                return;
            }
            case 20: {
                this.getSignalPathConstraints().clear();
                return;
            }
            case 21: {
                this.getSwImplMappings().clear();
                return;
            }
            case 22: {
                this.getSwMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getSystem() != null;
            }
            case 17: {
                return this.dataMappings != null && !this.dataMappings.isEmpty();
            }
            case 18: {
                return this.mappingConstraints != null && !this.mappingConstraints.isEmpty();
            }
            case 19: {
                return this.resourceEstimations != null && !this.resourceEstimations.isEmpty();
            }
            case 20: {
                return this.signalPathConstraints != null && !this.signalPathConstraints.isEmpty();
            }
            case 21: {
                return this.swImplMappings != null && !this.swImplMappings.isEmpty();
            }
            case 22: {
                return this.swMappings != null && !this.swMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

