/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.resources.objectfilesection;

import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionFactory;
import autosar21.swcomponent.resources.objectfilesection.impl.ObjectfilesectionPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ObjectfilesectionPackage
extends EPackage {
    public static final String eNAME = "objectfilesection";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/r/ofs";
    public static final String eNS_PREFIX = "";
    public static final ObjectfilesectionPackage eINSTANCE = ObjectfilesectionPackageImpl.init();
    public static final int OBJECT_FILE_SECTION = 0;
    public static final int OBJECT_FILE_SECTION__GCHECKSUM = 0;
    public static final int OBJECT_FILE_SECTION__GTIMESTAMP = 1;
    public static final int OBJECT_FILE_SECTION__CHECKSUM = 2;
    public static final int OBJECT_FILE_SECTION__TIMESTAMP = 3;
    public static final int OBJECT_FILE_SECTION__GSHORT_NAME = 4;
    public static final int OBJECT_FILE_SECTION__GUUID = 5;
    public static final int OBJECT_FILE_SECTION__GCATEGORY = 6;
    public static final int OBJECT_FILE_SECTION__GDESC = 7;
    public static final int OBJECT_FILE_SECTION__SHORT_NAME = 8;
    public static final int OBJECT_FILE_SECTION__LONG_NAME = 9;
    public static final int OBJECT_FILE_SECTION__DESC = 10;
    public static final int OBJECT_FILE_SECTION__CATEGORY = 11;
    public static final int OBJECT_FILE_SECTION__ADMIN_DATA = 12;
    public static final int OBJECT_FILE_SECTION__UUID = 13;
    public static final int OBJECT_FILE_SECTION__ALL_EXTENSIONS = 14;
    public static final int OBJECT_FILE_SECTION__CONTAINED_EXTENSIONS = 15;
    public static final int OBJECT_FILE_SECTION__RESOURCE_CONSUMPTION = 16;
    public static final int OBJECT_FILE_SECTION__ALIGNMENT = 17;
    public static final int OBJECT_FILE_SECTION__EXECUTABLE = 18;
    public static final int OBJECT_FILE_SECTION__SECTION_NAME = 19;
    public static final int OBJECT_FILE_SECTION__SIZE = 20;
    public static final int OBJECT_FILE_SECTION__WRITABLE = 21;
    public static final int OBJECT_FILE_SECTION_FEATURE_COUNT = 22;

    public EClass getObjectFileSection();

    public EReference getObjectFileSection_ResourceConsumption();

    public EAttribute getObjectFileSection_Alignment();

    public EAttribute getObjectFileSection_Executable();

    public EAttribute getObjectFileSection_SectionName();

    public EAttribute getObjectFileSection_Size();

    public EAttribute getObjectFileSection_Writable();

    public ObjectfilesectionFactory getObjectfilesectionFactory();

    public static interface Literals {
        public static final EClass OBJECT_FILE_SECTION = eINSTANCE.getObjectFileSection();
        public static final EReference OBJECT_FILE_SECTION__RESOURCE_CONSUMPTION = eINSTANCE.getObjectFileSection_ResourceConsumption();
        public static final EAttribute OBJECT_FILE_SECTION__ALIGNMENT = eINSTANCE.getObjectFileSection_Alignment();
        public static final EAttribute OBJECT_FILE_SECTION__EXECUTABLE = eINSTANCE.getObjectFileSection_Executable();
        public static final EAttribute OBJECT_FILE_SECTION__SECTION_NAME = eINSTANCE.getObjectFileSection_SectionName();
        public static final EAttribute OBJECT_FILE_SECTION__SIZE = eINSTANCE.getObjectFileSection_Size();
        public static final EAttribute OBJECT_FILE_SECTION__WRITABLE = eINSTANCE.getObjectFileSection_Writable();
    }
}

