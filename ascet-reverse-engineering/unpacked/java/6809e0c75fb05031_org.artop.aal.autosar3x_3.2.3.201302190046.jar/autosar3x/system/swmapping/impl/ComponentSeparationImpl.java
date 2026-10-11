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

import autosar3x.system.swmapping.ComponentSeparation;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.MappingConstraintImpl;
import autosar3x.system.swmapping.instanceref.ComponentSeparationSeparatedComponent;
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
public class ComponentSeparationImpl
extends MappingConstraintImpl
implements ComponentSeparation {
    protected EList<ComponentSeparationSeparatedComponent> separatedComponents;

    protected ComponentSeparationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SwmappingPackage.Literals.COMPONENT_SEPARATION;
    }

    @Override
    public EList<ComponentSeparationSeparatedComponent> getSeparatedComponents() {
        if (this.separatedComponents == null) {
            this.separatedComponents = new EObjectContainmentWithInverseEList(ComponentSeparationSeparatedComponent.class, (InternalEObject)this, 5, 4);
        }
        return this.separatedComponents;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getSeparatedComponents()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getSeparatedComponents()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSeparatedComponents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getSeparatedComponents().clear();
                this.getSeparatedComponents().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getSeparatedComponents().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.separatedComponents != null && !this.separatedComponents.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

