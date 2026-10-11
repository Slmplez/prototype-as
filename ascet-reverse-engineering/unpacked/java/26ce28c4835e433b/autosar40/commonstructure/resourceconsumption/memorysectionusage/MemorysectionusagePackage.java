/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.resourceconsumption.memorysectionusage;

import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusageFactory;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MemorysectionusagePackage
extends EPackage {
    public static final String eNAME = "memorysectionusage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/rc/msu";
    public static final String eNS_PREFIX = "";
    public static final MemorysectionusagePackage eINSTANCE = MemorysectionusagePackageImpl.init();
    public static final int MEMORY_SECTION = 0;
    public static final int MEMORY_SECTION__GCHECKSUM = 0;
    public static final int MEMORY_SECTION__GTIMESTAMP = 1;
    public static final int MEMORY_SECTION__CHECKSUM = 2;
    public static final int MEMORY_SECTION__TIMESTAMP = 3;
    public static final int MEMORY_SECTION__GSHORT_NAME = 4;
    public static final int MEMORY_SECTION__SHORT_NAME = 5;
    public static final int MEMORY_SECTION__LONG_NAME = 6;
    public static final int MEMORY_SECTION__GUUID = 7;
    public static final int MEMORY_SECTION__GCATEGORY = 8;
    public static final int MEMORY_SECTION__GDESC = 9;
    public static final int MEMORY_SECTION__DESC = 10;
    public static final int MEMORY_SECTION__CATEGORY = 11;
    public static final int MEMORY_SECTION__ADMIN_DATA = 12;
    public static final int MEMORY_SECTION__INTRODUCTION = 13;
    public static final int MEMORY_SECTION__ANNOTATIONS = 14;
    public static final int MEMORY_SECTION__UUID = 15;
    public static final int MEMORY_SECTION__ALL_EXTENSIONS = 16;
    public static final int MEMORY_SECTION__CONTAINED_EXTENSIONS = 17;
    public static final int MEMORY_SECTION__RESOURCE_CONSUMPTION = 18;
    public static final int MEMORY_SECTION__ALIGNMENT = 19;
    public static final int MEMORY_SECTION__EXECUTABLE_ENTITIES = 20;
    public static final int MEMORY_SECTION__OPTION = 21;
    public static final int MEMORY_SECTION__PREFIX = 22;
    public static final int MEMORY_SECTION__SIZE = 23;
    public static final int MEMORY_SECTION__SW_ADDRMETHOD = 24;
    public static final int MEMORY_SECTION__SYMBOL = 25;
    public static final int MEMORY_SECTION__VARIATION_POINT = 26;
    public static final int MEMORY_SECTION_FEATURE_COUNT = 27;
    public static final int SECTION_NAME_PREFIX = 1;
    public static final int SECTION_NAME_PREFIX__GCHECKSUM = 0;
    public static final int SECTION_NAME_PREFIX__GTIMESTAMP = 1;
    public static final int SECTION_NAME_PREFIX__CHECKSUM = 2;
    public static final int SECTION_NAME_PREFIX__TIMESTAMP = 3;
    public static final int SECTION_NAME_PREFIX__GSHORT_NAME = 4;
    public static final int SECTION_NAME_PREFIX__SHORT_NAME = 5;
    public static final int SECTION_NAME_PREFIX__SYMBOL = 6;
    public static final int SECTION_NAME_PREFIX__RESOURCE_CONSUMPTION = 7;
    public static final int SECTION_NAME_PREFIX__VARIATION_POINT = 8;
    public static final int SECTION_NAME_PREFIX_FEATURE_COUNT = 9;

    public EClass getMemorySection();

    public EReference getMemorySection_ResourceConsumption();

    public EAttribute getMemorySection_Alignment();

    public EReference getMemorySection_ExecutableEntities();

    public EAttribute getMemorySection_Option();

    public EReference getMemorySection_Prefix();

    public EAttribute getMemorySection_Size();

    public EReference getMemorySection_SwAddrmethod();

    public EAttribute getMemorySection_Symbol();

    public EReference getMemorySection_VariationPoint();

    public EClass getSectionNamePrefix();

    public EReference getSectionNamePrefix_ResourceConsumption();

    public EReference getSectionNamePrefix_VariationPoint();

    public MemorysectionusageFactory getMemorysectionusageFactory();

    public static interface Literals {
        public static final EClass MEMORY_SECTION = eINSTANCE.getMemorySection();
        public static final EReference MEMORY_SECTION__RESOURCE_CONSUMPTION = eINSTANCE.getMemorySection_ResourceConsumption();
        public static final EAttribute MEMORY_SECTION__ALIGNMENT = eINSTANCE.getMemorySection_Alignment();
        public static final EReference MEMORY_SECTION__EXECUTABLE_ENTITIES = eINSTANCE.getMemorySection_ExecutableEntities();
        public static final EAttribute MEMORY_SECTION__OPTION = eINSTANCE.getMemorySection_Option();
        public static final EReference MEMORY_SECTION__PREFIX = eINSTANCE.getMemorySection_Prefix();
        public static final EAttribute MEMORY_SECTION__SIZE = eINSTANCE.getMemorySection_Size();
        public static final EReference MEMORY_SECTION__SW_ADDRMETHOD = eINSTANCE.getMemorySection_SwAddrmethod();
        public static final EAttribute MEMORY_SECTION__SYMBOL = eINSTANCE.getMemorySection_Symbol();
        public static final EReference MEMORY_SECTION__VARIATION_POINT = eINSTANCE.getMemorySection_VariationPoint();
        public static final EClass SECTION_NAME_PREFIX = eINSTANCE.getSectionNamePrefix();
        public static final EReference SECTION_NAME_PREFIX__RESOURCE_CONSUMPTION = eINSTANCE.getSectionNamePrefix_ResourceConsumption();
        public static final EReference SECTION_NAME_PREFIX__VARIATION_POINT = eINSTANCE.getSectionNamePrefix_VariationPoint();
    }
}

