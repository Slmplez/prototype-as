/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.resources.heapusage;

import autosar21.swcomponent.resources.heapusage.HeapusageFactory;
import autosar21.swcomponent.resources.heapusage.impl.HeapusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface HeapusagePackage
extends EPackage {
    public static final String eNAME = "heapusage";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/r/hu";
    public static final String eNS_PREFIX = "";
    public static final HeapusagePackage eINSTANCE = HeapusagePackageImpl.init();
    public static final int HEAP_USAGE = 3;
    public static final int HEAP_USAGE__GCHECKSUM = 0;
    public static final int HEAP_USAGE__GTIMESTAMP = 1;
    public static final int HEAP_USAGE__CHECKSUM = 2;
    public static final int HEAP_USAGE__TIMESTAMP = 3;
    public static final int HEAP_USAGE__ECU = 4;
    public static final int HEAP_USAGE__HARDWARE_CONFIGURATION = 5;
    public static final int HEAP_USAGE__SOFTWARE_CONTEXT = 6;
    public static final int HEAP_USAGE_FEATURE_COUNT = 7;
    public static final int MEASURED_HEAP_USAGE = 0;
    public static final int MEASURED_HEAP_USAGE__GCHECKSUM = 0;
    public static final int MEASURED_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int MEASURED_HEAP_USAGE__CHECKSUM = 2;
    public static final int MEASURED_HEAP_USAGE__TIMESTAMP = 3;
    public static final int MEASURED_HEAP_USAGE__ECU = 4;
    public static final int MEASURED_HEAP_USAGE__HARDWARE_CONFIGURATION = 5;
    public static final int MEASURED_HEAP_USAGE__SOFTWARE_CONTEXT = 6;
    public static final int MEASURED_HEAP_USAGE__AVERAGE_MEMORY_CONSUMPTION = 7;
    public static final int MEASURED_HEAP_USAGE__MAXIMUM_MEMORY_CONSUMPTION = 8;
    public static final int MEASURED_HEAP_USAGE__MINIMUM_MEMORY_CONSUMPTION = 9;
    public static final int MEASURED_HEAP_USAGE__TEST_PATTERN = 10;
    public static final int MEASURED_HEAP_USAGE_FEATURE_COUNT = 11;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE = 1;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__ECU = 4;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__HARDWARE_CONFIGURATION = 5;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__SOFTWARE_CONTEXT = 6;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE__MEMORY_CONSUMPTION = 7;
    public static final int ROUGH_ESTIMATE_HEAP_USAGE_FEATURE_COUNT = 8;
    public static final int WORST_CASE_HEAP_USAGE = 2;
    public static final int WORST_CASE_HEAP_USAGE__GCHECKSUM = 0;
    public static final int WORST_CASE_HEAP_USAGE__GTIMESTAMP = 1;
    public static final int WORST_CASE_HEAP_USAGE__CHECKSUM = 2;
    public static final int WORST_CASE_HEAP_USAGE__TIMESTAMP = 3;
    public static final int WORST_CASE_HEAP_USAGE__ECU = 4;
    public static final int WORST_CASE_HEAP_USAGE__HARDWARE_CONFIGURATION = 5;
    public static final int WORST_CASE_HEAP_USAGE__SOFTWARE_CONTEXT = 6;
    public static final int WORST_CASE_HEAP_USAGE__MEMORY_CONSUMPTION = 7;
    public static final int WORST_CASE_HEAP_USAGE_FEATURE_COUNT = 8;

    public EClass getMeasuredHeapUsage();

    public EAttribute getMeasuredHeapUsage_AverageMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_MaximumMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_MinimumMemoryConsumption();

    public EAttribute getMeasuredHeapUsage_TestPattern();

    public EClass getRoughEstimateHeapUsage();

    public EAttribute getRoughEstimateHeapUsage_MemoryConsumption();

    public EClass getWorstCaseHeapUsage();

    public EAttribute getWorstCaseHeapUsage_MemoryConsumption();

    public EClass getHeapUsage();

    public EReference getHeapUsage_Ecu();

    public EReference getHeapUsage_HardwareConfiguration();

    public EReference getHeapUsage_SoftwareContext();

    public HeapusageFactory getHeapusageFactory();

    public static interface Literals {
        public static final EClass MEASURED_HEAP_USAGE = eINSTANCE.getMeasuredHeapUsage();
        public static final EAttribute MEASURED_HEAP_USAGE__AVERAGE_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_AverageMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__MAXIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_MaximumMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__MINIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredHeapUsage_MinimumMemoryConsumption();
        public static final EAttribute MEASURED_HEAP_USAGE__TEST_PATTERN = eINSTANCE.getMeasuredHeapUsage_TestPattern();
        public static final EClass ROUGH_ESTIMATE_HEAP_USAGE = eINSTANCE.getRoughEstimateHeapUsage();
        public static final EAttribute ROUGH_ESTIMATE_HEAP_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getRoughEstimateHeapUsage_MemoryConsumption();
        public static final EClass WORST_CASE_HEAP_USAGE = eINSTANCE.getWorstCaseHeapUsage();
        public static final EAttribute WORST_CASE_HEAP_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getWorstCaseHeapUsage_MemoryConsumption();
        public static final EClass HEAP_USAGE = eINSTANCE.getHeapUsage();
        public static final EReference HEAP_USAGE__ECU = eINSTANCE.getHeapUsage_Ecu();
        public static final EReference HEAP_USAGE__HARDWARE_CONFIGURATION = eINSTANCE.getHeapUsage_HardwareConfiguration();
        public static final EReference HEAP_USAGE__SOFTWARE_CONTEXT = eINSTANCE.getHeapUsage_SoftwareContext();
    }
}

