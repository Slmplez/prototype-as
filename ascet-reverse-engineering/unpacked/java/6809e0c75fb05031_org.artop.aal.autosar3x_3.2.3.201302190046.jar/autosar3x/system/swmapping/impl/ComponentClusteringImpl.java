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
package autosar3x.system.swmapping.impl;

import autosar3x.system.swmapping.ComponentClustering;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.MappingConstraintImpl;
import autosar3x.system.swmapping.instanceref.ComponentClusteringClusteredComponent;
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
public class ComponentClusteringImpl
extends MappingConstraintImpl
implements ComponentClustering {
    protected EList<ComponentClusteringClusteredComponent> clusteredComponents;

    protected ComponentClusteringImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.COMPONENT_CLUSTERING;
    }

    @Override
    public EList<ComponentClusteringClusteredComponent> getClusteredComponents() {
        if (this.clusteredComponents == null) {
            this.clusteredComponents = new EObjectContainmentWithInverseEList(ComponentClusteringClusteredComponent.class, (InternalEObject)this, 5, 4);
        }
        return this.clusteredComponents;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getClusteredComponents()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getClusteredComponents()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getClusteredComponents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getClusteredComponents().clear();
                this.getClusteredComponents().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getClusteredComponents().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.clusteredComponents != null && !this.clusteredComponents.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

