/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar3x.swcomponent.composition.impl;

import autosar3x.swcomponent.components.impl.ComponentTypeImpl;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.swcomponent.composition.ConnectorPrototype;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
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
public class CompositionTypeImpl
extends ComponentTypeImpl
implements CompositionType {
    protected EList<ComponentPrototype> components;
    protected EList<ConnectorPrototype> connectors;

    protected CompositionTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.COMPOSITION_TYPE;
    }

    public EList<GSwComponentPrototype> gGetComponents() {
        EList<ComponentPrototype> untypedList = this.getComponents();
        return untypedList;
    }

    @Override
    public EList<ComponentPrototype> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(ComponentPrototype.class, (InternalEObject)this, 23, 18);
        }
        return this.components;
    }

    @Override
    public EList<ConnectorPrototype> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(ConnectorPrototype.class, (InternalEObject)this, 24, 17);
        }
        return this.connectors;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.gGetComponents();
            }
            case 23: {
                return this.getComponents();
            }
            case 24: {
                return this.getConnectors();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.gGetComponents().clear();
                this.gGetComponents().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.gGetComponents().clear();
                return;
            }
            case 23: {
                this.getComponents().clear();
                return;
            }
            case 24: {
                this.getConnectors().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return !this.gGetComponents().isEmpty();
            }
            case 23: {
                return this.components != null && !this.components.isEmpty();
            }
            case 24: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompositionSwComponentType.class) {
            switch (derivedFeatureID) {
                case 22: {
                    return 8;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GCompositionSwComponentType.class) {
            switch (baseFeatureID) {
                case 8: {
                    return 22;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }
}

