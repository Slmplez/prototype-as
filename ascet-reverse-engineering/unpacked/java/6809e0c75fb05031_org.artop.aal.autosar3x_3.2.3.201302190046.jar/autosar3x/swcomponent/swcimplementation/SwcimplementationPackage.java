/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcimplementation;

import autosar3x.swcomponent.swcimplementation.SwcimplementationFactory;
import autosar3x.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwcimplementationPackage
extends EPackage {
    public static final String eNAME = "swcimplementation";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/si";
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
    public static final int PER_INSTANCE_MEMORY_SIZE_FEATURE_COUNT = 8;
    public static final int SWC_IMPLEMENTATION = 1;
    public static final int SWC_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int SWC_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int SWC_IMPLEMENTATION__CHECKSUM = 2;
    public static final int SWC_IMPLEMENTATION__TIMESTAMP = 3;
    public static final int SWC_IMPLEMENTATION__GSHORT_NAME = 4;
    public static final int SWC_IMPLEMENTATION__GUUID = 5;
    public static final int SWC_IMPLEMENTATION__GCATEGORY = 6;
    public static final int SWC_IMPLEMENTATION__GDESC = 7;
    public static final int SWC_IMPLEMENTATION__SHORT_NAME = 8;
    public static final int SWC_IMPLEMENTATION__LONG_NAME = 9;
    public static final int SWC_IMPLEMENTATION__DESC = 10;
    public static final int SWC_IMPLEMENTATION__CATEGORY = 11;
    public static final int SWC_IMPLEMENTATION__ADMIN_DATA = 12;
    public static final int SWC_IMPLEMENTATION__INTRODUCTION = 13;
    public static final int SWC_IMPLEMENTATION__UUID = 14;
    public static final int SWC_IMPLEMENTATION__ALL_EXTENSIONS = 15;
    public static final int SWC_IMPLEMENTATION__CONTAINED_EXTENSIONS = 16;
    public static final int SWC_IMPLEMENTATION__GAR_PACKAGE = 17;
    public static final int SWC_IMPLEMENTATION__AR_PACKAGE = 18;
    public static final int SWC_IMPLEMENTATION__GRESOURCE_CONSUMPTION = 19;
    public static final int SWC_IMPLEMENTATION__GCODE_DESCRIPTORS = 20;
    public static final int SWC_IMPLEMENTATION__CODE_DESCRIPTORS = 21;
    public static final int SWC_IMPLEMENTATION__CODE_GENERATOR = 22;
    public static final int SWC_IMPLEMENTATION__COMPILERS = 23;
    public static final int SWC_IMPLEMENTATION__IMPLEMENTATION_DEPENDENCIES = 24;
    public static final int SWC_IMPLEMENTATION__LINKERS = 25;
    public static final int SWC_IMPLEMENTATION__PROCESSORS = 26;
    public static final int SWC_IMPLEMENTATION__PROGRAMMING_LANGUAGE = 27;
    public static final int SWC_IMPLEMENTATION__RESOURCE_CONSUMPTION = 28;
    public static final int SWC_IMPLEMENTATION__SW_MAJOR_VERSION = 29;
    public static final int SWC_IMPLEMENTATION__SW_MINOR_VERSION = 30;
    public static final int SWC_IMPLEMENTATION__SW_PATCH_VERSION = 31;
    public static final int SWC_IMPLEMENTATION__VENDOR_ID = 32;
    public static final int SWC_IMPLEMENTATION__GBEHAVIOR = 33;
    public static final int SWC_IMPLEMENTATION__BEHAVIOR = 34;
    public static final int SWC_IMPLEMENTATION__PER_INSTANCE_MEMORY_SIZES = 35;
    public static final int SWC_IMPLEMENTATION__REQUIRED_RTE_VENDOR = 36;
    public static final int SWC_IMPLEMENTATION_FEATURE_COUNT = 37;

    public EClass getPerInstanceMemorySize();

    public EReference getPerInstanceMemorySize_SwcImplementation();

    public EAttribute getPerInstanceMemorySize_Alignment();

    public EReference getPerInstanceMemorySize_PerInstanceMemory();

    public EAttribute getPerInstanceMemorySize_Size();

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
        public static final EAttribute PER_INSTANCE_MEMORY_SIZE__SIZE = eINSTANCE.getPerInstanceMemorySize_Size();
        public static final EClass SWC_IMPLEMENTATION = eINSTANCE.getSwcImplementation();
        public static final EReference SWC_IMPLEMENTATION__BEHAVIOR = eINSTANCE.getSwcImplementation_Behavior();
        public static final EReference SWC_IMPLEMENTATION__PER_INSTANCE_MEMORY_SIZES = eINSTANCE.getSwcImplementation_PerInstanceMemorySizes();
        public static final EAttribute SWC_IMPLEMENTATION__REQUIRED_RTE_VENDOR = eINSTANCE.getSwcImplementation_RequiredRTEVendor();
    }
}

