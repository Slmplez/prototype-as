/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.commonstructure.internalbehavior;

import autosar3x.commonstructure.internalbehavior.InternalbehaviorFactory;
import autosar3x.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface InternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "internalbehavior";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/ib";
    public static final String eNS_PREFIX = "";
    public static final InternalbehaviorPackage eINSTANCE = InternalbehaviorPackageImpl.init();
    public static final int EXCLUSIVE_AREA = 0;
    public static final int EXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int EXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int EXCLUSIVE_AREA__CHECKSUM = 2;
    public static final int EXCLUSIVE_AREA__TIMESTAMP = 3;
    public static final int EXCLUSIVE_AREA__GSHORT_NAME = 4;
    public static final int EXCLUSIVE_AREA__GUUID = 5;
    public static final int EXCLUSIVE_AREA__GCATEGORY = 6;
    public static final int EXCLUSIVE_AREA__GDESC = 7;
    public static final int EXCLUSIVE_AREA__SHORT_NAME = 8;
    public static final int EXCLUSIVE_AREA__LONG_NAME = 9;
    public static final int EXCLUSIVE_AREA__DESC = 10;
    public static final int EXCLUSIVE_AREA__CATEGORY = 11;
    public static final int EXCLUSIVE_AREA__ADMIN_DATA = 12;
    public static final int EXCLUSIVE_AREA__INTRODUCTION = 13;
    public static final int EXCLUSIVE_AREA__UUID = 14;
    public static final int EXCLUSIVE_AREA__ALL_EXTENSIONS = 15;
    public static final int EXCLUSIVE_AREA__CONTAINED_EXTENSIONS = 16;
    public static final int EXCLUSIVE_AREA_FEATURE_COUNT = 17;
    public static final int EXECUTABLE_ENTITY = 1;
    public static final int EXECUTABLE_ENTITY__GCHECKSUM = 0;
    public static final int EXECUTABLE_ENTITY__GTIMESTAMP = 1;
    public static final int EXECUTABLE_ENTITY__CHECKSUM = 2;
    public static final int EXECUTABLE_ENTITY__TIMESTAMP = 3;
    public static final int EXECUTABLE_ENTITY__GSHORT_NAME = 4;
    public static final int EXECUTABLE_ENTITY__GUUID = 5;
    public static final int EXECUTABLE_ENTITY__GCATEGORY = 6;
    public static final int EXECUTABLE_ENTITY__GDESC = 7;
    public static final int EXECUTABLE_ENTITY__SHORT_NAME = 8;
    public static final int EXECUTABLE_ENTITY__LONG_NAME = 9;
    public static final int EXECUTABLE_ENTITY__DESC = 10;
    public static final int EXECUTABLE_ENTITY__CATEGORY = 11;
    public static final int EXECUTABLE_ENTITY__ADMIN_DATA = 12;
    public static final int EXECUTABLE_ENTITY__INTRODUCTION = 13;
    public static final int EXECUTABLE_ENTITY__UUID = 14;
    public static final int EXECUTABLE_ENTITY__ALL_EXTENSIONS = 15;
    public static final int EXECUTABLE_ENTITY__CONTAINED_EXTENSIONS = 16;
    public static final int EXECUTABLE_ENTITY_FEATURE_COUNT = 17;

    public EClass getExclusiveArea();

    public EClass getExecutableEntity();

    public InternalbehaviorFactory getInternalbehaviorFactory();

    public static interface Literals {
        public static final EClass EXCLUSIVE_AREA = eINSTANCE.getExclusiveArea();
        public static final EClass EXECUTABLE_ENTITY = eINSTANCE.getExecutableEntity();
    }
}

