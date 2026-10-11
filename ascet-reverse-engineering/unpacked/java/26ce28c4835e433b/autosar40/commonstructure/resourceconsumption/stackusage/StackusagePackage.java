/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.resourceconsumption.stackusage;

import autosar40.commonstructure.resourceconsumption.stackusage.StackusageFactory;
import autosar40.commonstructure.resourceconsumption.stackusage.impl.StackusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface StackusagePackage
extends EPackage {
    public static final String eNAME = "stackusage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/rc/su";
    public static final String eNS_PREFIX = "";
    public static final StackusagePackage eINSTANCE = StackusagePackageImpl.init();
    public static final int STACK_USAGE = 1;
    public static final int STACK_USAGE__GCHECKSUM = 0;
    public static final int STACK_USAGE__GTIMESTAMP = 1;
    public static final int STACK_USAGE__CHECKSUM = 2;
    public static final int STACK_USAGE__TIMESTAMP = 3;
    public static final int STACK_USAGE__GSHORT_NAME = 4;
    public static final int STACK_USAGE__SHORT_NAME = 5;
    public static final int STACK_USAGE__LONG_NAME = 6;
    public static final int STACK_USAGE__GUUID = 7;
    public static final int STACK_USAGE__GCATEGORY = 8;
    public static final int STACK_USAGE__GDESC = 9;
    public static final int STACK_USAGE__DESC = 10;
    public static final int STACK_USAGE__CATEGORY = 11;
    public static final int STACK_USAGE__ADMIN_DATA = 12;
    public static final int STACK_USAGE__INTRODUCTION = 13;
    public static final int STACK_USAGE__ANNOTATIONS = 14;
    public static final int STACK_USAGE__UUID = 15;
    public static final int STACK_USAGE__ALL_EXTENSIONS = 16;
    public static final int STACK_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int STACK_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int STACK_USAGE__EXECUTABLE_ENTITY = 19;
    public static final int STACK_USAGE__HARDWARE_CONFIGURATION = 20;
    public static final int STACK_USAGE__HW_ELEMENT = 21;
    public static final int STACK_USAGE__SOFTWARE_CONTEXT = 22;
    public static final int STACK_USAGE__VARIATION_POINT = 23;
    public static final int STACK_USAGE_FEATURE_COUNT = 24;
    public static final int MEASURED_STACK_USAGE = 0;
    public static final int MEASURED_STACK_USAGE__GCHECKSUM = 0;
    public static final int MEASURED_STACK_USAGE__GTIMESTAMP = 1;
    public static final int MEASURED_STACK_USAGE__CHECKSUM = 2;
    public static final int MEASURED_STACK_USAGE__TIMESTAMP = 3;
    public static final int MEASURED_STACK_USAGE__GSHORT_NAME = 4;
    public static final int MEASURED_STACK_USAGE__SHORT_NAME = 5;
    public static final int MEASURED_STACK_USAGE__LONG_NAME = 6;
    public static final int MEASURED_STACK_USAGE__GUUID = 7;
    public static final int MEASURED_STACK_USAGE__GCATEGORY = 8;
    public static final int MEASURED_STACK_USAGE__GDESC = 9;
    public static final int MEASURED_STACK_USAGE__DESC = 10;
    public static final int MEASURED_STACK_USAGE__CATEGORY = 11;
    public static final int MEASURED_STACK_USAGE__ADMIN_DATA = 12;
    public static final int MEASURED_STACK_USAGE__INTRODUCTION = 13;
    public static final int MEASURED_STACK_USAGE__ANNOTATIONS = 14;
    public static final int MEASURED_STACK_USAGE__UUID = 15;
    public static final int MEASURED_STACK_USAGE__ALL_EXTENSIONS = 16;
    public static final int MEASURED_STACK_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int MEASURED_STACK_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int MEASURED_STACK_USAGE__EXECUTABLE_ENTITY = 19;
    public static final int MEASURED_STACK_USAGE__HARDWARE_CONFIGURATION = 20;
    public static final int MEASURED_STACK_USAGE__HW_ELEMENT = 21;
    public static final int MEASURED_STACK_USAGE__SOFTWARE_CONTEXT = 22;
    public static final int MEASURED_STACK_USAGE__VARIATION_POINT = 23;
    public static final int MEASURED_STACK_USAGE__AVERAGE_MEMORY_CONSUMPTION = 24;
    public static final int MEASURED_STACK_USAGE__MAXIMUM_MEMORY_CONSUMPTION = 25;
    public static final int MEASURED_STACK_USAGE__MINIMUM_MEMORY_CONSUMPTION = 26;
    public static final int MEASURED_STACK_USAGE__TEST_PATTERN = 27;
    public static final int MEASURED_STACK_USAGE_FEATURE_COUNT = 28;
    public static final int ROUGH_ESTIMATE_STACK_USAGE = 2;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GCHECKSUM = 0;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GTIMESTAMP = 1;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__CHECKSUM = 2;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__TIMESTAMP = 3;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GSHORT_NAME = 4;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__SHORT_NAME = 5;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__LONG_NAME = 6;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GUUID = 7;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GCATEGORY = 8;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__GDESC = 9;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__DESC = 10;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__CATEGORY = 11;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__ADMIN_DATA = 12;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__INTRODUCTION = 13;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__ANNOTATIONS = 14;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__UUID = 15;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__ALL_EXTENSIONS = 16;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__EXECUTABLE_ENTITY = 19;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__HARDWARE_CONFIGURATION = 20;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__HW_ELEMENT = 21;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__SOFTWARE_CONTEXT = 22;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__VARIATION_POINT = 23;
    public static final int ROUGH_ESTIMATE_STACK_USAGE__MEMORY_CONSUMPTION = 24;
    public static final int ROUGH_ESTIMATE_STACK_USAGE_FEATURE_COUNT = 25;
    public static final int WORST_CASE_STACK_USAGE = 3;
    public static final int WORST_CASE_STACK_USAGE__GCHECKSUM = 0;
    public static final int WORST_CASE_STACK_USAGE__GTIMESTAMP = 1;
    public static final int WORST_CASE_STACK_USAGE__CHECKSUM = 2;
    public static final int WORST_CASE_STACK_USAGE__TIMESTAMP = 3;
    public static final int WORST_CASE_STACK_USAGE__GSHORT_NAME = 4;
    public static final int WORST_CASE_STACK_USAGE__SHORT_NAME = 5;
    public static final int WORST_CASE_STACK_USAGE__LONG_NAME = 6;
    public static final int WORST_CASE_STACK_USAGE__GUUID = 7;
    public static final int WORST_CASE_STACK_USAGE__GCATEGORY = 8;
    public static final int WORST_CASE_STACK_USAGE__GDESC = 9;
    public static final int WORST_CASE_STACK_USAGE__DESC = 10;
    public static final int WORST_CASE_STACK_USAGE__CATEGORY = 11;
    public static final int WORST_CASE_STACK_USAGE__ADMIN_DATA = 12;
    public static final int WORST_CASE_STACK_USAGE__INTRODUCTION = 13;
    public static final int WORST_CASE_STACK_USAGE__ANNOTATIONS = 14;
    public static final int WORST_CASE_STACK_USAGE__UUID = 15;
    public static final int WORST_CASE_STACK_USAGE__ALL_EXTENSIONS = 16;
    public static final int WORST_CASE_STACK_USAGE__CONTAINED_EXTENSIONS = 17;
    public static final int WORST_CASE_STACK_USAGE__RESOURCE_CONSUMPTION = 18;
    public static final int WORST_CASE_STACK_USAGE__EXECUTABLE_ENTITY = 19;
    public static final int WORST_CASE_STACK_USAGE__HARDWARE_CONFIGURATION = 20;
    public static final int WORST_CASE_STACK_USAGE__HW_ELEMENT = 21;
    public static final int WORST_CASE_STACK_USAGE__SOFTWARE_CONTEXT = 22;
    public static final int WORST_CASE_STACK_USAGE__VARIATION_POINT = 23;
    public static final int WORST_CASE_STACK_USAGE__MEMORY_CONSUMPTION = 24;
    public static final int WORST_CASE_STACK_USAGE_FEATURE_COUNT = 25;

    public EClass getMeasuredStackUsage();

    public EAttribute getMeasuredStackUsage_AverageMemoryConsumption();

    public EAttribute getMeasuredStackUsage_MaximumMemoryConsumption();

    public EAttribute getMeasuredStackUsage_MinimumMemoryConsumption();

    public EAttribute getMeasuredStackUsage_TestPattern();

    public EClass getStackUsage();

    public EReference getStackUsage_ResourceConsumption();

    public EReference getStackUsage_ExecutableEntity();

    public EReference getStackUsage_HardwareConfiguration();

    public EReference getStackUsage_HwElement();

    public EReference getStackUsage_SoftwareContext();

    public EReference getStackUsage_VariationPoint();

    public EClass getRoughEstimateStackUsage();

    public EAttribute getRoughEstimateStackUsage_MemoryConsumption();

    public EClass getWorstCaseStackUsage();

    public EAttribute getWorstCaseStackUsage_MemoryConsumption();

    public StackusageFactory getStackusageFactory();

    public static interface Literals {
        public static final EClass MEASURED_STACK_USAGE = eINSTANCE.getMeasuredStackUsage();
        public static final EAttribute MEASURED_STACK_USAGE__AVERAGE_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_AverageMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__MAXIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_MaximumMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__MINIMUM_MEMORY_CONSUMPTION = eINSTANCE.getMeasuredStackUsage_MinimumMemoryConsumption();
        public static final EAttribute MEASURED_STACK_USAGE__TEST_PATTERN = eINSTANCE.getMeasuredStackUsage_TestPattern();
        public static final EClass STACK_USAGE = eINSTANCE.getStackUsage();
        public static final EReference STACK_USAGE__RESOURCE_CONSUMPTION = eINSTANCE.getStackUsage_ResourceConsumption();
        public static final EReference STACK_USAGE__EXECUTABLE_ENTITY = eINSTANCE.getStackUsage_ExecutableEntity();
        public static final EReference STACK_USAGE__HARDWARE_CONFIGURATION = eINSTANCE.getStackUsage_HardwareConfiguration();
        public static final EReference STACK_USAGE__HW_ELEMENT = eINSTANCE.getStackUsage_HwElement();
        public static final EReference STACK_USAGE__SOFTWARE_CONTEXT = eINSTANCE.getStackUsage_SoftwareContext();
        public static final EReference STACK_USAGE__VARIATION_POINT = eINSTANCE.getStackUsage_VariationPoint();
        public static final EClass ROUGH_ESTIMATE_STACK_USAGE = eINSTANCE.getRoughEstimateStackUsage();
        public static final EAttribute ROUGH_ESTIMATE_STACK_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getRoughEstimateStackUsage_MemoryConsumption();
        public static final EClass WORST_CASE_STACK_USAGE = eINSTANCE.getWorstCaseStackUsage();
        public static final EAttribute WORST_CASE_STACK_USAGE__MEMORY_CONSUMPTION = eINSTANCE.getWorstCaseStackUsage_MemoryConsumption();
    }
}

