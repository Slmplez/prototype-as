/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.components.impl;

import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.components.ParameterSwComponentType;
import autosar40.swcomponent.components.impl.SwComponentTypeImpl;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationDataDefProps;
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
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ParameterSwComponentTypeImpl
extends SwComponentTypeImpl
implements ParameterSwComponentType,
IReferringClass {
    protected EList<ConstantSpecificationMappingSet> constantMappings;
    protected EList<DataTypeMappingSet> dataTypeMappings;
    protected EList<InstantiationDataDefProps> instantiationDataDefProps;

    protected ParameterSwComponentTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.PARAMETER_SW_COMPONENT_TYPE;
    }

    @Override
    public EList<ConstantSpecificationMappingSet> getConstantMappings() {
        if (this.constantMappings == null) {
            this.constantMappings = new EObjectResolvingReferringEList(ConstantSpecificationMappingSet.class, (InternalEObject)this, 26);
        }
        return this.constantMappings;
    }

    @Override
    public EList<DataTypeMappingSet> getDataTypeMappings() {
        if (this.dataTypeMappings == null) {
            this.dataTypeMappings = new EObjectResolvingReferringEList(DataTypeMappingSet.class, (InternalEObject)this, 27);
        }
        return this.dataTypeMappings;
    }

    @Override
    public EList<InstantiationDataDefProps> getInstantiationDataDefProps() {
        if (this.instantiationDataDefProps == null) {
            this.instantiationDataDefProps = new EObjectContainmentEList(InstantiationDataDefProps.class, (InternalEObject)this, 28);
        }
        return this.instantiationDataDefProps;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return ((InternalEList)this.getInstantiationDataDefProps()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getConstantMappings();
            }
            case 27: {
                return this.getDataTypeMappings();
            }
            case 28: {
                return this.getInstantiationDataDefProps();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.getConstantMappings().clear();
                this.getConstantMappings().addAll((Collection)newValue);
                return;
            }
            case 27: {
                this.getDataTypeMappings().clear();
                this.getDataTypeMappings().addAll((Collection)newValue);
                return;
            }
            case 28: {
                this.getInstantiationDataDefProps().clear();
                this.getInstantiationDataDefProps().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.getConstantMappings().clear();
                return;
            }
            case 27: {
                this.getDataTypeMappings().clear();
                return;
            }
            case 28: {
                this.getInstantiationDataDefProps().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.constantMappings != null && !this.constantMappings.isEmpty();
            }
            case 27: {
                return this.dataTypeMappings != null && !this.dataTypeMappings.isEmpty();
            }
            case 28: {
                return this.instantiationDataDefProps != null && !this.instantiationDataDefProps.isEmpty();
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

