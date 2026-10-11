/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.dataelements;

import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsFactory;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DataelementsPackage
extends EPackage {
    public static final String eNAME = "dataelements";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/de";
    public static final String eNS_PREFIX = "";
    public static final DataelementsPackage eINSTANCE = DataelementsPackageImpl.init();
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF = 0;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__GCHECKSUM = 0;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__CHECKSUM = 2;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__TIMESTAMP = 3;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__PORT_PROTOTYPE = 4;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = 5;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 6;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 7;
    public static final int AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF_FEATURE_COUNT = 8;
    public static final int AUTOSAR_PARAMETER_REF = 1;
    public static final int AUTOSAR_PARAMETER_REF__GCHECKSUM = 0;
    public static final int AUTOSAR_PARAMETER_REF__GTIMESTAMP = 1;
    public static final int AUTOSAR_PARAMETER_REF__CHECKSUM = 2;
    public static final int AUTOSAR_PARAMETER_REF__TIMESTAMP = 3;
    public static final int AUTOSAR_PARAMETER_REF__AUTOSAR_PARAMETER = 4;
    public static final int AUTOSAR_PARAMETER_REF__LOCAL_PARAMETER = 5;
    public static final int AUTOSAR_PARAMETER_REF_FEATURE_COUNT = 6;
    public static final int PARAMETER_ACCESS = 2;
    public static final int PARAMETER_ACCESS__GCHECKSUM = 0;
    public static final int PARAMETER_ACCESS__GTIMESTAMP = 1;
    public static final int PARAMETER_ACCESS__CHECKSUM = 2;
    public static final int PARAMETER_ACCESS__TIMESTAMP = 3;
    public static final int PARAMETER_ACCESS__GSHORT_NAME = 4;
    public static final int PARAMETER_ACCESS__SHORT_NAME = 5;
    public static final int PARAMETER_ACCESS__LONG_NAME = 6;
    public static final int PARAMETER_ACCESS__GUUID = 7;
    public static final int PARAMETER_ACCESS__GCATEGORY = 8;
    public static final int PARAMETER_ACCESS__GDESC = 9;
    public static final int PARAMETER_ACCESS__DESC = 10;
    public static final int PARAMETER_ACCESS__CATEGORY = 11;
    public static final int PARAMETER_ACCESS__ADMIN_DATA = 12;
    public static final int PARAMETER_ACCESS__INTRODUCTION = 13;
    public static final int PARAMETER_ACCESS__ANNOTATIONS = 14;
    public static final int PARAMETER_ACCESS__UUID = 15;
    public static final int PARAMETER_ACCESS__ALL_EXTENSIONS = 16;
    public static final int PARAMETER_ACCESS__CONTAINED_EXTENSIONS = 17;
    public static final int PARAMETER_ACCESS__GPARAMETER = 18;
    public static final int PARAMETER_ACCESS__RUNNABLE_ENTITY = 19;
    public static final int PARAMETER_ACCESS__ACCESSED_PARAMETER = 20;
    public static final int PARAMETER_ACCESS__SW_DATA_DEF_PROPS = 21;
    public static final int PARAMETER_ACCESS__VARIATION_POINT = 22;
    public static final int PARAMETER_ACCESS_FEATURE_COUNT = 23;
    public static final int VARIABLE_ACCESS = 3;
    public static final int VARIABLE_ACCESS__GCHECKSUM = 0;
    public static final int VARIABLE_ACCESS__GTIMESTAMP = 1;
    public static final int VARIABLE_ACCESS__CHECKSUM = 2;
    public static final int VARIABLE_ACCESS__TIMESTAMP = 3;
    public static final int VARIABLE_ACCESS__GSHORT_NAME = 4;
    public static final int VARIABLE_ACCESS__SHORT_NAME = 5;
    public static final int VARIABLE_ACCESS__LONG_NAME = 6;
    public static final int VARIABLE_ACCESS__GUUID = 7;
    public static final int VARIABLE_ACCESS__GCATEGORY = 8;
    public static final int VARIABLE_ACCESS__GDESC = 9;
    public static final int VARIABLE_ACCESS__DESC = 10;
    public static final int VARIABLE_ACCESS__CATEGORY = 11;
    public static final int VARIABLE_ACCESS__ADMIN_DATA = 12;
    public static final int VARIABLE_ACCESS__INTRODUCTION = 13;
    public static final int VARIABLE_ACCESS__ANNOTATIONS = 14;
    public static final int VARIABLE_ACCESS__UUID = 15;
    public static final int VARIABLE_ACCESS__ALL_EXTENSIONS = 16;
    public static final int VARIABLE_ACCESS__CONTAINED_EXTENSIONS = 17;
    public static final int VARIABLE_ACCESS__GDATA_ELEMENT = 18;
    public static final int VARIABLE_ACCESS__ACCESSED_VARIABLE = 19;
    public static final int VARIABLE_ACCESS__SCOPE = 20;
    public static final int VARIABLE_ACCESS__VARIATION_POINT = 21;
    public static final int VARIABLE_ACCESS_FEATURE_COUNT = 22;
    public static final int AUTOSAR_VARIABLE_REF = 4;
    public static final int AUTOSAR_VARIABLE_REF__GCHECKSUM = 0;
    public static final int AUTOSAR_VARIABLE_REF__GTIMESTAMP = 1;
    public static final int AUTOSAR_VARIABLE_REF__CHECKSUM = 2;
    public static final int AUTOSAR_VARIABLE_REF__TIMESTAMP = 3;
    public static final int AUTOSAR_VARIABLE_REF__AUTOSAR_VARIABLE_IN_IMPL_DATATYPE = 4;
    public static final int AUTOSAR_VARIABLE_REF__AUTOSAR_VARIABLE = 5;
    public static final int AUTOSAR_VARIABLE_REF__LOCAL_VARIABLE = 6;
    public static final int AUTOSAR_VARIABLE_REF_FEATURE_COUNT = 7;
    public static final int VARIABLE_ACCESS_SCOPE_ENUM = 5;

    public EClass getArVariableInImplementationDataInstanceRef();

    public EReference getArVariableInImplementationDataInstanceRef_PortPrototype();

    public EReference getArVariableInImplementationDataInstanceRef_RootVariableDataPrototype();

    public EReference getArVariableInImplementationDataInstanceRef_ContextDataPrototypes();

    public EReference getArVariableInImplementationDataInstanceRef_TargetDataPrototype();

    public EClass getAutosarParameterRef();

    public EReference getAutosarParameterRef_AutosarParameter();

    public EReference getAutosarParameterRef_LocalParameter();

    public EClass getParameterAccess();

    public EReference getParameterAccess_RunnableEntity();

    public EReference getParameterAccess_AccessedParameter();

    public EReference getParameterAccess_SwDataDefProps();

    public EReference getParameterAccess_VariationPoint();

    public EClass getVariableAccess();

    public EReference getVariableAccess_AccessedVariable();

    public EAttribute getVariableAccess_Scope();

    public EReference getVariableAccess_VariationPoint();

    public EClass getAutosarVariableRef();

    public EReference getAutosarVariableRef_AutosarVariableInImplDatatype();

    public EReference getAutosarVariableRef_AutosarVariable();

    public EReference getAutosarVariableRef_LocalVariable();

    public EEnum getVariableAccessScopeEnum();

    public DataelementsFactory getDataelementsFactory();

    public static interface Literals {
        public static final EClass AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF = eINSTANCE.getArVariableInImplementationDataInstanceRef();
        public static final EReference AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__PORT_PROTOTYPE = eINSTANCE.getArVariableInImplementationDataInstanceRef_PortPrototype();
        public static final EReference AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = eINSTANCE.getArVariableInImplementationDataInstanceRef_RootVariableDataPrototype();
        public static final EReference AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getArVariableInImplementationDataInstanceRef_ContextDataPrototypes();
        public static final EReference AR_VARIABLE_IN_IMPLEMENTATION_DATA_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getArVariableInImplementationDataInstanceRef_TargetDataPrototype();
        public static final EClass AUTOSAR_PARAMETER_REF = eINSTANCE.getAutosarParameterRef();
        public static final EReference AUTOSAR_PARAMETER_REF__AUTOSAR_PARAMETER = eINSTANCE.getAutosarParameterRef_AutosarParameter();
        public static final EReference AUTOSAR_PARAMETER_REF__LOCAL_PARAMETER = eINSTANCE.getAutosarParameterRef_LocalParameter();
        public static final EClass PARAMETER_ACCESS = eINSTANCE.getParameterAccess();
        public static final EReference PARAMETER_ACCESS__RUNNABLE_ENTITY = eINSTANCE.getParameterAccess_RunnableEntity();
        public static final EReference PARAMETER_ACCESS__ACCESSED_PARAMETER = eINSTANCE.getParameterAccess_AccessedParameter();
        public static final EReference PARAMETER_ACCESS__SW_DATA_DEF_PROPS = eINSTANCE.getParameterAccess_SwDataDefProps();
        public static final EReference PARAMETER_ACCESS__VARIATION_POINT = eINSTANCE.getParameterAccess_VariationPoint();
        public static final EClass VARIABLE_ACCESS = eINSTANCE.getVariableAccess();
        public static final EReference VARIABLE_ACCESS__ACCESSED_VARIABLE = eINSTANCE.getVariableAccess_AccessedVariable();
        public static final EAttribute VARIABLE_ACCESS__SCOPE = eINSTANCE.getVariableAccess_Scope();
        public static final EReference VARIABLE_ACCESS__VARIATION_POINT = eINSTANCE.getVariableAccess_VariationPoint();
        public static final EClass AUTOSAR_VARIABLE_REF = eINSTANCE.getAutosarVariableRef();
        public static final EReference AUTOSAR_VARIABLE_REF__AUTOSAR_VARIABLE_IN_IMPL_DATATYPE = eINSTANCE.getAutosarVariableRef_AutosarVariableInImplDatatype();
        public static final EReference AUTOSAR_VARIABLE_REF__AUTOSAR_VARIABLE = eINSTANCE.getAutosarVariableRef_AutosarVariable();
        public static final EReference AUTOSAR_VARIABLE_REF__LOCAL_VARIABLE = eINSTANCE.getAutosarVariableRef_LocalVariable();
        public static final EEnum VARIABLE_ACCESS_SCOPE_ENUM = eINSTANCE.getVariableAccessScopeEnum();
    }
}

