/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.composition.impl;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.swcomponent.components.impl.SwComponentTypeImpl;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositionSwComponentTypeImpl
extends SwComponentTypeImpl
implements CompositionSwComponentType,
IReferringClass {
    protected EList<SwComponentPrototype> components;
    protected EList<SwConnector> connectors;
    protected EList<ConstantSpecificationMappingSet> constantValueMappings;
    protected EList<DataTypeMappingSet> dataTypeMappings;

    protected CompositionSwComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CompositionPackage.Literals.COMPOSITION_SW_COMPONENT_TYPE;
    }

    public EList<GSwComponentPrototype> gGetComponents() {
        EList<SwComponentPrototype> untypedList = this.getComponents();
        return untypedList;
    }

    @Override
    public EList<SwComponentPrototype> getComponents() {
        if (this.components == null) {
            this.components = new EObjectContainmentWithInverseEList(SwComponentPrototype.class, (InternalEObject)this, 27, 20);
        }
        return this.components;
    }

    @Override
    public EList<SwConnector> getConnectors() {
        if (this.connectors == null) {
            this.connectors = new EObjectContainmentWithInverseEList(SwConnector.class, (InternalEObject)this, 28, 19);
        }
        return this.connectors;
    }

    @Override
    public EList<ConstantSpecificationMappingSet> getConstantValueMappings() {
        if (this.constantValueMappings == null) {
            this.constantValueMappings = new EObjectResolvingReferringEList(ConstantSpecificationMappingSet.class, (InternalEObject)this, 29);
        }
        return this.constantValueMappings;
    }

    @Override
    public EList<DataTypeMappingSet> getDataTypeMappings() {
        if (this.dataTypeMappings == null) {
            this.dataTypeMappings = new EObjectResolvingReferringEList(DataTypeMappingSet.class, (InternalEObject)this, 30);
        }
        return this.dataTypeMappings;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return ((InternalEList)this.getComponents()).basicAdd((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getConnectors()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return ((InternalEList)this.getComponents()).basicRemove((Object)otherEnd, msgs);
            }
            case 28: {
                return ((InternalEList)this.getConnectors()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.gGetComponents();
            }
            case 27: {
                return this.getComponents();
            }
            case 28: {
                return this.getConnectors();
            }
            case 29: {
                return this.getConstantValueMappings();
            }
            case 30: {
                return this.getDataTypeMappings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.gGetComponents().clear();
                this.gGetComponents().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getComponents().clear();
                this.getComponents().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.getConnectors().clear();
                this.getConnectors().addAll((Collection)newValue);
                return;
            }
            case 29: {
                this.getConstantValueMappings().clear();
                this.getConstantValueMappings().addAll((Collection)newValue);
                return;
            }
            case 30: {
                this.getDataTypeMappings().clear();
                this.getDataTypeMappings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.gGetComponents().clear();
                return;
            }
            case 27: {
                this.getComponents().clear();
                return;
            }
            case 28: {
                this.getConnectors().clear();
                return;
            }
            case 29: {
                this.getConstantValueMappings().clear();
                return;
            }
            case 30: {
                this.getDataTypeMappings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return !this.gGetComponents().isEmpty();
            }
            case 27: {
                return this.components != null && !this.components.isEmpty();
            }
            case 28: {
                return this.connectors != null && !this.connectors.isEmpty();
            }
            case 29: {
                return this.constantValueMappings != null && !this.constantValueMappings.isEmpty();
            }
            case 30: {
                return this.dataTypeMappings != null && !this.dataTypeMappings.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GCompositionSwComponentType.class) {
            switch (derivedFeatureID) {
                case 26: {
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
                    return 26;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
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

