/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportFactory;
import autosar40.commonstructure.measurementcalibrationsupport.impl.MeasurementcalibrationsupportPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MeasurementcalibrationsupportPackage
extends EPackage {
    public static final String eNAME = "measurementcalibrationsupport";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/mcs";
    public static final String eNS_PREFIX = "";
    public static final MeasurementcalibrationsupportPackage eINSTANCE = MeasurementcalibrationsupportPackageImpl.init();
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF = 0;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__GCHECKSUM = 0;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__CHECKSUM = 2;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__TIMESTAMP = 3;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__MC_DATA_INSTANCE = 4;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__CONTEXT = 5;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__TARGET = 6;
    public static final int IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF_FEATURE_COUNT = 7;
    public static final int MC_SUPPORT_DATA = 1;
    public static final int MC_SUPPORT_DATA__GCHECKSUM = 0;
    public static final int MC_SUPPORT_DATA__GTIMESTAMP = 1;
    public static final int MC_SUPPORT_DATA__CHECKSUM = 2;
    public static final int MC_SUPPORT_DATA__TIMESTAMP = 3;
    public static final int MC_SUPPORT_DATA__IMPLEMENTATION = 4;
    public static final int MC_SUPPORT_DATA__EMULATION_SUPPORTS = 5;
    public static final int MC_SUPPORT_DATA__MC_PARAMETER_INSTANCES = 6;
    public static final int MC_SUPPORT_DATA__MC_VARIABLE_INSTANCES = 7;
    public static final int MC_SUPPORT_DATA__MEASURABLE_SYSTEM_CONSTANT_VALUES = 8;
    public static final int MC_SUPPORT_DATA_FEATURE_COUNT = 9;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT = 2;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__GCHECKSUM = 0;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__GTIMESTAMP = 1;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__CHECKSUM = 2;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__TIMESTAMP = 3;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__MC_SUPPORT_DATA = 4;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__SHORT_LABEL = 5;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__CATEGORY = 6;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__BASE_REFERENCE = 7;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__ELEMENT_GROUPS = 8;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__REFERENCE_TABLE = 9;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT__VARIATION_POINT = 10;
    public static final int MC_SW_EMULATION_METHOD_SUPPORT_FEATURE_COUNT = 11;
    public static final int MC_PARAMETER_ELEMENT_GROUP = 3;
    public static final int MC_PARAMETER_ELEMENT_GROUP__GCHECKSUM = 0;
    public static final int MC_PARAMETER_ELEMENT_GROUP__GTIMESTAMP = 1;
    public static final int MC_PARAMETER_ELEMENT_GROUP__CHECKSUM = 2;
    public static final int MC_PARAMETER_ELEMENT_GROUP__TIMESTAMP = 3;
    public static final int MC_PARAMETER_ELEMENT_GROUP__MC_SW_EMULATION_METHOD_SUPPORT = 4;
    public static final int MC_PARAMETER_ELEMENT_GROUP__SHORT_LABEL = 5;
    public static final int MC_PARAMETER_ELEMENT_GROUP__RAM_LOCATION = 6;
    public static final int MC_PARAMETER_ELEMENT_GROUP__ROM_LOCATION = 7;
    public static final int MC_PARAMETER_ELEMENT_GROUP_FEATURE_COUNT = 8;
    public static final int MC_DATA_INSTANCE = 4;
    public static final int MC_DATA_INSTANCE__GCHECKSUM = 0;
    public static final int MC_DATA_INSTANCE__GTIMESTAMP = 1;
    public static final int MC_DATA_INSTANCE__CHECKSUM = 2;
    public static final int MC_DATA_INSTANCE__TIMESTAMP = 3;
    public static final int MC_DATA_INSTANCE__GSHORT_NAME = 4;
    public static final int MC_DATA_INSTANCE__SHORT_NAME = 5;
    public static final int MC_DATA_INSTANCE__LONG_NAME = 6;
    public static final int MC_DATA_INSTANCE__GUUID = 7;
    public static final int MC_DATA_INSTANCE__GCATEGORY = 8;
    public static final int MC_DATA_INSTANCE__GDESC = 9;
    public static final int MC_DATA_INSTANCE__DESC = 10;
    public static final int MC_DATA_INSTANCE__CATEGORY = 11;
    public static final int MC_DATA_INSTANCE__ADMIN_DATA = 12;
    public static final int MC_DATA_INSTANCE__INTRODUCTION = 13;
    public static final int MC_DATA_INSTANCE__ANNOTATIONS = 14;
    public static final int MC_DATA_INSTANCE__UUID = 15;
    public static final int MC_DATA_INSTANCE__ALL_EXTENSIONS = 16;
    public static final int MC_DATA_INSTANCE__CONTAINED_EXTENSIONS = 17;
    public static final int MC_DATA_INSTANCE__ARRAY_SIZE = 18;
    public static final int MC_DATA_INSTANCE__FLAT_MAP_ENTRY = 19;
    public static final int MC_DATA_INSTANCE__INSTANCE_IN_MEMORY = 20;
    public static final int MC_DATA_INSTANCE__RESULTING_PROPERTIES = 21;
    public static final int MC_DATA_INSTANCE__SUB_ELEMENTS = 22;
    public static final int MC_DATA_INSTANCE__SYMBOL = 23;
    public static final int MC_DATA_INSTANCE__VARIATION_POINT = 24;
    public static final int MC_DATA_INSTANCE_FEATURE_COUNT = 25;

    public EClass getImplementationElementInParameterInstanceRef();

    public EReference getImplementationElementInParameterInstanceRef_McDataInstance();

    public EReference getImplementationElementInParameterInstanceRef_Context();

    public EReference getImplementationElementInParameterInstanceRef_Target();

    public EClass getMcSupportData();

    public EReference getMcSupportData_Implementation();

    public EReference getMcSupportData_EmulationSupports();

    public EReference getMcSupportData_McParameterInstances();

    public EReference getMcSupportData_McVariableInstances();

    public EReference getMcSupportData_MeasurableSystemConstantValues();

    public EClass getMcSwEmulationMethodSupport();

    public EReference getMcSwEmulationMethodSupport_McSupportData();

    public EAttribute getMcSwEmulationMethodSupport_ShortLabel();

    public EAttribute getMcSwEmulationMethodSupport_Category();

    public EReference getMcSwEmulationMethodSupport_BaseReference();

    public EReference getMcSwEmulationMethodSupport_ElementGroups();

    public EReference getMcSwEmulationMethodSupport_ReferenceTable();

    public EReference getMcSwEmulationMethodSupport_VariationPoint();

    public EClass getMcParameterElementGroup();

    public EReference getMcParameterElementGroup_McSwEmulationMethodSupport();

    public EAttribute getMcParameterElementGroup_ShortLabel();

    public EReference getMcParameterElementGroup_RamLocation();

    public EReference getMcParameterElementGroup_RomLocation();

    public EClass getMcDataInstance();

    public EAttribute getMcDataInstance_ArraySize();

    public EReference getMcDataInstance_FlatMapEntry();

    public EReference getMcDataInstance_InstanceInMemory();

    public EReference getMcDataInstance_ResultingProperties();

    public EReference getMcDataInstance_SubElements();

    public EAttribute getMcDataInstance_Symbol();

    public EReference getMcDataInstance_VariationPoint();

    public MeasurementcalibrationsupportFactory getMeasurementcalibrationsupportFactory();

    public static interface Literals {
        public static final EClass IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF = eINSTANCE.getImplementationElementInParameterInstanceRef();
        public static final EReference IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__MC_DATA_INSTANCE = eINSTANCE.getImplementationElementInParameterInstanceRef_McDataInstance();
        public static final EReference IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__CONTEXT = eINSTANCE.getImplementationElementInParameterInstanceRef_Context();
        public static final EReference IMPLEMENTATION_ELEMENT_IN_PARAMETER_INSTANCE_REF__TARGET = eINSTANCE.getImplementationElementInParameterInstanceRef_Target();
        public static final EClass MC_SUPPORT_DATA = eINSTANCE.getMcSupportData();
        public static final EReference MC_SUPPORT_DATA__IMPLEMENTATION = eINSTANCE.getMcSupportData_Implementation();
        public static final EReference MC_SUPPORT_DATA__EMULATION_SUPPORTS = eINSTANCE.getMcSupportData_EmulationSupports();
        public static final EReference MC_SUPPORT_DATA__MC_PARAMETER_INSTANCES = eINSTANCE.getMcSupportData_McParameterInstances();
        public static final EReference MC_SUPPORT_DATA__MC_VARIABLE_INSTANCES = eINSTANCE.getMcSupportData_McVariableInstances();
        public static final EReference MC_SUPPORT_DATA__MEASURABLE_SYSTEM_CONSTANT_VALUES = eINSTANCE.getMcSupportData_MeasurableSystemConstantValues();
        public static final EClass MC_SW_EMULATION_METHOD_SUPPORT = eINSTANCE.getMcSwEmulationMethodSupport();
        public static final EReference MC_SW_EMULATION_METHOD_SUPPORT__MC_SUPPORT_DATA = eINSTANCE.getMcSwEmulationMethodSupport_McSupportData();
        public static final EAttribute MC_SW_EMULATION_METHOD_SUPPORT__SHORT_LABEL = eINSTANCE.getMcSwEmulationMethodSupport_ShortLabel();
        public static final EAttribute MC_SW_EMULATION_METHOD_SUPPORT__CATEGORY = eINSTANCE.getMcSwEmulationMethodSupport_Category();
        public static final EReference MC_SW_EMULATION_METHOD_SUPPORT__BASE_REFERENCE = eINSTANCE.getMcSwEmulationMethodSupport_BaseReference();
        public static final EReference MC_SW_EMULATION_METHOD_SUPPORT__ELEMENT_GROUPS = eINSTANCE.getMcSwEmulationMethodSupport_ElementGroups();
        public static final EReference MC_SW_EMULATION_METHOD_SUPPORT__REFERENCE_TABLE = eINSTANCE.getMcSwEmulationMethodSupport_ReferenceTable();
        public static final EReference MC_SW_EMULATION_METHOD_SUPPORT__VARIATION_POINT = eINSTANCE.getMcSwEmulationMethodSupport_VariationPoint();
        public static final EClass MC_PARAMETER_ELEMENT_GROUP = eINSTANCE.getMcParameterElementGroup();
        public static final EReference MC_PARAMETER_ELEMENT_GROUP__MC_SW_EMULATION_METHOD_SUPPORT = eINSTANCE.getMcParameterElementGroup_McSwEmulationMethodSupport();
        public static final EAttribute MC_PARAMETER_ELEMENT_GROUP__SHORT_LABEL = eINSTANCE.getMcParameterElementGroup_ShortLabel();
        public static final EReference MC_PARAMETER_ELEMENT_GROUP__RAM_LOCATION = eINSTANCE.getMcParameterElementGroup_RamLocation();
        public static final EReference MC_PARAMETER_ELEMENT_GROUP__ROM_LOCATION = eINSTANCE.getMcParameterElementGroup_RomLocation();
        public static final EClass MC_DATA_INSTANCE = eINSTANCE.getMcDataInstance();
        public static final EAttribute MC_DATA_INSTANCE__ARRAY_SIZE = eINSTANCE.getMcDataInstance_ArraySize();
        public static final EReference MC_DATA_INSTANCE__FLAT_MAP_ENTRY = eINSTANCE.getMcDataInstance_FlatMapEntry();
        public static final EReference MC_DATA_INSTANCE__INSTANCE_IN_MEMORY = eINSTANCE.getMcDataInstance_InstanceInMemory();
        public static final EReference MC_DATA_INSTANCE__RESULTING_PROPERTIES = eINSTANCE.getMcDataInstance_ResultingProperties();
        public static final EReference MC_DATA_INSTANCE__SUB_ELEMENTS = eINSTANCE.getMcDataInstance_SubElements();
        public static final EAttribute MC_DATA_INSTANCE__SYMBOL = eINSTANCE.getMcDataInstance_Symbol();
        public static final EReference MC_DATA_INSTANCE__VARIATION_POINT = eINSTANCE.getMcDataInstance_VariationPoint();
    }
}

