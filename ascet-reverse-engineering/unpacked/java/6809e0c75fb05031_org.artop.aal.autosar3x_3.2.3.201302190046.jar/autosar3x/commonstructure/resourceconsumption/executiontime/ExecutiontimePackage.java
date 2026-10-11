/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimeFactory;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ExecutiontimePackage
extends EPackage {
    public static final String eNAME = "executiontime";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/rc/et";
    public static final String eNS_PREFIX = "";
    public static final ExecutiontimePackage eINSTANCE = ExecutiontimePackageImpl.init();
    public static final int ECU_PROTOTYPE = 0;
    public static final int ECU_PROTOTYPE__GCHECKSUM = 0;
    public static final int ECU_PROTOTYPE__GTIMESTAMP = 1;
    public static final int ECU_PROTOTYPE__CHECKSUM = 2;
    public static final int ECU_PROTOTYPE__TIMESTAMP = 3;
    public static final int ECU_PROTOTYPE__EXECUTION_TIME = 4;
    public static final int ECU_PROTOTYPE__ECU = 5;
    public static final int ECU_PROTOTYPE_FEATURE_COUNT = 6;
    public static final int EXECUTION_TIME = 1;
    public static final int EXECUTION_TIME__GCHECKSUM = 0;
    public static final int EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int EXECUTION_TIME__CHECKSUM = 2;
    public static final int EXECUTION_TIME__TIMESTAMP = 3;
    public static final int EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int EXECUTION_TIME__GUUID = 5;
    public static final int EXECUTION_TIME__GCATEGORY = 6;
    public static final int EXECUTION_TIME__GDESC = 7;
    public static final int EXECUTION_TIME__SHORT_NAME = 8;
    public static final int EXECUTION_TIME__LONG_NAME = 9;
    public static final int EXECUTION_TIME__DESC = 10;
    public static final int EXECUTION_TIME__CATEGORY = 11;
    public static final int EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int EXECUTION_TIME__INTRODUCTION = 13;
    public static final int EXECUTION_TIME__UUID = 14;
    public static final int EXECUTION_TIME__ALL_EXTENSIONS = 15;
    public static final int EXECUTION_TIME__CONTAINED_EXTENSIONS = 16;
    public static final int EXECUTION_TIME__RESOURCE_CONSUMPTION = 17;
    public static final int EXECUTION_TIME__ECU = 18;
    public static final int EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int EXECUTION_TIME__EXTERNAL_LIBRARIES = 20;
    public static final int EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 22;
    public static final int EXECUTION_TIME__RUNNABLE = 23;
    public static final int EXECUTION_TIME__SOFTWARE_CONTEXT = 24;
    public static final int EXECUTION_TIME_FEATURE_COUNT = 25;
    public static final int MEMORY_SECTION_LOCATION = 2;
    public static final int MEMORY_SECTION_LOCATION__GCHECKSUM = 0;
    public static final int MEMORY_SECTION_LOCATION__GTIMESTAMP = 1;
    public static final int MEMORY_SECTION_LOCATION__CHECKSUM = 2;
    public static final int MEMORY_SECTION_LOCATION__TIMESTAMP = 3;
    public static final int MEMORY_SECTION_LOCATION__EXECUTION_TIME = 4;
    public static final int MEMORY_SECTION_LOCATION__PROVIDED_MEMORY = 5;
    public static final int MEMORY_SECTION_LOCATION__SOFTWARE_MEMORY_SECTION = 6;
    public static final int MEMORY_SECTION_LOCATION_FEATURE_COUNT = 7;
    public static final int MEASURED_EXECUTION_TIME = 3;
    public static final int MEASURED_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int MEASURED_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int MEASURED_EXECUTION_TIME__CHECKSUM = 2;
    public static final int MEASURED_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int MEASURED_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int MEASURED_EXECUTION_TIME__GUUID = 5;
    public static final int MEASURED_EXECUTION_TIME__GCATEGORY = 6;
    public static final int MEASURED_EXECUTION_TIME__GDESC = 7;
    public static final int MEASURED_EXECUTION_TIME__SHORT_NAME = 8;
    public static final int MEASURED_EXECUTION_TIME__LONG_NAME = 9;
    public static final int MEASURED_EXECUTION_TIME__DESC = 10;
    public static final int MEASURED_EXECUTION_TIME__CATEGORY = 11;
    public static final int MEASURED_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int MEASURED_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int MEASURED_EXECUTION_TIME__UUID = 14;
    public static final int MEASURED_EXECUTION_TIME__ALL_EXTENSIONS = 15;
    public static final int MEASURED_EXECUTION_TIME__CONTAINED_EXTENSIONS = 16;
    public static final int MEASURED_EXECUTION_TIME__RESOURCE_CONSUMPTION = 17;
    public static final int MEASURED_EXECUTION_TIME__ECU = 18;
    public static final int MEASURED_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int MEASURED_EXECUTION_TIME__EXTERNAL_LIBRARIES = 20;
    public static final int MEASURED_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int MEASURED_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 22;
    public static final int MEASURED_EXECUTION_TIME__RUNNABLE = 23;
    public static final int MEASURED_EXECUTION_TIME__SOFTWARE_CONTEXT = 24;
    public static final int MEASURED_EXECUTION_TIME__AVERAGE_EXECUTION_TIME = 25;
    public static final int MEASURED_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = 26;
    public static final int MEASURED_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = 27;
    public static final int MEASURED_EXECUTION_TIME_FEATURE_COUNT = 28;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME = 4;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GUUID = 5;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GCATEGORY = 6;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GDESC = 7;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__SHORT_NAME = 8;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__LONG_NAME = 9;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__DESC = 10;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CATEGORY = 11;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__UUID = 14;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ALL_EXTENSIONS = 15;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CONTAINED_EXTENSIONS = 16;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__RESOURCE_CONSUMPTION = 17;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ECU = 18;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__EXTERNAL_LIBRARIES = 20;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 22;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__RUNNABLE = 23;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__SOFTWARE_CONTEXT = 24;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__DESCRIPTION = 25;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME_FEATURE_COUNT = 26;
    public static final int SIMULATED_EXECUTION_TIME = 5;
    public static final int SIMULATED_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int SIMULATED_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int SIMULATED_EXECUTION_TIME__CHECKSUM = 2;
    public static final int SIMULATED_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int SIMULATED_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int SIMULATED_EXECUTION_TIME__GUUID = 5;
    public static final int SIMULATED_EXECUTION_TIME__GCATEGORY = 6;
    public static final int SIMULATED_EXECUTION_TIME__GDESC = 7;
    public static final int SIMULATED_EXECUTION_TIME__SHORT_NAME = 8;
    public static final int SIMULATED_EXECUTION_TIME__LONG_NAME = 9;
    public static final int SIMULATED_EXECUTION_TIME__DESC = 10;
    public static final int SIMULATED_EXECUTION_TIME__CATEGORY = 11;
    public static final int SIMULATED_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int SIMULATED_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int SIMULATED_EXECUTION_TIME__UUID = 14;
    public static final int SIMULATED_EXECUTION_TIME__ALL_EXTENSIONS = 15;
    public static final int SIMULATED_EXECUTION_TIME__CONTAINED_EXTENSIONS = 16;
    public static final int SIMULATED_EXECUTION_TIME__RESOURCE_CONSUMPTION = 17;
    public static final int SIMULATED_EXECUTION_TIME__ECU = 18;
    public static final int SIMULATED_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int SIMULATED_EXECUTION_TIME__EXTERNAL_LIBRARIES = 20;
    public static final int SIMULATED_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int SIMULATED_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 22;
    public static final int SIMULATED_EXECUTION_TIME__RUNNABLE = 23;
    public static final int SIMULATED_EXECUTION_TIME__SOFTWARE_CONTEXT = 24;
    public static final int SIMULATED_EXECUTION_TIME__AVERAGE_EXECUTION_TIME = 25;
    public static final int SIMULATED_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = 26;
    public static final int SIMULATED_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = 27;
    public static final int SIMULATED_EXECUTION_TIME_FEATURE_COUNT = 28;
    public static final int WORST_CASE_EXECUTION_TIME = 6;
    public static final int WORST_CASE_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int WORST_CASE_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int WORST_CASE_EXECUTION_TIME__CHECKSUM = 2;
    public static final int WORST_CASE_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int WORST_CASE_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int WORST_CASE_EXECUTION_TIME__GUUID = 5;
    public static final int WORST_CASE_EXECUTION_TIME__GCATEGORY = 6;
    public static final int WORST_CASE_EXECUTION_TIME__GDESC = 7;
    public static final int WORST_CASE_EXECUTION_TIME__SHORT_NAME = 8;
    public static final int WORST_CASE_EXECUTION_TIME__LONG_NAME = 9;
    public static final int WORST_CASE_EXECUTION_TIME__DESC = 10;
    public static final int WORST_CASE_EXECUTION_TIME__CATEGORY = 11;
    public static final int WORST_CASE_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int WORST_CASE_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int WORST_CASE_EXECUTION_TIME__UUID = 14;
    public static final int WORST_CASE_EXECUTION_TIME__ALL_EXTENSIONS = 15;
    public static final int WORST_CASE_EXECUTION_TIME__CONTAINED_EXTENSIONS = 16;
    public static final int WORST_CASE_EXECUTION_TIME__RESOURCE_CONSUMPTION = 17;
    public static final int WORST_CASE_EXECUTION_TIME__ECU = 18;
    public static final int WORST_CASE_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int WORST_CASE_EXECUTION_TIME__EXTERNAL_LIBRARIES = 20;
    public static final int WORST_CASE_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int WORST_CASE_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 22;
    public static final int WORST_CASE_EXECUTION_TIME__RUNNABLE = 23;
    public static final int WORST_CASE_EXECUTION_TIME__SOFTWARE_CONTEXT = 24;
    public static final int WORST_CASE_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = 25;
    public static final int WORST_CASE_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = 26;
    public static final int WORST_CASE_EXECUTION_TIME_FEATURE_COUNT = 27;

    public EClass getECUPrototype();

    public EReference getECUPrototype_ExecutionTime();

    public EReference getECUPrototype_ECU();

    public EClass getExecutionTime();

    public EReference getExecutionTime_ResourceConsumption();

    public EReference getExecutionTime_Ecu();

    public EReference getExecutionTime_ExclusiveArea();

    public EReference getExecutionTime_ExternalLibraries();

    public EReference getExecutionTime_HardwareConfiguration();

    public EReference getExecutionTime_MemorySectionLocations();

    public EReference getExecutionTime_Runnable();

    public EReference getExecutionTime_SoftwareContext();

    public EClass getMemorySectionLocation();

    public EReference getMemorySectionLocation_ExecutionTime();

    public EReference getMemorySectionLocation_ProvidedMemory();

    public EReference getMemorySectionLocation_SoftwareMemorySection();

    public EClass getMeasuredExecutionTime();

    public EAttribute getMeasuredExecutionTime_AverageExecutionTime();

    public EAttribute getMeasuredExecutionTime_MaximalExecutionTime();

    public EAttribute getMeasuredExecutionTime_MinimalExecutionTime();

    public EClass getRoughEstimateOfExecutionTime();

    public EAttribute getRoughEstimateOfExecutionTime_Description();

    public EClass getSimulatedExecutionTime();

    public EAttribute getSimulatedExecutionTime_AverageExecutionTime();

    public EAttribute getSimulatedExecutionTime_MaximalExecutionTime();

    public EAttribute getSimulatedExecutionTime_MinimalExecutionTime();

    public EClass getWorstCaseExecutionTime();

    public EAttribute getWorstCaseExecutionTime_MaximalExecutionTime();

    public EAttribute getWorstCaseExecutionTime_MinimalExecutionTime();

    public ExecutiontimeFactory getExecutiontimeFactory();

    public static interface Literals {
        public static final EClass ECU_PROTOTYPE = eINSTANCE.getECUPrototype();
        public static final EReference ECU_PROTOTYPE__EXECUTION_TIME = eINSTANCE.getECUPrototype_ExecutionTime();
        public static final EReference ECU_PROTOTYPE__ECU = eINSTANCE.getECUPrototype_ECU();
        public static final EClass EXECUTION_TIME = eINSTANCE.getExecutionTime();
        public static final EReference EXECUTION_TIME__RESOURCE_CONSUMPTION = eINSTANCE.getExecutionTime_ResourceConsumption();
        public static final EReference EXECUTION_TIME__ECU = eINSTANCE.getExecutionTime_Ecu();
        public static final EReference EXECUTION_TIME__EXCLUSIVE_AREA = eINSTANCE.getExecutionTime_ExclusiveArea();
        public static final EReference EXECUTION_TIME__EXTERNAL_LIBRARIES = eINSTANCE.getExecutionTime_ExternalLibraries();
        public static final EReference EXECUTION_TIME__HARDWARE_CONFIGURATION = eINSTANCE.getExecutionTime_HardwareConfiguration();
        public static final EReference EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = eINSTANCE.getExecutionTime_MemorySectionLocations();
        public static final EReference EXECUTION_TIME__RUNNABLE = eINSTANCE.getExecutionTime_Runnable();
        public static final EReference EXECUTION_TIME__SOFTWARE_CONTEXT = eINSTANCE.getExecutionTime_SoftwareContext();
        public static final EClass MEMORY_SECTION_LOCATION = eINSTANCE.getMemorySectionLocation();
        public static final EReference MEMORY_SECTION_LOCATION__EXECUTION_TIME = eINSTANCE.getMemorySectionLocation_ExecutionTime();
        public static final EReference MEMORY_SECTION_LOCATION__PROVIDED_MEMORY = eINSTANCE.getMemorySectionLocation_ProvidedMemory();
        public static final EReference MEMORY_SECTION_LOCATION__SOFTWARE_MEMORY_SECTION = eINSTANCE.getMemorySectionLocation_SoftwareMemorySection();
        public static final EClass MEASURED_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime();
        public static final EAttribute MEASURED_EXECUTION_TIME__AVERAGE_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_AverageExecutionTime();
        public static final EAttribute MEASURED_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_MaximalExecutionTime();
        public static final EAttribute MEASURED_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_MinimalExecutionTime();
        public static final EClass ROUGH_ESTIMATE_OF_EXECUTION_TIME = eINSTANCE.getRoughEstimateOfExecutionTime();
        public static final EAttribute ROUGH_ESTIMATE_OF_EXECUTION_TIME__DESCRIPTION = eINSTANCE.getRoughEstimateOfExecutionTime_Description();
        public static final EClass SIMULATED_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime();
        public static final EAttribute SIMULATED_EXECUTION_TIME__AVERAGE_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_AverageExecutionTime();
        public static final EAttribute SIMULATED_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_MaximalExecutionTime();
        public static final EAttribute SIMULATED_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_MinimalExecutionTime();
        public static final EClass WORST_CASE_EXECUTION_TIME = eINSTANCE.getWorstCaseExecutionTime();
        public static final EAttribute WORST_CASE_EXECUTION_TIME__MAXIMAL_EXECUTION_TIME = eINSTANCE.getWorstCaseExecutionTime_MaximalExecutionTime();
        public static final EAttribute WORST_CASE_EXECUTION_TIME__MINIMAL_EXECUTION_TIME = eINSTANCE.getWorstCaseExecutionTime_MinimalExecutionTime();
    }
}

