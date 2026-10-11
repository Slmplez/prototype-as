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
package autosar3x.commonstructure.resourceconsumption.executiontime.impl;

import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
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
    protected ExclusiveArea exclusiveArea;
    protected EList<DependencyOnLibrary> externalLibraries;
    protected HardwareConfiguration hardwareConfiguration;
    protected EList<MemorySectionLocation> memorySectionLocations;
    protected ExecutableEntity runnable;
    protected SoftwareContext softwareContext;

    protected ExecutionTimeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.EXECUTION_TIME;
    }

    @Override
    public ResourceConsumption getResourceConsumption() {
        if (this.eContainerFeatureID() != 17) {
            return null;
        }
        return (ResourceConsumption)this.eContainer();
    }

    public NotificationChain basicSetResourceConsumption(ResourceConsumption newResourceConsumption, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newResourceConsumption, 17, msgs);
        return msgs;
    }

    @Override
    public void setResourceConsumption(ResourceConsumption newResourceConsumption) {
        if (newResourceConsumption != this.eInternalContainer() || this.eContainerFeatureID() != 17 && newResourceConsumption != null) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)newResourceConsumption, (Object)newResourceConsumption));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldEcu, (Object)newEcu);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newEcu, (Object)newEcu));
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
    public EList<DependencyOnLibrary> getExternalLibraries() {
        if (this.externalLibraries == null) {
            this.externalLibraries = new EObjectResolvingReferringEList(DependencyOnLibrary.class, (InternalEObject)this, 20);
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
    public EList<MemorySectionLocation> getMemorySectionLocations() {
        if (this.memorySectionLocations == null) {
            this.memorySectionLocations = new EObjectContainmentWithInverseEList(MemorySectionLocation.class, (InternalEObject)this, 22, 4);
        }
        return this.memorySectionLocations;
    }

    @Override
    public ExecutableEntity getRunnable() {
        if (this.runnable != null && this.runnable.eIsProxy()) {
            InternalEObject oldRunnable = (InternalEObject)this.runnable;
            this.runnable = (ExecutableEntity)this.eResolveProxy(oldRunnable);
            if (this.runnable != oldRunnable && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldRunnable, (Object)this.runnable));
            }
        }
        return this.runnable;
    }

    public ExecutableEntity basicGetRunnable() {
        return this.runnable;
    }

    @Override
    public void setRunnable(ExecutableEntity newRunnable) {
        ExecutableEntity oldRunnable = this.runnable;
        this.runnable = newRunnable;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldRunnable, (Object)this.runnable));
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
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSoftwareContext, (Object)newSoftwareContext);
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
                msgs = ((InternalEObject)this.softwareContext).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newSoftwareContext != null) {
                msgs = ((InternalEObject)newSoftwareContext).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetSoftwareContext(newSoftwareContext, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newSoftwareContext, (Object)newSoftwareContext));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetResourceConsumption((ResourceConsumption)otherEnd, msgs);
            }
            case 18: {
                if (this.ecu != null) {
                    msgs = ((InternalEObject)this.ecu).eInverseRemove((InternalEObject)this, -19, null, msgs);
                }
                return this.basicSetEcu((ECUPrototype)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getMemorySectionLocations()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return this.basicSetResourceConsumption(null, msgs);
            }
            case 18: {
                return this.basicSetEcu(null, msgs);
            }
            case 21: {
                return this.basicSetHardwareConfiguration(null, msgs);
            }
            case 22: {
                return ((InternalEList)this.getMemorySectionLocations()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return this.basicSetSoftwareContext(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 17: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, ResourceConsumption.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getResourceConsumption();
            }
            case 18: {
                return this.getEcu();
            }
            case 19: {
                if (resolve) {
                    return this.getExclusiveArea();
                }
                return this.basicGetExclusiveArea();
            }
            case 20: {
                return this.getExternalLibraries();
            }
            case 21: {
                return this.getHardwareConfiguration();
            }
            case 22: {
                return this.getMemorySectionLocations();
            }
            case 23: {
                if (resolve) {
                    return this.getRunnable();
                }
                return this.basicGetRunnable();
            }
            case 24: {
                return this.getSoftwareContext();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setResourceConsumption((ResourceConsumption)newValue);
                return;
            }
            case 18: {
                this.setEcu((ECUPrototype)newValue);
                return;
            }
            case 19: {
                this.setExclusiveArea((ExclusiveArea)newValue);
                return;
            }
            case 20: {
                this.getExternalLibraries().clear();
                this.getExternalLibraries().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.setHardwareConfiguration((HardwareConfiguration)newValue);
                return;
            }
            case 22: {
                this.getMemorySectionLocations().clear();
                this.getMemorySectionLocations().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setRunnable((ExecutableEntity)newValue);
                return;
            }
            case 24: {
                this.setSoftwareContext((SoftwareContext)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.setResourceConsumption(null);
                return;
            }
            case 18: {
                this.setEcu(null);
                return;
            }
            case 19: {
                this.setExclusiveArea(null);
                return;
            }
            case 20: {
                this.getExternalLibraries().clear();
                return;
            }
            case 21: {
                this.setHardwareConfiguration(null);
                return;
            }
            case 22: {
                this.getMemorySectionLocations().clear();
                return;
            }
            case 23: {
                this.setRunnable(null);
                return;
            }
            case 24: {
                this.setSoftwareContext(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.getResourceConsumption() != null;
            }
            case 18: {
                return this.ecu != null;
            }
            case 19: {
                return this.exclusiveArea != null;
            }
            case 20: {
                return this.externalLibraries != null && !this.externalLibraries.isEmpty();
            }
            case 21: {
                return this.hardwareConfiguration != null;
            }
            case 22: {
                return this.memorySectionLocations != null && !this.memorySectionLocations.isEmpty();
            }
            case 23: {
                return this.runnable != null;
            }
            case 24: {
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

