/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.resourceconsumption;

import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionFactory;
import autosar3x.commonstructure.resourceconsumption.impl.ResourceconsumptionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ResourceconsumptionPackage
extends EPackage {
    public static final String eNAME = "resourceconsumption";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/rc";
    public static final String eNS_PREFIX = "";
    public static final ResourceconsumptionPackage eINSTANCE = ResourceconsumptionPackageImpl.init();
    public static final int HARDWARE_CONFIGURATION = 0;
    public static final int HARDWARE_CONFIGURATION__GCHECKSUM = 0;
    public static final int HARDWARE_CONFIGURATION__GTIMESTAMP = 1;
    public static final int HARDWARE_CONFIGURATION__CHECKSUM = 2;
    public static final int HARDWARE_CONFIGURATION__TIMESTAMP = 3;
    public static final int HARDWARE_CONFIGURATION__ADDITIONAL_INFORMATION = 4;
    public static final int HARDWARE_CONFIGURATION__PROCESSOR_MODE = 5;
    public static final int HARDWARE_CONFIGURATION__PROCESSOR_SPEED = 6;
    public static final int HARDWARE_CONFIGURATION_FEATURE_COUNT = 7;
    public static final int SOFTWARE_CONTEXT = 1;
    public static final int SOFTWARE_CONTEXT__GCHECKSUM = 0;
    public static final int SOFTWARE_CONTEXT__GTIMESTAMP = 1;
    public static final int SOFTWARE_CONTEXT__CHECKSUM = 2;
    public static final int SOFTWARE_CONTEXT__TIMESTAMP = 3;
    public static final int SOFTWARE_CONTEXT__INPUT = 4;
    public static final int SOFTWARE_CONTEXT__STATE = 5;
    public static final int SOFTWARE_CONTEXT_FEATURE_COUNT = 6;
    public static final int RESOURCE_CONSUMPTION = 2;
    public static final int RESOURCE_CONSUMPTION__GCHECKSUM = 0;
    public static final int RESOURCE_CONSUMPTION__GTIMESTAMP = 1;
    public static final int RESOURCE_CONSUMPTION__CHECKSUM = 2;
    public static final int RESOURCE_CONSUMPTION__TIMESTAMP = 3;
    public static final int RESOURCE_CONSUMPTION__GSHORT_NAME = 4;
    public static final int RESOURCE_CONSUMPTION__GUUID = 5;
    public static final int RESOURCE_CONSUMPTION__GCATEGORY = 6;
    public static final int RESOURCE_CONSUMPTION__GDESC = 7;
    public static final int RESOURCE_CONSUMPTION__SHORT_NAME = 8;
    public static final int RESOURCE_CONSUMPTION__LONG_NAME = 9;
    public static final int RESOURCE_CONSUMPTION__DESC = 10;
    public static final int RESOURCE_CONSUMPTION__CATEGORY = 11;
    public static final int RESOURCE_CONSUMPTION__ADMIN_DATA = 12;
    public static final int RESOURCE_CONSUMPTION__INTRODUCTION = 13;
    public static final int RESOURCE_CONSUMPTION__UUID = 14;
    public static final int RESOURCE_CONSUMPTION__ALL_EXTENSIONS = 15;
    public static final int RESOURCE_CONSUMPTION__CONTAINED_EXTENSIONS = 16;
    public static final int RESOURCE_CONSUMPTION__EXECUTION_TIMES = 17;
    public static final int RESOURCE_CONSUMPTION__HEAP_USAGES = 18;
    public static final int RESOURCE_CONSUMPTION__OBJECT_FILE_SECTIONS = 19;
    public static final int RESOURCE_CONSUMPTION__STACK_USAGES = 20;
    public static final int RESOURCE_CONSUMPTION_FEATURE_COUNT = 21;

    public EClass getHardwareConfiguration();

    public EAttribute getHardwareConfiguration_AdditionalInformation();

    public EAttribute getHardwareConfiguration_ProcessorMode();

    public EAttribute getHardwareConfiguration_ProcessorSpeed();

    public EClass getSoftwareContext();

    public EAttribute getSoftwareContext_Input();

    public EAttribute getSoftwareContext_State();

    public EClass getResourceConsumption();

    public EReference getResourceConsumption_ExecutionTimes();

    public EReference getResourceConsumption_HeapUsages();

    public EReference getResourceConsumption_ObjectFileSections();

    public EReference getResourceConsumption_StackUsages();

    public ResourceconsumptionFactory getResourceconsumptionFactory();

    public static interface Literals {
        public static final EClass HARDWARE_CONFIGURATION = eINSTANCE.getHardwareConfiguration();
        public static final EAttribute HARDWARE_CONFIGURATION__ADDITIONAL_INFORMATION = eINSTANCE.getHardwareConfiguration_AdditionalInformation();
        public static final EAttribute HARDWARE_CONFIGURATION__PROCESSOR_MODE = eINSTANCE.getHardwareConfiguration_ProcessorMode();
        public static final EAttribute HARDWARE_CONFIGURATION__PROCESSOR_SPEED = eINSTANCE.getHardwareConfiguration_ProcessorSpeed();
        public static final EClass SOFTWARE_CONTEXT = eINSTANCE.getSoftwareContext();
        public static final EAttribute SOFTWARE_CONTEXT__INPUT = eINSTANCE.getSoftwareContext_Input();
        public static final EAttribute SOFTWARE_CONTEXT__STATE = eINSTANCE.getSoftwareContext_State();
        public static final EClass RESOURCE_CONSUMPTION = eINSTANCE.getResourceConsumption();
        public static final EReference RESOURCE_CONSUMPTION__EXECUTION_TIMES = eINSTANCE.getResourceConsumption_ExecutionTimes();
        public static final EReference RESOURCE_CONSUMPTION__HEAP_USAGES = eINSTANCE.getResourceConsumption_HeapUsages();
        public static final EReference RESOURCE_CONSUMPTION__OBJECT_FILE_SECTIONS = eINSTANCE.getResourceConsumption_ObjectFileSections();
        public static final EReference RESOURCE_CONSUMPTION__STACK_USAGES = eINSTANCE.getResourceConsumption_StackUsages();
    }
}

