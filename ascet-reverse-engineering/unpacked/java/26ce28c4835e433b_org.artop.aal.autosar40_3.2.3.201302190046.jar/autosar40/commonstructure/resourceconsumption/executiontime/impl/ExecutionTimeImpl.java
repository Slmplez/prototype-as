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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.resourceconsumption.executiontime.impl;

import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.SoftwareContext;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
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
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ExecutionTimeImpl
extends IdentifiableImpl
implements ExecutionTime,
IReferringClass {
    protected ExclusiveArea exclusiveArea;
    protected ExecutableEntity executableEntity;
    protected HardwareConfiguration hardwareConfiguration;
    protected HwElement hwElement;
    protected EList<DependencyOnArtifact> includedLibraries;
    protected EList<MemorySectionLocation> memorySectionLocations;
    protected SoftwareContext softwareContext;
    protected VariationPoint variationPoint;

    protected ExecutionTimeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.EXECUTION_TIME;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 18, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newResourceConsumption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceConsumption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 18, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public ExclusiveArea getExclusiveArea() {
        if (this.exclusiveArea != null && this.exclusiveArea.eIsProxy()) {
            InternalEObject oldExclusiveArea = (InternalEObject)this.exclusiveArea;
            this.exclusiveArea = (ExclusiveArea)this.eResolveProxy(oldExclusiveArea);
            if (this.exclusiveArea != oldExclusiveArea && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldExclusiveArea, (Object)this.exclusiveArea));
            }
        }
        return this.exclusiveArea;
    }

    public ExclusiveArea basicGetExclusiveArea() {
        return this.exclusiveArea;
    }

    @Override
    public void setExclusiveArea(ExclusiveArea newExclusiveArea) {
        ExclusiveArea oldExclusiveArea = this.exclusiveArea;
        this.exclusiveArea = newExclusiveArea;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldExclusiveArea, (Object)this.exclusiveArea));
        }
    }

    @Override
    public ExecutableEntity getExecutableEntity() {
        if (this.executableEntity != null && this.executableEntity.eIsProxy()) {
            InternalEObject oldExecutableEntity = (InternalEObject)this.executableEntity;
            this.executableEntity = (ExecutableEntity)this.eResolveProxy(oldExecutableEntity);
            if (this.executableEntity != oldExecutableEntity && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldExecutableEntity, (Object)this.executableEntity));
            }
        }
        return this.executableEntity;
    }

    public ExecutableEntity basicGetExecutableEntity() {
        return this.executableEntity;
    }

    @Override
    public void setExecutableEntity(ExecutableEntity newExecutableEntity) {
        ExecutableEntity oldExecutableEntity = this.executableEntity;
        this.executableEntity = newExecutableEntity;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldExecutableEntity, (Object)this.executableEntity));
        }
    }

    @Override
    public HardwareConfiguration getHardwareConfiguration() {
        return this.hardwareConfiguration;
    }

    public NotificationChain basicSetHardwareConfiguration(HardwareConfiguration newHardwareConfiguration, NotificationChain msgs) {
        HardwareConfiguration oldHardwareConfiguration = this.hardwareConfiguration;
        this.hardwareConfiguration = newHardwareConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldHardwareConfiguration, (Object)newHardwareConfiguration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHardwareConfiguration(HardwareConfiguration newHardwareConfiguration) {
        if (newHardwareConfiguration != this.hardwareConfiguration) {
            NotificationChain msgs = null;
            if (this.hardwareConfiguration != null) {
                msgs = ((InternalEObject)this.hardwareConfiguration).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newHardwareConfiguration != null) {
                msgs = ((InternalEObject)newHardwareConfiguration).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetHardwareConfiguration(newHardwareConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newHardwareConfiguration, (Object)newHardwareConfiguration));
        }
    }

    @Override
    public HwElement getHwElement() {
        if (this.hwElement != null && this.hwElement.eIsProxy()) {
            InternalEObject oldHwElement = (InternalEObject)this.hwElement;
            this.hwElement = (HwElement)this.eResolveProxy(oldHwElement);
            if (this.hwElement != oldHwElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldHwElement, (Object)this.hwElement));
            }
        }
        return this.hwElement;
    }

    public HwElement basicGetHwElement() {
        return this.hwElement;
    }

    @Override
    public void setHwElement(HwElement newHwElement) {
        HwElement oldHwElement = this.hwElement;
        this.hwElement = newHwElement;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldHwElement, (Object)this.hwElement));
        }
    }

    @Override
    public EList<DependencyOnArtifact> getIncludedLibraries() {
        if (this.includedLibraries == null) {
            this.includedLibraries = new EObjectResolvingReferringEList(DependencyOnArtifact.class, (InternalEObject)this, 23);
        }
        return this.includedLibraries;
    }

    @Override
    public EList<MemorySectionLocation> getMemorySectionLocations() {
        if (this.memorySectionLocations == null) {
            this.memorySectionLocations = new EObjectContainmentWithInverseEList(MemorySectionLocation.class, (InternalEObject)this, 24, 4);
        }
        return this.memorySectionLocations;
    }

    @Override
    public SoftwareContext getSoftwareContext() {
        return this.softwareContext;
    }

    public NotificationChain basicSetSoftwareContext(SoftwareContext newSoftwareContext, NotificationChain msgs) {
        SoftwareContext oldSoftwareContext = this.softwareContext;
        this.softwareContext = newSoftwareContext;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldSoftwareContext, (Object)newSoftwareContext);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSoftwareContext(SoftwareContext newSoftwareContext) {
        if (newSoftwareContext != this.softwareContext) {
            NotificationChain msgs = null;
            if (this.softwareContext != null) {
                msgs = ((InternalEObject)this.softwareContext).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newSoftwareContext != null) {
                msgs = ((InternalEObject)newSoftwareContext).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetSoftwareContext(newSoftwareContext, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newSoftwareContext, (Object)newSoftwareContext));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -27, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -27, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getMemorySectionLocations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetResourceConsumption(null, msgs);
            }
            case 21: {
                return this.basicSetHardwareConfiguration(null, msgs);
            }
            case 24: {
                return ((InternalEList)this.getMemorySectionLocations()).basicRemove((Object)otherEnd, msgs);
            }
            case 25: {
                return this.basicSetSoftwareContext(null, msgs);
            }
            case 26: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 18, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getResourceConsumption();
            }
            case 19: {
                if (resolve) {
                    return this.getExclusiveArea();
                }
                return this.basicGetExclusiveArea();
            }
            case 20: {
                if (resolve) {
                    return this.getExecutableEntity();
                }
                return this.basicGetExecutableEntity();
            }
            case 21: {
                return this.getHardwareConfiguration();
            }
            case 22: {
                if (resolve) {
                    return this.getHwElement();
                }
                return this.basicGetHwElement();
            }
            case 23: {
                return this.getIncludedLibraries();
            }
            case 24: {
                return this.getMemorySectionLocations();
            }
            case 25: {
                return this.getSoftwareContext();
            }
            case 26: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 19: {
                this.setExclusiveArea((ExclusiveArea)newValue);
                return;
            }
            case 20: {
                this.setExecutableEntity((ExecutableEntity)newValue);
                return;
            }
            case 21: {
                this.setHardwareConfiguration((HardwareConfiguration)newValue);
                return;
            }
            case 22: {
                this.setHwElement((HwElement)newValue);
                return;
            }
            case 23: {
                this.getIncludedLibraries().clear();
                this.getIncludedLibraries().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getMemorySectionLocations().clear();
                this.getMemorySectionLocations().addAll((Collection)newValue);
                return;
            }
            case 25: {
                this.setSoftwareContext((SoftwareContext)newValue);
                return;
            }
            case 26: {
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
                this.setResourceConsumption(null);
                return;
            }
            case 19: {
                this.setExclusiveArea(null);
                return;
            }
            case 20: {
                this.setExecutableEntity(null);
                return;
            }
            case 21: {
                this.setHardwareConfiguration(null);
                return;
            }
            case 22: {
                this.setHwElement(null);
                return;
            }
            case 23: {
                this.getIncludedLibraries().clear();
                return;
            }
            case 24: {
                this.getMemorySectionLocations().clear();
                return;
            }
            case 25: {
                this.setSoftwareContext(null);
                return;
            }
            case 26: {
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
                return this.getResourceConsumption() != null;
            }
            case 19: {
                return this.exclusiveArea != null;
            }
            case 20: {
                return this.executableEntity != null;
            }
            case 21: {
                return this.hardwareConfiguration != null;
            }
            case 22: {
                return this.hwElement != null;
            }
            case 23: {
                return this.includedLibraries != null && !this.includedLibraries.isEmpty();
            }
            case 24: {
                return this.memorySectionLocations != null && !this.memorySectionLocations.isEmpty();
            }
            case 25: {
                return this.softwareContext != null;
            }
            case 26: {
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

