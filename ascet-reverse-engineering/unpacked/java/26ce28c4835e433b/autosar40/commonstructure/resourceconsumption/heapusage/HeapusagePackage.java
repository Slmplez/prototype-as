/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.resourceconsumption.heapusage;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapusageFactory;
import autosar40.commonstructure.resourceconsumption.heapusage.impl.HeapusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface HeapusagePackage
extends EPackage {
    public static final String eNAME = "heapusage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/rc/hu";
    public static final String eNS_PREFIX = "";
    public static final HeapusagePackage eINSTANCE = HeapusagePackageImpl.init();
    public static final int HEAP_USAGE = 0;
    public static final int HEAP_USAGE__GCHECKSUM = 0;
    public static final int HEAP_USAGE__GTIMESTAMP = 1;
    public static final int HEAP_USAGE__CHECKSUM = 2;
    public static final int HEAP_USAGE__TIMESTAMP = 3;
    public static final int HEAP_USAGE__GSHORT_NAME = 4;
    public static final int HEAP_USAGE__SHORT_NAME = 5;
    public static final int HEAP_USAGE__LONG_NAME = 6;
    public static final int HEAP_USAGE__GUUID = 7;
    public static final int HEAP_USAGE__GCATEGORY = 8;
    public static final int HEAP_USAGE__GDESC = 9;
    public static final int HEAP_USAGE__DESC = 10;
    public static final int HEAP_USAGE__CATEGORY = 11;
    public static final int HEAP_USAGE__ADMIN_DATA = 12;
    public static final int HEAP_USAGE__INTRODUCTION = 13;
    public static final int HEAP_USAGE__ANNOTATIONS = 14;
    public static final int HEAP_USAGE__UUID = 15;
    public static final int HEAP_USAGE__ALL_EXTENSIONS = 16;
    public static final int HEAP_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int HEAP_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int HEAP_USAGE__HARDWARE_CONFIGURATION = 19;
    public static final int HEAP_USAGE__HW_ELEMENT = 20;
    public static final int HEAP_USAGE__SOFTWARE_CONTEXT = 21;
    public static final int HEAP_USAGE__VARIATION_POINT = 22;
    public static final int HEAP_USAGE_FEATURE_COUNT = 23;
    public static final int MEASURED_HEAP_USAGE = 1;
    public static final int MEASURED_HEAP_USAGE__GCHECKSUM = 0;
    public static final int MEASURED_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int MEASURED_HEAP_USAGE__CHECKSUM = 2;
    public static final int MEASURED_HEAP_USAGE__TIMESTAMP = 3;
    public static final int MEASURED_HEAP_USAGE__GSHORT_NAME = 4;
    public static final int MEASURED_HEAP_USAGE__SHORT_NAME = 5;
    public static final int MEASURED_HEAP_USAGE__LONG_NAME = 6;
    public static final int MEASURED_HEAP_USAGE__GUUID = 7;
    public static final int MEASURED_HEAP_USAGE__GCATEGORY = 8;
    public static final int MEASURED_HEAP_USAGE__GDESC = 9;
    public static final int MEASURED_HEAP_USAGE__DESC = 10;
    public static final int MEASURED_HEAP_USAGE__CATEGORY = 11;
    public static final int MEASURED_HEAP_USAGE__ADMIN_DATA = 12;
    public static final int MEASURED_HEAP_USAGE__INTRODUCTION = 13;
    public static final int MEASURED_HEAP_USAGE__ANNOTATIONS = 14;
    public static final int MEASURED_HEAP_USAGE__UUID = 15;
    public static final int MEASURED_HEAP_USAGE__ALL_EXTENSIONS = 16;
    public static final int MEASURED_HEAP_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int MEASURED_HEAP_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int MEASURED_HEAP_USAGE__HARDWARE_CONFIGURATION = 19;
    public static final int MEASURED_HEAP_USAGE__HW_ELEMENT = 20;
    public static final int MEASURED_HEAP_USAGE__SOFTWARE_CONTEXT = 21;
    public static final int MEASURED_HEAP_USAGE__VARIATION_POINT = 22;
    public static final int MEASURED_HEAP_USAGE__AVERAGE_MEMORY_CONSUMPTION = 23;
    public static final int MEASURED_HEAP_USAGE__MAXIMUM_MEMORY_CONSUMPTION = 24;
    public static final int MEASURED_HEAP_USAGE__MINIMUM_MEMORY_CONSUMPTION = 25;
    public static final int MEASURED_HEAP_USAGE__TEST_PATTERN = 26;
    public static final int MEASURED_HEAP_USAGE_FEATURE_COUNT = 27;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE = 2;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GSHORT_NAME = 4;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__SHORT_NAME = 5;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__LONG_NAME = 6;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GUUID = 7;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GCATEGORY = 8;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GDESC = 9;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__DESC = 10;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__CATEGORY = 11;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__ADMIN_DATA = 12;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__INTRODUCTION = 13;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__ANNOTATIONS = 14;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__UUID = 15;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__ALL_EXTENSIONS = 16;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__HARDWARE_CONFIGURATION = 19;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__HW_ELEMENT = 20;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__SOFTWARE_CONTEXT = 21;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__VARIATION_POINT = 22;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__MEMORY_CONSUMPTION = 23;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE_FEATURE_COUNT = 24;
    public static final int WORST_CASE_HEAP_USAGE = 3;
    public static final int WORST_CASE_HEAP_USAGE__GCHECKSUM = 0;
    public static final int WORST_CASE_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int WORST_CASE_HEAP_USAGE__CHECKSUM = 2;
    public static final int WORST_CASE_HEAP_USAGE__TIMESTAMP = 3;
    public static final int WORST_CASE_HEAP_USAGE__GSHORT_NAME = 4;
    public static final int WORST_CASE_HEAP_USAGE__SHORT_NAME = 5;
    public static final int WORST_CASE_HEAP_USAGE__LONG_NAME = 6;
    public static final int WORST_CASE_HEAP_USAGE__GUUID = 7;
    public static final int WORST_CASE_HEAP_USAGE__GCATEGORY = 8;
    public static final int WORST_CASE_HEAP_USAGE__GDESC = 9;
    public static final int WORST_CASE_HEAP_USAGE__DESC = 10;
    public static final int WORST_CASE_HEAP_USAGE__CATEGORY = 11;
    public static final int WORST_CASE_HEAP_USAGE__ADMIN_DATA = 12;
    public static final int WORST_CASE_HEAP_USAGE__INTRODUCTION = 13;
    public static final int WORST_CASE_HEAP_USAGE__ANNOTATIONS = 14;
    public static final int WORST_CASE_HEAP_USAGE__UUID = 15;
    public static final int WORST_CASE_HEAP_USAGE__ALL_EXTENSIONS = 16;
    public static final int WORST_CASE_HEAP_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int WORST_CASE_HEAP_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int WORST_CASE_HEAP_USAGE__HARDWARE_CONFIGURATION = 19;
    public static final int WORST_CASE_HEAP_USAGE__HW_ELEMENT = 20;
    public static final int WORST_CASE_HEAP_USAGE__SOFTWARE_CONTEXT = 21;
    public static final int WORST_CASE_HEAP_USAGE__VARIATION_POINT = 22;
    public static final int WORST_CASE_HEAP_USAGE__MEMORY_CONSUMPTION = 23;
    public static final int WORST_CASE_HEAP_USAGE_FEATURE_COUNT = 24;

    public EClass getHeapUsage();

    public EReference getHeapUsage_ResourceConsumption();

    public EReference getHeapUsage_HardwareConfiguration();

    public EReference getHeapUsage_HwElement();

    public EReference getHeapUsage_SoftwareContext();

    public EReference getHeapUsage_VariationPoint();

    public EClass getMeasuredHeapUsage();

    public EAttribute getMeasuredHeapUsage_AverageMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_MaximumMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_MinimumMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_TestPattern();

    public EClass getRoughEstimateHeapUsage();

    public EAttribute getRoughEstimateHeapUsage_MemoryConsumption();

    public EClass getWorstCaseHeapUsage();

    public EAttribute getWorstCaseHeapUsage_MemoryConsumption();

    public HeapusageFactory getHeapusageFactory();

    public static interface Literals {
        public static final EClass HEAP_USAGE = eINSTANCE.getHeapUsage();
        public static final EReference HEAP_USAGE__RESOURCE_CONSUMPTION = eINSTANCE.getHeapUsage_ResourceConsumption();
        public static final EReference HEAP_USAGE__HARDWARE_CONFIGURATION = eINSTANCE.getHeapUsage_HardwareConfiguration();
        public static final EReference HEAP_USAGE__HW_ELEMENT = eINSTANCE.getHeapUsage_HwElement();
        public static final EReference HEAP_USAGE__SOFTWARE_CONTEXT = eINSTANCE.getHeapUsage_SoftwareContext();
        public static final EReference HEAP_USAGE__VARIATION_POINT = eINSTANCE.getHeapUsage_VariationPoint();
        public static final EClass MEASURED_HEAP_USAGE = eINSTANCE.getMeasuredHeapUsage();
        public static final EAttribute MEASURED_HEAP_USAGE__AVERAGE_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_AverageMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__MAXIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_MaximumMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__MINIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_MinimumMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__TEST_PATTERN = eINSTANCE.getMeasuredHeapUsage_TestPattern();
        public static final EClass ROUGH_ESTIMATE_HEAP_USAGE = eINSTANCE.getRoughEstimateHeapUsage();
        public static final EAttribute ROUGH_ESTIMATE_HEAP_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getRoughEstimateHeapUsage_MemoryConsumption();
        public static final EClass WORST_CASE_HEAP_USAGE = eINSTANCE.getWorstCaseHeapUsage();
        public static final EAttribute WORST_CASE_HEAP_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getWorstCaseHeapUsage_MemoryConsumption();
    }
}

