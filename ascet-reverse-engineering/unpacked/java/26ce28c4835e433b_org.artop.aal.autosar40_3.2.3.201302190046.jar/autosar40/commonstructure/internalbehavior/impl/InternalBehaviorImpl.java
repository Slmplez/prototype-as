/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.commonstructure.internalbehavior.impl;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.InternalBehavior;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.genericstructure.abstractstructure.impl.AtpStructureElementImpl;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class InternalBehaviorImpl
extends AtpStructureElementImpl
implements InternalBehavior,
IReferringClass {
    protected EList<ParameterDataPrototype> constantMemories;
    protected EList<ConstantSpecificationMappingSet> constantValueMappings;
    protected EList<DataTypeMappingSet> dataTypeMappings;
    protected EList<ExclusiveArea> exclusiveAreas;
    protected EList<VariableDataPrototype> staticMemories;

    protected InternalBehaviorImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return InternalbehaviorPackage.Literals.INTERNAL_BEHAVIOR;
    }

    public EList<GExclusiveArea> gGetExclusiveAreas() {
        EList<ExclusiveArea> untypedList = this.getExclusiveAreas();
        return untypedList;
    }

    @Override
    public EList<ParameterDataPrototype> getConstantMemories() {
        if (this.constantMemories == null) {
            this.constantMemories = new EObjectContainmentEList(ParameterDataPrototype.class, (InternalEObject)this, 20);
        }
        return this.constantMemories;
    }

    @Override
    public EList<ConstantSpecificationMappingSet> getConstantValueMappings() {
        if (this.constantValueMappings == null) {
            this.constantValueMappings = new EObjectResolvingReferringEList(ConstantSpecificationMappingSet.class, (InternalEObject)this, 21);
        }
        return this.constantValueMappings;
    }

    @Override
    public EList<DataTypeMappingSet> getDataTypeMappings() {
        if (this.dataTypeMappings == null) {
            this.dataTypeMappings = new EObjectResolvingReferringEList(DataTypeMappingSet.class, (InternalEObject)this, 22);
        }
        return this.dataTypeMappings;
    }

    @Override
    public EList<ExclusiveArea> getExclusiveAreas() {
        if (this.exclusiveAreas == null) {
            this.exclusiveAreas = new EObjectContainmentWithInverseEList(ExclusiveArea.class, (InternalEObject)this, 23, 18);
        }
        return this.exclusiveAreas;
    }

    @Override
    public EList<VariableDataPrototype> getStaticMemories() {
        if (this.staticMemories == null) {
            this.staticMemories = new EObjectContainmentEList(VariableDataPrototype.class, (InternalEObject)this, 24);
        }
        return this.staticMemories;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 23: {
                return ((InternalEList)this.getExclusiveAreas()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return ((InternalEList)this.getConstantMemories()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return ((InternalEList)this.getExclusiveAreas()).basicRemove((Object)otherEnd, msgs);
            }
            case 24: {
                return ((InternalEList)this.getStaticMemories()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetExclusiveAreas();
            }
            case 20: {
                return this.getConstantMemories();
            }
            case 21: {
                return this.getConstantValueMappings();
            }
            case 22: {
                return this.getDataTypeMappings();
            }
            case 23: {
                return this.getExclusiveAreas();
            }
            case 24: {
                return this.getStaticMemories();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gGetExclusiveAreas().clear();
                this.gGetExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.getConstantMemories().clear();
                this.getConstantMemories().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getConstantValueMappings().clear();
                this.getConstantValueMappings().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getDataTypeMappings().clear();
                this.getDataTypeMappings().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getExclusiveAreas().clear();
                this.getExclusiveAreas().addAll((Collection)newValue);
                return;
            }
            case 24: {
                this.getStaticMemories().clear();
                this.getStaticMemories().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gGetExclusiveAreas().clear();
                return;
            }
            case 20: {
                this.getConstantMemories().clear();
                return;
            }
            case 21: {
                this.getConstantValueMappings().clear();
                return;
            }
            case 22: {
                this.getDataTypeMappings().clear();
                return;
            }
            case 23: {
                this.getExclusiveAreas().clear();
                return;
            }
            case 24: {
                this.getStaticMemories().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return !this.gGetExclusiveAreas().isEmpty();
            }
            case 20: {
                return this.constantMemories != null && !this.constantMemories.isEmpty();
            }
            case 21: {
                return this.constantValueMappings != null && !this.constantValueMappings.isEmpty();
            }
            case 22: {
                return this.dataTypeMappings != null && !this.dataTypeMappings.isEmpty();
            }
            case 23: {
                return this.exclusiveAreas != null && !this.exclusiveAreas.isEmpty();
            }
            case 24: {
                return this.staticMemories != null && !this.staticMemories.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GInternalBehavior.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 6;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GInternalBehavior.class) {
            switch (baseFeatureID) {
                case 6: {
                    return 19;
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

