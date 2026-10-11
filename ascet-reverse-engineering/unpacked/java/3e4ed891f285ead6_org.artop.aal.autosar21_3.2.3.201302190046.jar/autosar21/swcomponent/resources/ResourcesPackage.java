/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.resources;

import autosar21.swcomponent.resources.ResourcesFactory;
import autosar21.swcomponent.resources.impl.ResourcesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ResourcesPackage
extends EPackage {
    public static final String eNAME = "resources";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/r";
    public static final String eNS_PREFIX = "";
    public static final ResourcesPackage eINSTANCE = ResourcesPackageImpl.init();
    public static final int RESOURCE_CONSUMPTION = 0;
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
    public static final int RESOURCE_CONSUMPTION__UUID = 13;
    public static final int RESOURCE_CONSUMPTION__ALL_EXTENSIONS = 14;
    public static final int RESOURCE_CONSUMPTION__CONTAINED_EXTENSIONS = 15;
    public static final int RESOURCE_CONSUMPTION__IMPLEMENTATION = 16;
    public static final int RESOURCE_CONSUMPTION__EXECUTION_TIMES = 17;
    public static final int RESOURCE_CONSUMPTION__HEAP_USAGES = 18;
    public static final int RESOURCE_CONSUMPTION__OBJECT_FILE_SECTIONS = 19;
    public static final int RESOURCE_CONSUMPTION__PER_INSTANCE_MEMORY_SIZES = 20;
    public static final int RESOURCE_CONSUMPTION__STACK_USAGES = 21;
    public static final int RESOURCE_CONSUMPTION_FEATURE_COUNT = 22;

    public EClass getResourceConsumption();

    public EReference getResourceConsumption_Implementation();

    public EReference getResourceConsumption_ExecutionTimes();

    public EReference getResourceConsumption_HeapUsages();

    public EReference getResourceConsumption_ObjectFileSections();

    public EReference getResourceConsumption_PerInstanceMemorySizes();

    public EReference getResourceConsumption_StackUsages();

    public ResourcesFactory getResourcesFactory();

    public static interface Literals {
        public static final EClass RESOURCE_CONSUMPTION = eINSTANCE.getResourceConsumption();
        public static final EReference RESOURCE_CONSUMPTION__IMPLEMENTATION = eINSTANCE.getResourceConsumption_Implementation();
        public static final EReference RESOURCE_CONSUMPTION__EXECUTION_TIMES = eINSTANCE.getResourceConsumption_ExecutionTimes();
        public static final EReference RESOURCE_CONSUMPTION__HEAP_USAGES = eINSTANCE.getResourceConsumption_HeapUsages();
        public static final EReference RESOURCE_CONSUMPTION__OBJECT_FILE_SECTIONS = eINSTANCE.getResourceConsumption_ObjectFileSections();
        public static final EReference RESOURCE_CONSUMPTION__PER_INSTANCE_MEMORY_SIZES = eINSTANCE.getResourceConsumption_PerInstanceMemorySizes();
        public static final EReference RESOURCE_CONSUMPTION__STACK_USAGES = eINSTANCE.getResourceConsumption_StackUsages();
    }
}

