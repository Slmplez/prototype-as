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
package autosar21.swcomponent.resources.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.swcomponent.implementation.Implementation;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.swcomponent.resources.objectfilesection.ObjectFileSection;
import autosar21.swcomponent.resources.perinstancememorysize.PerInstanceMemorySize;
import autosar21.swcomponent.resources.stackusage.StackUsage;
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
public class ResourceConsumptionImpl
extends IdentifiableImpl
implements ResourceConsumption {
    protected EList<ExecutionTime> executionTimes;
    protected EList<HeapUsage> heapUsages;
    protected EList<ObjectFileSection> objectFileSections;
    protected EList<PerInstanceMemorySize> perInstanceMemorySizes;
    protected EList<StackUsage> stackUsages;

    protected ResourceConsumptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ResourcesPackage.Literals.RESOURCE_CONSUMPTION;
    }

    @Override
    public Implementation getImplementation() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (Implementation)this.eContainer();
    }

    public NotificationChain basicSetImplementation(Implementation newImplementation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newImplementation, 16, msgs);
        return msgs;
    }

    @Override
    public void setImplementation(Implementation newImplementation) {
        if (newImplementation != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newImplementation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newImplementation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newImplementation != null) {
                msgs = ((InternalEObject)newImplementation).eInverseAdd((InternalEObject)this, 29, Implementation.class, msgs);
            }
            if ((msgs = this.basicSetImplementation(newImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newImplementation, (Object)newImplementation));
        }
    }

    @Override
    public EList<ExecutionTime> getExecutionTimes() {
        if (this.executionTimes == null) {
            this.executionTimes = new EObjectContainmentWithInverseEList(ExecutionTime.class, (InternalEObject)this, 17, 16);
        }
        return this.executionTimes;
    }

    @Override
    public EList<HeapUsage> getHeapUsages() {
        if (this.heapUsages == null) {
            this.heapUsages = new EObjectContainmentEList(HeapUsage.class, (InternalEObject)this, 18);
        }
        return this.heapUsages;
    }

    @Override
    public EList<ObjectFileSection> getObjectFileSections() {
        if (this.objectFileSections == null) {
            this.objectFileSections = new EObjectContainmentWithInverseEList(ObjectFileSection.class, (InternalEObject)this, 19, 16);
        }
        return this.objectFileSections;
    }

    @Override
    public EList<PerInstanceMemorySize> getPerInstanceMemorySizes() {
        if (this.perInstanceMemorySizes == null) {
            this.perInstanceMemorySizes = new EObjectContainmentWithInverseEList(PerInstanceMemorySize.class, (InternalEObject)this, 20, 4);
        }
        return this.perInstanceMemorySizes;
    }

    @Override
    public EList<StackUsage> getStackUsages() {
        if (this.stackUsages == null) {
            this.stackUsages = new EObjectContainmentWithInverseEList(StackUsage.class, (InternalEObject)this, 21, 4);
        }
        return this.stackUsages;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetImplementation((Implementation)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getExecutionTimes()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getObjectFileSections()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getPerInstanceMemorySizes()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getStackUsages()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetImplementation(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getExecutionTimes()).basicRemove((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getHeapUsages()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getObjectFileSections()).basicRemove((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getPerInstanceMemorySizes()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getStackUsages()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 29, Implementation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getImplementation();
            }
            case 17: {
                return this.getExecutionTimes();
            }
            case 18: {
                return this.getHeapUsages();
            }
            case 19: {
                return this.getObjectFileSections();
            }
            case 20: {
                return this.getPerInstanceMemorySizes();
            }
            case 21: {
                return this.getStackUsages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setImplementation((Implementation)newValue);
                return;
            }
            case 17: {
                this.getExecutionTimes().clear();
                this.getExecutionTimes().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.getHeapUsages().clear();
                this.getHeapUsages().addAll((Collection)newValue);
                return;
            }
            case 19: {
                this.getObjectFileSections().clear();
                this.getObjectFileSections().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getPerInstanceMemorySizes().clear();
                this.getPerInstanceMemorySizes().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getStackUsages().clear();
                this.getStackUsages().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setImplementation(null);
                return;
            }
            case 17: {
                this.getExecutionTimes().clear();
                return;
            }
            case 18: {
                this.getHeapUsages().clear();
                return;
            }
            case 19: {
                this.getObjectFileSections().clear();
                return;
            }
            case 20: {
                this.getPerInstanceMemorySizes().clear();
                return;
            }
            case 21: {
                this.getStackUsages().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getImplementation() != null;
            }
            case 17: {
                return this.executionTimes != null && !this.executionTimes.isEmpty();
            }
            case 18: {
                return this.heapUsages != null && !this.heapUsages.isEmpty();
            }
            case 19: {
                return this.objectFileSections != null && !this.objectFileSections.isEmpty();
            }
            case 20: {
                return this.perInstanceMemorySizes != null && !this.perInstanceMemorySizes.isEmpty();
            }
            case 21: {
                return this.stackUsages != null && !this.stackUsages.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

