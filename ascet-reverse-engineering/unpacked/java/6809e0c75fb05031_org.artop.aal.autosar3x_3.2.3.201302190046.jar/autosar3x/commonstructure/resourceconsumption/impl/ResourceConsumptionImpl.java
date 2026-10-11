/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.commonstructure.resourceconsumption.impl;

import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapUsage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorySection;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackUsage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceConsumptionImpl
extends IdentifiableImpl
implements ResourceConsumption {
    protected EList<ExecutionTime> executionTimes;
    protected EList<HeapUsage> heapUsages;
    protected EList<MemorySection> objectFileSections;
    protected EList<StackUsage> stackUsages;

    protected ResourceConsumptionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ResourceconsumptionPackage.Literals.RESOURCE_CONSUMPTION;
    }

    @Override
    public EList<ExecutionTime> getExecutionTimes() {
        if (this.executionTimes == null) {
            this.executionTimes = new EObjectContainmentWithInverseEList(ExecutionTime.class, (InternalEObject)this, 17, 17);
        }
        return this.executionTimes;
    }

    @Override
    public EList<HeapUsage> getHeapUsages() {
        if (this.heapUsages == null) {
            this.heapUsages = new EObjectContainmentWithInverseEList(HeapUsage.class, (InternalEObject)this, 18, 17);
        }
        return this.heapUsages;
    }

    @Override
    public EList<MemorySection> getObjectFileSections() {
        if (this.objectFileSections == null) {
            this.objectFileSections = new EObjectContainmentWithInverseEList(MemorySection.class, (InternalEObject)this, 19, 17);
        }
        return this.objectFileSections;
    }

    @Override
    public EList<StackUsage> getStackUsages() {
        if (this.stackUsages == null) {
            this.stackUsages = new EObjectContainmentWithInverseEList(StackUsage.class, (InternalEObject)this, 20, 17);
        }
        return this.stackUsages;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 17: {
                return ((InternalEList)this.getExecutionTimes()).basicAdd((Object)otherEnd, msgs);
            }
            case 18: {
                return ((InternalEList)this.getHeapUsages()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                return ((InternalEList)this.getObjectFileSections()).basicAdd((Object)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getStackUsages()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
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
                return ((InternalEList)this.getStackUsages()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
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
                return this.getStackUsages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
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
                this.getStackUsages().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
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
                return this.stackUsages != null && !this.stackUsages.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

