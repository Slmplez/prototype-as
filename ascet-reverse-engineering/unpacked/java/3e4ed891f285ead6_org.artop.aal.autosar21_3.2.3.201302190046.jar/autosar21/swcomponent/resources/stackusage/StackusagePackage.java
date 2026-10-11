/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.resources.stackusage;

import autosar21.swcomponent.resources.stackusage.StackusageFactory;
import autosar21.swcomponent.resources.stackusage.impl.StackusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface StackusagePackage
extends EPackage {
    public static final String eNAME = "stackusage";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/r/su";
    public static final String eNS_PREFIX = "";
    public static final StackusagePackage eINSTANCE = StackusagePackageImpl.init();
    public static final int MEASURED_STACK_USAGE = 0;
    public static final int MEASURED_STACK_USAGE__GCHECKSUM = 0;
    public static final int MEASURED_STACK_USAGE__GTIMESTAMP = 1;
    public static final int MEASURED_STACK_USAGE__CHECKSUM = 2;
    public static final int MEASURED_STACK_USAGE__TIMESTAMP = 3;
    public static final int MEASURED_STACK_USAGE__RESOURCE_ESTIMATION_DETAILS = 4;
    public static final int MEASURED_STACK_USAGE__RESOURCE_CONSUMPTION = 5;
    public static final int MEASURED_STACK_USAGE__ECU = 6;
    public static final int MEASURED_STACK_USAGE__HARDWARE_CONFIGURATION = 7;
    public static final int MEASURED_STACK_USAGE__RUNNABLE = 8;
    public static final int MEASURED_STACK_USAGE__SOFTWARE_CONTEXT = 9;
    public static final int MEASURED_STACK_USAGE__AVERAGE_MEMORY_CONSUMPTION = 10;
    public static final int MEASURED_STACK_USAGE__MAXIMUM_MEMORY_CONSUMPTION = 11;
    public static final int MEASURED_STACK_USAGE__MINIMUM_MEMORY_CONSUMPTION = 12;
    public static final int MEASURED_STACK_USAGE__TEST_PATTERN = 13;
    public static final int MEASURED_STACK_USAGE_FEATURE_COUNT = 14;
    public static final int ROUGH_ESTIMATE_STACK_USAGE = 1;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__RESOURCE_ESTIMATION_DETAILS = 4;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__RESOURCE_CONSUMPTION = 5;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__ECU = 6;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__HARDWARE_CONFIGURATION = 7;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__RUNNABLE = 8;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__SOFTWARE_CONTEXT = 9;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__MEMORY_CONSUMPTION = 10;
    public static final int ROUGH_ESTIMATE_STACK_USAGE_FEATURE_COUNT = 11;
    public static final int WORST_CASE_STACK_USAGE = 2;
    public static final int WORST_CASE_STACK_USAGE__GCHECKSUM = 0;
    public static final int WORST_CASE_STACK_USAGE__GTIMESTAMP = 1;
    public static final int WORST_CASE_STACK_USAGE__CHECKSUM = 2;
    public static final int WORST_CASE_STACK_USAGE__TIMESTAMP = 3;
    public static final int WORST_CASE_STACK_USAGE__RESOURCE_ESTIMATION_DETAILS = 4;
    public static final int WORST_CASE_STACK_USAGE__RESOURCE_CONSUMPTION = 5;
    public static final int WORST_CASE_STACK_USAGE__ECU = 6;
    public static final int WORST_CASE_STACK_USAGE__HARDWARE_CONFIGURATION = 7;
    public static final int WORST_CASE_STACK_USAGE__RUNNABLE = 8;
    public static final int WORST_CASE_STACK_USAGE__SOFTWARE_CONTEXT = 9;
    public static final int WORST_CASE_STACK_USAGE__MEMORY_CONSUMPTION = 10;
    public static final int WORST_CASE_STACK_USAGE_FEATURE_COUNT = 11;
    public static final int STACK_USAGE = 3;
    public static final int STACK_USAGE__GCHECKSUM = 0;
    public static final int STACK_USAGE__GTIMESTAMP = 1;
    public static final int STACK_USAGE__CHECKSUM = 2;
    public static final int STACK_USAGE__TIMESTAMP = 3;
    public static final int STACK_USAGE__RESOURCE_CONSUMPTION = 4;
    public static final int STACK_USAGE__ECU = 5;
    public static final int STACK_USAGE__HARDWARE_CONFIGURATION = 6;
    public static final int STACK_USAGE__RUNNABLE = 7;
    public static final int STACK_USAGE__SOFTWARE_CONTEXT = 8;
    public static final int STACK_USAGE_FEATURE_COUNT = 9;

    public EClass getMeasuredStackUsage();

    public EAttribute getMeasuredStackUsage_AverageMemoryConsumption();

    public EAttribute getMeasuredStackUsage_MaximumMemoryConsumption();

    public EAttribute getMeasuredStackUsage_MinimumMemoryConsumption();

    public EAttribute getMeasuredStackUsage_TestPattern();

    public EClass getRoughEstimateStackUsage();

    public EAttribute getRoughEstimateStackUsage_MemoryConsumption();

    public EClass getWorstCaseStackUsage();

    public EAttribute getWorstCaseStackUsage_MemoryConsumption();

    public EClass getStackUsage();

    public EReference getStackUsage_ResourceConsumption();

    public EReference getStackUsage_Ecu();

    public EReference getStackUsage_HardwareConfiguration();

    public EReference getStackUsage_Runnable();

    public EReference getStackUsage_SoftwareContext();

    public StackusageFactory getStackusageFactory();

    public static interface Literals {
        public static final EClass MEASURED_STACK_USAGE = eINSTANCE.getMeasuredStackUsage();
        public static final EAttribute MEASURED_STACK_USAGE__AVERAGE_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_AverageMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__MAXIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_MaximumMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__MINIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_MinimumMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__TEST_PATTERN = eINSTANCE.getMeasuredStackUsage_TestPattern();
        public static final EClass ROUGH_ESTIMATE_STACK_USAGE = eINSTANCE.getRoughEstimateStackUsage();
        public static final EAttribute ROUGH_ESTIMATE_STACK_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getRoughEstimateStackUsage_MemoryConsumption();
        public static final EClass WORST_CASE_STACK_USAGE = eINSTANCE.getWorstCaseStackUsage();
        public static final EAttribute WORST_CASE_STACK_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getWorstCaseStackUsage_MemoryConsumption();
        public static final EClass STACK_USAGE = eINSTANCE.getStackUsage();
        public static final EReference STACK_USAGE__RESOURCE_CONSUMPTION = eINSTANCE.getStackUsage_ResourceConsumption();
        public static final EReference STACK_USAGE__ECU = eINSTANCE.getStackUsage_Ecu();
        public static final EReference STACK_USAGE__HARDWARE_CONFIGURATION = eINSTANCE.getStackUsage_HardwareConfiguration();
        public static final EReference STACK_USAGE__RUNNABLE = eINSTANCE.getStackUsage_Runnable();
        public static final EReference STACK_USAGE__SOFTWARE_CONTEXT = eINSTANCE.getStackUsage_SoftwareContext();
    }
}

