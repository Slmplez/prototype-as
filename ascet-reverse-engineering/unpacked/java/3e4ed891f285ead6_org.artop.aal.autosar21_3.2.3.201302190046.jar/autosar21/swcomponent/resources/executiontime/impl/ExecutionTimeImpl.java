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
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.DependencyOnLibrary;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
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
public class ExecutionTimeImpl
extends IdentifiableImpl
implements ExecutionTime,
IReferringClass {
    protected ECUPrototype ecu;
    protected RunnableEntityCanEnterExclusiveArea exclusiveAreaSection;
    protected EList<DependencyOnLibrary> externalLibraries;
    protected HardwareConfiguration hardwareConfiguration;
    protected EList<MemorySectionLocation> memorySectionLocations;
    protected RunnableEntity runnable;
    protected SoftwareContext softwareContext;

    protected ExecutionTimeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.EXECUTION_TIME;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 16, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newResourceConsumption != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newResourceConsumption)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newResourceConsumption != null) {
                msgs = ((InternalEObject)newResourceConsumption).eInverseAdd((InternalEObject)this, 17, ResourceConsumption.class, msgs);
            }
            if ((msgs = this.basicSetResourceConsumption(newResourceConsumption, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newResourceConsumption, (Object)newResourceConsumption));
        }
    }

    @Override
    public ECUPrototype getEcu() {
        return this.ecu;
    }

    public NotificationChain basicSetEcu(ECUPrototype newEcu, NotificationChain msgs) {
        ECUPrototype oldEcu = this.ecu;
        this.ecu = newEcu;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldEcu, (Object)newEcu);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEcu(ECUPrototype newEcu) {
        if (newEcu != this.ecu) {
            NotificationChain msgs = null;
            if (this.ecu != null) {
                msgs = ((InternalEObject)this.ecu).eInverseRemove((InternalEObject)this, 4, ECUPrototype.class, msgs);
            }
            if (newEcu != null) {
                msgs = ((InternalEObject)newEcu).eInverseAdd((InternalEObject)this, 4, ECUPrototype.class, msgs);
            }
            if ((msgs = this.basicSetEcu(newEcu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newEcu, (Object)newEcu));
        }
    }

    @Override
    public RunnableEntityCanEnterExclusiveArea getExclusiveAreaSection() {
        if (this.exclusiveAreaSection != null && this.exclusiveAreaSection.eIsProxy()) {
            InternalEObject oldExclusiveAreaSection = (InternalEObject)this.exclusiveAreaSection;
            this.exclusiveAreaSection = (RunnableEntityCanEnterExclusiveArea)this.eResolveProxy(oldExclusiveAreaSection);
            if (this.exclusiveAreaSection != oldExclusiveAreaSection && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldExclusiveAreaSection, (Object)this.exclusiveAreaSection));
            }
        }
        return this.exclusiveAreaSection;
    }

    public RunnableEntityCanEnterExclusiveArea basicGetExclusiveAreaSection() {
        return this.exclusiveAreaSection;
    }

    @Override
    public void setExclusiveAreaSection(RunnableEntityCanEnterExclusiveArea newExclusiveAreaSection) {
        RunnableEntityCanEnterExclusiveArea oldExclusiveAreaSection = this.exclusiveAreaSection;
        this.exclusiveAreaSection = newExclusiveAreaSection;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldExclusiveAreaSection, (Object)this.exclusiveAreaSection));
        }
    }

    @Override
    public EList<DependencyOnLibrary> getExternalLibraries() {
        if (this.externalLibraries == null) {
            this.externalLibraries = new EObjectResolvingReferringEList(DependencyOnLibrary.class, (InternalEObject)this, 19);
        }
        return this.externalLibraries;
    }

    @Override
    public HardwareConfiguration getHardwareConfiguration() {
        return this.hardwareConfiguration;
    }

    public NotificationChain basicSetHardwareConfiguration(HardwareConfiguration newHardwareConfiguration, NotificationChain msgs) {
        HardwareConfiguration oldHardwareConfiguration = this.hardwareConfiguration;
        this.hardwareConfiguration = newHardwareConfiguration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldHardwareConfiguration, (Object)newHardwareConfiguration);
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
                msgs = ((InternalEObject)this.hardwareConfiguration).eInverseRemove((InternalEObject)this, -21, null, msgs);
            }
            if (newHardwareConfiguration != null) {
                msgs = ((InternalEObject)newHardwareConfiguration).eInverseAdd((InternalEObject)this, -21, null, msgs);
            }
            if ((msgs = this.basicSetHardwareConfiguration(newHardwareConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newHardwareConfiguration, (Object)newHardwareConfiguration));
        }
    }

    @Override
    public EList<MemorySectionLocation> getMemorySectionLocations() {
        if (this.memorySectionLocations == null) {
            this.memorySectionLocations = new EObjectContainmentWithInverseEList(MemorySectionLocation.class, (InternalEObject)this, 21, 4);
        }
        return this.memorySectionLocations;
    }

    @Override
    public RunnableEntity getRunnable() {
        if (this.runnable != null && this.runnable.eIsProxy()) {
            InternalEObject oldRunnable = (InternalEObject)this.runnable;
            this.runnable = (RunnableEntity)this.eResolveProxy(oldRunnable);
            if (this.runnable != oldRunnable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldRunnable, (Object)this.runnable));
            }
        }
        return this.runnable;
    }

    public RunnableEntity basicGetRunnable() {
        return this.runnable;
    }

    @Override
    public void setRunnable(RunnableEntity newRunnable) {
        RunnableEntity oldRunnable = this.runnable;
        this.runnable = newRunnable;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldRunnable, (Object)this.runnable));
        }
    }

    @Override
    public SoftwareContext getSoftwareContext() {
        return this.softwareContext;
    }

    public NotificationChain basicSetSoftwareContext(SoftwareContext newSoftwareContext, NotificationChain msgs) {
        SoftwareContext oldSoftwareContext = this.softwareContext;
        this.softwareContext = newSoftwareContext;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSoftwareContext, (Object)newSoftwareContext);
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
                msgs = ((InternalEObject)this.softwareContext).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newSoftwareContext != null) {
                msgs = ((InternalEObject)newSoftwareContext).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetSoftwareContext(newSoftwareContext, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newSoftwareContext, (Object)newSoftwareContext));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
            case 17: {
                if (this.ecu != null) {
                    msgs = ((InternalEObject)this.ecu).eInverseRemove((InternalEObject)this, -18, null, msgs);
                }
                return this.basicSetEcu((ECUPrototype)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getMemorySectionLocations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetResourceConsumption(null, msgs);
            }
            case 17: {
                return this.basicSetEcu(null, msgs);
            }
            case 20: {
                return this.basicSetHardwareConfiguration(null, msgs);
            }
            case 21: {
                return ((InternalEList)this.getMemorySectionLocations()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetSoftwareContext(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getResourceConsumption();
            }
            case 17: {
                return this.getEcu();
            }
            case 18: {
                if (resolve) {
                    return this.getExclusiveAreaSection();
                }
                return this.basicGetExclusiveAreaSection();
            }
            case 19: {
                return this.getExternalLibraries();
            }
            case 20: {
                return this.getHardwareConfiguration();
            }
            case 21: {
                return this.getMemorySectionLocations();
            }
            case 22: {
                if (resolve) {
                    return this.getRunnable();
                }
                return this.basicGetRunnable();
            }
            case 23: {
                return this.getSoftwareContext();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 17: {
                this.setEcu((ECUPrototype)newValue);
                return;
            }
            case 18: {
                this.setExclusiveAreaSection((RunnableEntityCanEnterExclusiveArea)newValue);
                return;
            }
            case 19: {
                this.getExternalLibraries().clear();
                this.getExternalLibraries().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setHardwareConfiguration((HardwareConfiguration)newValue);
                return;
            }
            case 21: {
                this.getMemorySectionLocations().clear();
                this.getMemorySectionLocations().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setRunnable((RunnableEntity)newValue);
                return;
            }
            case 23: {
                this.setSoftwareContext((SoftwareContext)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setResourceConsumption(null);
                return;
            }
            case 17: {
                this.setEcu(null);
                return;
            }
            case 18: {
                this.setExclusiveAreaSection(null);
                return;
            }
            case 19: {
                this.getExternalLibraries().clear();
                return;
            }
            case 20: {
                this.setHardwareConfiguration(null);
                return;
            }
            case 21: {
                this.getMemorySectionLocations().clear();
                return;
            }
            case 22: {
                this.setRunnable(null);
                return;
            }
            case 23: {
                this.setSoftwareContext(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getResourceConsumption() != null;
            }
            case 17: {
                return this.ecu != null;
            }
            case 18: {
                return this.exclusiveAreaSection != null;
            }
            case 19: {
                return this.externalLibraries != null && !this.externalLibraries.isEmpty();
            }
            case 20: {
                return this.hardwareConfiguration != null;
            }
            case 21: {
                return this.memorySectionLocations != null && !this.memorySectionLocations.isEmpty();
            }
            case 22: {
                return this.runnable != null;
            }
            case 23: {
                return this.softwareContext != null;
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

