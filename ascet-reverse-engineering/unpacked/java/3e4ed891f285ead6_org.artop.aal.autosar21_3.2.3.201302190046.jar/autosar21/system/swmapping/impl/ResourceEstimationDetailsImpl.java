/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.swmapping.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.system.swmapping.AggregatedStackUsage;
import autosar21.system.swmapping.ResourceEstimationDetails;
import autosar21.system.swmapping.SwmappingPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ResourceEstimationDetailsImpl
extends ARObjectImpl
implements ResourceEstimationDetails {
    protected EList<HeapUsage> heapUsages;
    protected EList<AggregatedStackUsage> stackUsages;

    protected ResourceEstimationDetailsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.RESOURCE_ESTIMATION_DETAILS;
    }

    @Override
    public EList<HeapUsage> getHeapUsages() {
        if (this.heapUsages == null) {
            this.heapUsages = new EObjectContainmentEList(HeapUsage.class, (InternalEObject)this, 4);
        }
        return this.heapUsages;
    }

    @Override
    public EList<AggregatedStackUsage> getStackUsages() {
        if (this.stackUsages == null) {
            this.stackUsages = new EObjectContainmentWithInverseEList(AggregatedStackUsage.class, (InternalEObject)this, 5, 4);
        }
        return this.stackUsages;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getStackUsages()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getHeapUsages()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getStackUsages()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHeapUsages();
            }
            case 5: {
                return this.getStackUsages();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getHeapUsages().clear();
                this.getHeapUsages().addAll((Collection)newValue);
                return;
            }
            case 5: {
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
            case 4: {
                this.getHeapUsages().clear();
                return;
            }
            case 5: {
                this.getStackUsages().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.heapUsages != null && !this.heapUsages.isEmpty();
            }
            case 5: {
                return this.stackUsages != null && !this.stackUsages.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

