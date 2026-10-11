/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.resourceconsumption.memorysectionusage;

import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusageFactory;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MemorysectionusagePackage
extends EPackage {
    public static final String eNAME = "memorysectionusage";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/rc/msu";
    public static final String eNS_PREFIX = "";
    public static final MemorysectionusagePackage eINSTANCE = MemorysectionusagePackageImpl.init();
    public static final int MEMORY_SECTION = 0;
    public static final int MEMORY_SECTION__GCHECKSUM = 0;
    public static final int MEMORY_SECTION__GTIMESTAMP = 1;
    public static final int MEMORY_SECTION__CHECKSUM = 2;
    public static final int MEMORY_SECTION__TIMESTAMP = 3;
    public static final int MEMORY_SECTION__GSHORT_NAME = 4;
    public static final int MEMORY_SECTION__GUUID = 5;
    public static final int MEMORY_SECTION__GCATEGORY = 6;
    public static final int MEMORY_SECTION__GDESC = 7;
    public static final int MEMORY_SECTION__SHORT_NAME = 8;
    public static final int MEMORY_SECTION__LONG_NAME = 9;
    public static final int MEMORY_SECTION__DESC = 10;
    public static final int MEMORY_SECTION__CATEGORY = 11;
    public static final int MEMORY_SECTION__ADMIN_DATA = 12;
    public static final int MEMORY_SECTION__INTRODUCTION = 13;
    public static final int MEMORY_SECTION__UUID = 14;
    public static final int MEMORY_SECTION__ALL_EXTENSIONS = 15;
    public static final int MEMORY_SECTION__CONTAINED_EXTENSIONS = 16;
    public static final int MEMORY_SECTION__RESOURCE_CONSUMPTION = 17;
    public static final int MEMORY_SECTION__ALIGNMENT = 18;
    public static final int MEMORY_SECTION__OPTIONS = 19;
    public static final int MEMORY_SECTION__SECTION_NAME = 20;
    public static final int MEMORY_SECTION__SECTION_TYPE = 21;
    public static final int MEMORY_SECTION__SIZE = 22;
    public static final int MEMORY_SECTION__SW_ADDR_METHODS = 23;
    public static final int MEMORY_SECTION_FEATURE_COUNT = 24;
    public static final int MEMORY_SECTION_TYPE = 1;

    public EClass getMemorySection();

    public EReference getMemorySection_ResourceConsumption();

    public EAttribute getMemorySection_Alignment();

    public EAttribute getMemorySection_Options();

    public EAttribute getMemorySection_SectionName();

    public EAttribute getMemorySection_SectionType();

    public EAttribute getMemorySection_Size();

    public EReference getMemorySection_SwAddrMethods();

    public EEnum getMemorySectionType();

    public MemorysectionusageFactory getMemorysectionusageFactory();

    public static interface Literals {
        public static final EClass MEMORY_SECTION = eINSTANCE.getMemorySection();
        public static final EReference MEMORY_SECTION__RESOURCE_CONSUMPTION = eINSTANCE.getMemorySection_ResourceConsumption();
        public static final EAttribute MEMORY_SECTION__ALIGNMENT = eINSTANCE.getMemorySection_Alignment();
        public static final EAttribute MEMORY_SECTION__OPTIONS = eINSTANCE.getMemorySection_Options();
        public static final EAttribute MEMORY_SECTION__SECTION_NAME = eINSTANCE.getMemorySection_SectionName();
        public static final EAttribute MEMORY_SECTION__SECTION_TYPE = eINSTANCE.getMemorySection_SectionType();
        public static final EAttribute MEMORY_SECTION__SIZE = eINSTANCE.getMemorySection_Size();
        public static final EReference MEMORY_SECTION__SW_ADDR_METHODS = eINSTANCE.getMemorySection_SwAddrMethods();
        public static final EEnum MEMORY_SECTION_TYPE = eINSTANCE.getMemorySectionType();
    }
}

