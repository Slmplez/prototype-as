/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops;

import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsFactory;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.impl.InstantiationdatadefpropsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstantiationdatadefpropsPackage
extends EPackage {
    public static final String eNAME = "instantiationdatadefprops";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/iddp";
    public static final String eNS_PREFIX = "";
    public static final InstantiationdatadefpropsPackage eINSTANCE = InstantiationdatadefpropsPackageImpl.init();
    public static final int INSTANTIATION_DATA_DEF_PROPS = 0;
    public static final int INSTANTIATION_DATA_DEF_PROPS__GCHECKSUM = 0;
    public static final int INSTANTIATION_DATA_DEF_PROPS__GTIMESTAMP = 1;
    public static final int INSTANTIATION_DATA_DEF_PROPS__CHECKSUM = 2;
    public static final int INSTANTIATION_DATA_DEF_PROPS__TIMESTAMP = 3;
    public static final int INSTANTIATION_DATA_DEF_PROPS__PARAMETER_INSTANCE = 4;
    public static final int INSTANTIATION_DATA_DEF_PROPS__SW_DATA_DEF_PROPS = 5;
    public static final int INSTANTIATION_DATA_DEF_PROPS__VARIABLE_INSTANCE = 6;
    public static final int INSTANTIATION_DATA_DEF_PROPS__VARIATION_POINT = 7;
    public static final int INSTANTIATION_DATA_DEF_PROPS_FEATURE_COUNT = 8;

    public EClass getInstantiationDataDefProps();

    public EReference getInstantiationDataDefProps_ParameterInstance();

    public EReference getInstantiationDataDefProps_SwDataDefProps();

    public EReference getInstantiationDataDefProps_VariableInstance();

    public EReference getInstantiationDataDefProps_VariationPoint();

    public InstantiationdatadefpropsFactory getInstantiationdatadefpropsFactory();

    public static interface Literals {
        public static final EClass INSTANTIATION_DATA_DEF_PROPS = eINSTANCE.getInstantiationDataDefProps();
        public static final EReference INSTANTIATION_DATA_DEF_PROPS__PARAMETER_INSTANCE = eINSTANCE.getInstantiationDataDefProps_ParameterInstance();
        public static final EReference INSTANTIATION_DATA_DEF_PROPS__SW_DATA_DEF_PROPS = eINSTANCE.getInstantiationDataDefProps_SwDataDefProps();
        public static final EReference INSTANTIATION_DATA_DEF_PROPS__VARIABLE_INSTANCE = eINSTANCE.getInstantiationDataDefProps_VariableInstance();
        public static final EReference INSTANTIATION_DATA_DEF_PROPS__VARIATION_POINT = eINSTANCE.getInstantiationDataDefProps_VariationPoint();
    }
}

