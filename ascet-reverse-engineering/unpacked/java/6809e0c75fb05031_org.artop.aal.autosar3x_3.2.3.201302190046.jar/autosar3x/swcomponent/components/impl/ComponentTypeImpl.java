/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GPortPrototype
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.PortGroup;
import autosar3x.swcomponent.components.PortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
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
public class ComponentTypeImpl
extends ARElementImpl
implements ComponentType {
    protected EList<PortPrototype> ports;
    protected EList<PortGroup> portGroups;

    protected ComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.COMPONENT_TYPE;
    }

    public EList<GPortPrototype> gGetPorts() {
        EList<PortPrototype> untypedList = this.getPorts();
        return untypedList;
    }

    @Override
    public EList<PortPrototype> getPorts() {
        if (this.ports == null) {
            this.ports = new EObjectContainmentWithInverseEList(PortPrototype.class, (InternalEObject)this, 20, 17);
        }
        return this.ports;
    }

    @Override
    public EList<PortGroup> getPortGroups() {
        if (this.portGroups == null) {
            this.portGroups = new EObjectContainmentWithInverseEList(PortGroup.class, (InternalEObject)this, 21, 17);
        }
        return this.portGroups;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getPorts()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getPortGroups()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getPortGroups()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetPorts();
            }
            case 20: {
                return this.getPorts();
            }
            case 21: {
                return this.getPortGroups();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gGetPorts().clear();
                this.gGetPorts().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getPorts().clear();
                this.getPorts().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getPortGroups().clear();
                this.getPortGroups().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gGetPorts().clear();
                return;
            }
            case 20: {
                this.getPorts().clear();
                return;
            }
            case 21: {
                this.getPortGroups().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return !this.gGetPorts().isEmpty();
            }
            case 20: {
                return this.ports != null && !this.ports.isEmpty();
            }
            case 21: {
                return this.portGroups != null && !this.portGroups.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GSwComponentType.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GSwComponentType.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 19;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

