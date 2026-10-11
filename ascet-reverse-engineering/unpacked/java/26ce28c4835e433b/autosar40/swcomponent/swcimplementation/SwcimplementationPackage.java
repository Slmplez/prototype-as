/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcimplementation;

import autosar40.swcomponent.swcimplementation.SwcimplementationFactory;
import autosar40.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwcimplementationPackage
extends EPackage {
    public static final String eNAME = "swcimplementation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/si";
    public static final String eNS_PREFIX = "";
    public static final SwcimplementationPackage eINSTANCE = SwcimplementationPackageImpl.init();
    public static final int PER_INSTANCE_MEMORY_SIZE = 0;
    public static final int PER_INSTANCE_MEMORY_SIZE__GCHECKSUM = 0;
    public static final int PER_INSTANCE_MEMORY_SIZE__GTIMESTAMP = 1;
    public static final int PER_INSTANCE_MEMORY_SIZE__CHECKSUM = 2;
    public static final int PER_INSTANCE_MEMORY_SIZE__TIMESTAMP = 3;
    public static final int PER_INSTANCE_MEMORY_SIZE__SWC_IMPLEMENTATION = 4;
    public static final int PER_INSTANCE_MEMORY_SIZE__ALIGNMENT = 5;
    public static final int PER_INSTANCE_MEMORY_SIZE__PER_INSTANCE_MEMORY = 6;
    public static final int PER_INSTANCE_MEMORY_SIZE__SIZE = 7;
    public static final int PER_INSTANCE_MEMORY_SIZE__VARIATION_POINT = 8;
    public static final int PER_INSTANCE_MEMORY_SIZE_FEATURE_COUNT = 9;
    public static final int SWC_IMPLEMENTATION = 1;
    public static final int SWC_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int SWC_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int SWC_IMPLEMENTATION__CHECKSUM = 2;
    public static final int SWC_IMPLEMENTATION__TIMESTAMP = 3;
    public static final int SWC_IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int SWC_IMPLEMENTATION__SHORT_NAME = 5;
    public static final int SWC_IMPLEMENTATION__LONG_NAME = 6;
    public static final int SWC_IMPLEMENTATION__GUUID = 7;
    public static final int SWC_IMPLEMENTATION__GCATEGORY = 8;
    public static final int SWC_IMPLEMENTATION__GDESC = 9;
    public static final int SWC_IMPLEMENTATION__DESC = 10;
    public static final int SWC_IMPLEMENTATION__CATEGORY = 11;
    public static final int SWC_IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int SWC_IMPLEMENTATION__INTRODUCTION = 13;
    public static final int SWC_IMPLEMENTATION__ANNOTATIONS = 14;
    public static final int SWC_IMPLEMENTATION__UUID = 15;
    public static final int SWC_IMPLEMENTATION__ALL_EXTENSIONS = 16;
    public static final int SWC_IMPLEMENTATION__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_IMPLEMENTATION__GAR_PACKAGE = 18;
    public static final int SWC_IMPLEMENTATION__AR_PACKAGE = 19;
    public static final int SWC_IMPLEMENTATION__VARIATION_POINT = 20;
    public static final int SWC_IMPLEMENTATION__GRESOURCE_CONSUMPTION = 21;
    public static final int SWC_IMPLEMENTATION__GCODE_DESCRIPTORS = 22;
    public static final int SWC_IMPLEMENTATION__CODE_DESCRIPTORS = 23;
    public static final int SWC_IMPLEMENTATION__COMPILERS = 24;
    public static final int SWC_IMPLEMENTATION__GENERATED_ARTIFACTS = 25;
    public static final int SWC_IMPLEMENTATION__HW_ELEMENTS = 26;
    public static final int SWC_IMPLEMENTATION__LINKERS = 27;
    public static final int SWC_IMPLEMENTATION__MC_SUPPORT = 28;
    public static final int SWC_IMPLEMENTATION__PROGRAMMING_LANGUAGE = 29;
    public static final int SWC_IMPLEMENTATION__REQUIRED_ARTIFACTS = 30;
    public static final int SWC_IMPLEMENTATION__REQUIRED_GENERATOR_TOOLS = 31;
    public static final int SWC_IMPLEMENTATION__RESOURCE_CONSUMPTION = 32;
    public static final int SWC_IMPLEMENTATION__SW_VERSION = 33;
    public static final int SWC_IMPLEMENTATION__SWC_BSW_MAPPING = 34;
    public static final int SWC_IMPLEMENTATION__USED_CODE_GENERATOR = 35;
    public static final int SWC_IMPLEMENTATION__VENDOR_ID = 36;
    public static final int SWC_IMPLEMENTATION__GBEHAVIOR = 37;
    public static final int SWC_IMPLEMENTATION__BEHAVIOR = 38;
    public static final int SWC_IMPLEMENTATION__PER_INSTANCE_MEMORY_SIZES = 39;
    public static final int SWC_IMPLEMENTATION__REQUIRED_RTE_VENDOR = 40;
    public static final int SWC_IMPLEMENTATION_FEATURE_COUNT = 41;

    public EClass getPerInstanceMemorySize();

    public EReference getPerInstanceMemorySize_SwcImplementation();

    public EAttribute getPerInstanceMemorySize_Alignment();

    public EReference getPerInstanceMemorySize_PerInstanceMemory();

    public EReference getPerInstanceMemorySize_Size();

    public EReference getPerInstanceMemorySize_VariationPoint();

    public EClass getSwcImplementation();

    public EReference getSwcImplementation_Behavior();

    public EReference getSwcImplementation_PerInstanceMemorySizes();

    public EAttribute getSwcImplementation_RequiredRTEVendor();

    public SwcimplementationFactory getSwcimplementationFactory();

    public static interface Literals {
        public static final EClass PER_INSTANCE_MEMORY_SIZE = eINSTANCE.getPerInstanceMemorySize();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__SWC_IMPLEMENTATION = eINSTANCE.getPerInstanceMemorySize_SwcImplementation();
        public static final EAttribute PER_INSTANCE_MEMORY_SIZE__ALIGNMENT = eINSTANCE.getPerInstanceMemorySize_Alignment();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__PER_INSTANCE_MEMORY = eINSTANCE.getPerInstanceMemorySize_PerInstanceMemory();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__SIZE = eINSTANCE.getPerInstanceMemorySize_Size();
        public static final EReference PER_INSTANCE_MEMORY_SIZE__VARIATION_POINT = eINSTANCE.getPerInstanceMemorySize_VariationPoint();
        public static final EClass SWC_IMPLEMENTATION = eINSTANCE.getSwcImplementation();
        public static final EReference SWC_IMPLEMENTATION__BEHAVIOR = eINSTANCE.getSwcImplementation_Behavior();
        public static final EReference SWC_IMPLEMENTATION__PER_INSTANCE_MEMORY_SIZES = eINSTANCE.getSwcImplementation_PerInstanceMemorySizes();
        public static final EAttribute SWC_IMPLEMENTATION__REQUIRED_RTE_VENDOR = eINSTANCE.getSwcImplementation_RequiredRTEVendor();
    }
}

