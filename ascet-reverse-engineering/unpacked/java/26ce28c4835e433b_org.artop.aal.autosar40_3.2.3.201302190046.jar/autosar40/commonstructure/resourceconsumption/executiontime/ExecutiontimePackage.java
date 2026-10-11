/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimeFactory;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ExecutiontimePackage
extends EPackage {
    public static final String eNAME = "executiontime";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/rc/et";
    public static final String eNS_PREFIX = "";
    public static final ExecutiontimePackage eINSTANCE = ExecutiontimePackageImpl.init();
    public static final int EXECUTION_TIME = 1;
    public static final int EXECUTION_TIME__GCHECKSUM = 0;
    public static final int EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int EXECUTION_TIME__CHECKSUM = 2;
    public static final int EXECUTION_TIME__TIMESTAMP = 3;
    public static final int EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int EXECUTION_TIME__SHORT_NAME = 5;
    public static final int EXECUTION_TIME__LONG_NAME = 6;
    public static final int EXECUTION_TIME__GUUID = 7;
    public static final int EXECUTION_TIME__GCATEGORY = 8;
    public static final int EXECUTION_TIME__GDESC = 9;
    public static final int EXECUTION_TIME__DESC = 10;
    public static final int EXECUTION_TIME__CATEGORY = 11;
    public static final int EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int EXECUTION_TIME__INTRODUCTION = 13;
    public static final int EXECUTION_TIME__ANNOTATIONS = 14;
    public static final int EXECUTION_TIME__UUID = 15;
    public static final int EXECUTION_TIME__ALL_EXTENSIONS = 16;
    public static final int EXECUTION_TIME__CONTAINED_EXTENSIONS = 17;
    public static final int EXECUTION_TIME__RESOURCE_CONSUMPTION = 18;
    public static final int EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int EXECUTION_TIME__EXECUTABLE_ENTITY = 20;
    public static final int EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int EXECUTION_TIME__HW_ELEMENT = 22;
    public static final int EXECUTION_TIME__INCLUDED_LIBRARIES = 23;
    public static final int EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 24;
    public static final int EXECUTION_TIME__SOFTWARE_CONTEXT = 25;
    public static final int EXECUTION_TIME__VARIATION_POINT = 26;
    public static final int EXECUTION_TIME_FEATURE_COUNT = 27;
    public static final int ANALYZED_EXECUTION_TIME = 0;
    public static final int ANALYZED_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int ANALYZED_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int ANALYZED_EXECUTION_TIME__CHECKSUM = 2;
    public static final int ANALYZED_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int ANALYZED_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int ANALYZED_EXECUTION_TIME__SHORT_NAME = 5;
    public static final int ANALYZED_EXECUTION_TIME__LONG_NAME = 6;
    public static final int ANALYZED_EXECUTION_TIME__GUUID = 7;
    public static final int ANALYZED_EXECUTION_TIME__GCATEGORY = 8;
    public static final int ANALYZED_EXECUTION_TIME__GDESC = 9;
    public static final int ANALYZED_EXECUTION_TIME__DESC = 10;
    public static final int ANALYZED_EXECUTION_TIME__CATEGORY = 11;
    public static final int ANALYZED_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int ANALYZED_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int ANALYZED_EXECUTION_TIME__ANNOTATIONS = 14;
    public static final int ANALYZED_EXECUTION_TIME__UUID = 15;
    public static final int ANALYZED_EXECUTION_TIME__ALL_EXTENSIONS = 16;
    public static final int ANALYZED_EXECUTION_TIME__CONTAINED_EXTENSIONS = 17;
    public static final int ANALYZED_EXECUTION_TIME__RESOURCE_CONSUMPTION = 18;
    public static final int ANALYZED_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int ANALYZED_EXECUTION_TIME__EXECUTABLE_ENTITY = 20;
    public static final int ANALYZED_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int ANALYZED_EXECUTION_TIME__HW_ELEMENT = 22;
    public static final int ANALYZED_EXECUTION_TIME__INCLUDED_LIBRARIES = 23;
    public static final int ANALYZED_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 24;
    public static final int ANALYZED_EXECUTION_TIME__SOFTWARE_CONTEXT = 25;
    public static final int ANALYZED_EXECUTION_TIME__VARIATION_POINT = 26;
    public static final int ANALYZED_EXECUTION_TIME__BEST_CASE_EXECUTION_TIME = 27;
    public static final int ANALYZED_EXECUTION_TIME__WORST_CASE_EXECUTION_TIME = 28;
    public static final int ANALYZED_EXECUTION_TIME_FEATURE_COUNT = 29;
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
    public static final int MEASURED_EXECUTION_TIME__SHORT_NAME = 5;
    public static final int MEASURED_EXECUTION_TIME__LONG_NAME = 6;
    public static final int MEASURED_EXECUTION_TIME__GUUID = 7;
    public static final int MEASURED_EXECUTION_TIME__GCATEGORY = 8;
    public static final int MEASURED_EXECUTION_TIME__GDESC = 9;
    public static final int MEASURED_EXECUTION_TIME__DESC = 10;
    public static final int MEASURED_EXECUTION_TIME__CATEGORY = 11;
    public static final int MEASURED_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int MEASURED_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int MEASURED_EXECUTION_TIME__ANNOTATIONS = 14;
    public static final int MEASURED_EXECUTION_TIME__UUID = 15;
    public static final int MEASURED_EXECUTION_TIME__ALL_EXTENSIONS = 16;
    public static final int MEASURED_EXECUTION_TIME__CONTAINED_EXTENSIONS = 17;
    public static final int MEASURED_EXECUTION_TIME__RESOURCE_CONSUMPTION = 18;
    public static final int MEASURED_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int MEASURED_EXECUTION_TIME__EXECUTABLE_ENTITY = 20;
    public static final int MEASURED_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int MEASURED_EXECUTION_TIME__HW_ELEMENT = 22;
    public static final int MEASURED_EXECUTION_TIME__INCLUDED_LIBRARIES = 23;
    public static final int MEASURED_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 24;
    public static final int MEASURED_EXECUTION_TIME__SOFTWARE_CONTEXT = 25;
    public static final int MEASURED_EXECUTION_TIME__VARIATION_POINT = 26;
    public static final int MEASURED_EXECUTION_TIME__MAXIMUM_EXECUTION_TIME = 27;
    public static final int MEASURED_EXECUTION_TIME__MINIMUM_EXECUTION_TIME = 28;
    public static final int MEASURED_EXECUTION_TIME__NOMINAL_EXECUTION_TIME = 29;
    public static final int MEASURED_EXECUTION_TIME_FEATURE_COUNT = 30;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME = 4;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__SHORT_NAME = 5;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__LONG_NAME = 6;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GUUID = 7;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GCATEGORY = 8;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__GDESC = 9;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__DESC = 10;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CATEGORY = 11;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ANNOTATIONS = 14;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__UUID = 15;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ALL_EXTENSIONS = 16;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__CONTAINED_EXTENSIONS = 17;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__RESOURCE_CONSUMPTION = 18;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__EXECUTABLE_ENTITY = 20;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__HW_ELEMENT = 22;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__INCLUDED_LIBRARIES = 23;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 24;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__SOFTWARE_CONTEXT = 25;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__VARIATION_POINT = 26;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ADDITIONAL_INFORMATION = 27;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME__ESTIMATED_EXECUTION_TIME = 28;
    public static final int ROUGH_ESTIMATE_OF_EXECUTION_TIME_FEATURE_COUNT = 29;
    public static final int SIMULATED_EXECUTION_TIME = 5;
    public static final int SIMULATED_EXECUTION_TIME__GCHECKSUM = 0;
    public static final int SIMULATED_EXECUTION_TIME__GTIMESTAMP = 1;
    public static final int SIMULATED_EXECUTION_TIME__CHECKSUM = 2;
    public static final int SIMULATED_EXECUTION_TIME__TIMESTAMP = 3;
    public static final int SIMULATED_EXECUTION_TIME__GSHORT_NAME = 4;
    public static final int SIMULATED_EXECUTION_TIME__SHORT_NAME = 5;
    public static final int SIMULATED_EXECUTION_TIME__LONG_NAME = 6;
    public static final int SIMULATED_EXECUTION_TIME__GUUID = 7;
    public static final int SIMULATED_EXECUTION_TIME__GCATEGORY = 8;
    public static final int SIMULATED_EXECUTION_TIME__GDESC = 9;
    public static final int SIMULATED_EXECUTION_TIME__DESC = 10;
    public static final int SIMULATED_EXECUTION_TIME__CATEGORY = 11;
    public static final int SIMULATED_EXECUTION_TIME__ADMIN_DATA = 12;
    public static final int SIMULATED_EXECUTION_TIME__INTRODUCTION = 13;
    public static final int SIMULATED_EXECUTION_TIME__ANNOTATIONS = 14;
    public static final int SIMULATED_EXECUTION_TIME__UUID = 15;
    public static final int SIMULATED_EXECUTION_TIME__ALL_EXTENSIONS = 16;
    public static final int SIMULATED_EXECUTION_TIME__CONTAINED_EXTENSIONS = 17;
    public static final int SIMULATED_EXECUTION_TIME__RESOURCE_CONSUMPTION = 18;
    public static final int SIMULATED_EXECUTION_TIME__EXCLUSIVE_AREA = 19;
    public static final int SIMULATED_EXECUTION_TIME__EXECUTABLE_ENTITY = 20;
    public static final int SIMULATED_EXECUTION_TIME__HARDWARE_CONFIGURATION = 21;
    public static final int SIMULATED_EXECUTION_TIME__HW_ELEMENT = 22;
    public static final int SIMULATED_EXECUTION_TIME__INCLUDED_LIBRARIES = 23;
    public static final int SIMULATED_EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = 24;
    public static final int SIMULATED_EXECUTION_TIME__SOFTWARE_CONTEXT = 25;
    public static final int SIMULATED_EXECUTION_TIME__VARIATION_POINT = 26;
    public static final int SIMULATED_EXECUTION_TIME__MAXIMUM_EXECUTION_TIME = 27;
    public static final int SIMULATED_EXECUTION_TIME__MINIMUM_EXECUTION_TIME = 28;
    public static final int SIMULATED_EXECUTION_TIME__NOMINAL_EXECUTION_TIME = 29;
    public static final int SIMULATED_EXECUTION_TIME_FEATURE_COUNT = 30;

    public EClass getAnalyzedExecutionTime();

    public EReference getAnalyzedExecutionTime_BestCaseExecutionTime();

    public EReference getAnalyzedExecutionTime_WorstCaseExecutionTime();

    public EClass getExecutionTime();

    public EReference getExecutionTime_ResourceConsumption();

    public EReference getExecutionTime_ExclusiveArea();

    public EReference getExecutionTime_ExecutableEntity();

    public EReference getExecutionTime_HardwareConfiguration();

    public EReference getExecutionTime_HwElement();

    public EReference getExecutionTime_IncludedLibraries();

    public EReference getExecutionTime_MemorySectionLocations();

    public EReference getExecutionTime_SoftwareContext();

    public EReference getExecutionTime_VariationPoint();

    public EClass getMemorySectionLocation();

    public EReference getMemorySectionLocation_ExecutionTime();

    public EReference getMemorySectionLocation_ProvidedMemory();

    public EReference getMemorySectionLocation_SoftwareMemorySection();

    public EClass getMeasuredExecutionTime();

    public EReference getMeasuredExecutionTime_MaximumExecutionTime();

    public EReference getMeasuredExecutionTime_MinimumExecutionTime();

    public EReference getMeasuredExecutionTime_NominalExecutionTime();

    public EClass getRoughEstimateOfExecutionTime();

    public EAttribute getRoughEstimateOfExecutionTime_AdditionalInformation();

    public EReference getRoughEstimateOfExecutionTime_EstimatedExecutionTime();

    public EClass getSimulatedExecutionTime();

    public EReference getSimulatedExecutionTime_MaximumExecutionTime();

    public EReference getSimulatedExecutionTime_MinimumExecutionTime();

    public EReference getSimulatedExecutionTime_NominalExecutionTime();

    public ExecutiontimeFactory getExecutiontimeFactory();

    public static interface Literals {
        public static final EClass ANALYZED_EXECUTION_TIME = eINSTANCE.getAnalyzedExecutionTime();
        public static final EReference ANALYZED_EXECUTION_TIME__BEST_CASE_EXECUTION_TIME = eINSTANCE.getAnalyzedExecutionTime_BestCaseExecutionTime();
        public static final EReference ANALYZED_EXECUTION_TIME__WORST_CASE_EXECUTION_TIME = eINSTANCE.getAnalyzedExecutionTime_WorstCaseExecutionTime();
        public static final EClass EXECUTION_TIME = eINSTANCE.getExecutionTime();
        public static final EReference EXECUTION_TIME__RESOURCE_CONSUMPTION = eINSTANCE.getExecutionTime_ResourceConsumption();
        public static final EReference EXECUTION_TIME__EXCLUSIVE_AREA = eINSTANCE.getExecutionTime_ExclusiveArea();
        public static final EReference EXECUTION_TIME__EXECUTABLE_ENTITY = eINSTANCE.getExecutionTime_ExecutableEntity();
        public static final EReference EXECUTION_TIME__HARDWARE_CONFIGURATION = eINSTANCE.getExecutionTime_HardwareConfiguration();
        public static final EReference EXECUTION_TIME__HW_ELEMENT = eINSTANCE.getExecutionTime_HwElement();
        public static final EReference EXECUTION_TIME__INCLUDED_LIBRARIES = eINSTANCE.getExecutionTime_IncludedLibraries();
        public static final EReference EXECUTION_TIME__MEMORY_SECTION_LOCATIONS = eINSTANCE.getExecutionTime_MemorySectionLocations();
        public static final EReference EXECUTION_TIME__SOFTWARE_CONTEXT = eINSTANCE.getExecutionTime_SoftwareContext();
        public static final EReference EXECUTION_TIME__VARIATION_POINT = eINSTANCE.getExecutionTime_VariationPoint();
        public static final EClass MEMORY_SECTION_LOCATION = eINSTANCE.getMemorySectionLocation();
        public static final EReference MEMORY_SECTION_LOCATION__EXECUTION_TIME = eINSTANCE.getMemorySectionLocation_ExecutionTime();
        public static final EReference MEMORY_SECTION_LOCATION__PROVIDED_MEMORY = eINSTANCE.getMemorySectionLocation_ProvidedMemory();
        public static final EReference MEMORY_SECTION_LOCATION__SOFTWARE_MEMORY_SECTION = eINSTANCE.getMemorySectionLocation_SoftwareMemorySection();
        public static final EClass MEASURED_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime();
        public static final EReference MEASURED_EXECUTION_TIME__MAXIMUM_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_MaximumExecutionTime();
        public static final EReference MEASURED_EXECUTION_TIME__MINIMUM_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_MinimumExecutionTime();
        public static final EReference MEASURED_EXECUTION_TIME__NOMINAL_EXECUTION_TIME = eINSTANCE.getMeasuredExecutionTime_NominalExecutionTime();
        public static final EClass ROUGH_ESTIMATE_OF_EXECUTION_TIME = eINSTANCE.getRoughEstimateOfExecutionTime();
        public static final EAttribute ROUGH_ESTIMATE_OF_EXECUTION_TIME__ADDITIONAL_INFORMATION = eINSTANCE.getRoughEstimateOfExecutionTime_AdditionalInformation();
        public static final EReference ROUGH_ESTIMATE_OF_EXECUTION_TIME__ESTIMATED_EXECUTION_TIME = eINSTANCE.getRoughEstimateOfExecutionTime_EstimatedExecutionTime();
        public static final EClass SIMULATED_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime();
        public static final EReference SIMULATED_EXECUTION_TIME__MAXIMUM_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_MaximumExecutionTime();
        public static final EReference SIMULATED_EXECUTION_TIME__MINIMUM_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_MinimumExecutionTime();
        public static final EReference SIMULATED_EXECUTION_TIME__NOMINAL_EXECUTION_TIME = eINSTANCE.getSimulatedExecutionTime_NominalExecutionTime();
    }
}

