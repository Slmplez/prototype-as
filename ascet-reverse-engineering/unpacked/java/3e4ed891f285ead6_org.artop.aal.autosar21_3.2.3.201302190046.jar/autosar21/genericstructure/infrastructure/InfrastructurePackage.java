/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.genericstructure.infrastructure;

import autosar21.genericstructure.infrastructure.InfrastructureFactory;
import autosar21.genericstructure.infrastructure.impl.InfrastructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InfrastructurePackage
extends EPackage {
    public static final String eNAME = "infrastructure";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/i";
    public static final String eNS_PREFIX = "";
    public static final InfrastructurePackage eINSTANCE = InfrastructurePackageImpl.init();
    public static final int AR_OBJECT = 2;
    public static final int AR_OBJECT__GCHECKSUM = 0;
    public static final int AR_OBJECT__GTIMESTAMP = 1;
    public static final int AR_OBJECT__CHECKSUM = 2;
    public static final int AR_OBJECT__TIMESTAMP = 3;
    public static final int AR_OBJECT_FEATURE_COUNT = 4;
    public static final int PACKAGEABLE_ELEMENT = 1;
    public static final int PACKAGEABLE_ELEMENT__GCHECKSUM = 0;
    public static final int PACKAGEABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int PACKAGEABLE_ELEMENT__CHECKSUM = 2;
    public static final int PACKAGEABLE_ELEMENT__TIMESTAMP = 3;
    public static final int PACKAGEABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int PACKAGEABLE_ELEMENT__GUUID = 5;
    public static final int PACKAGEABLE_ELEMENT__GCATEGORY = 6;
    public static final int PACKAGEABLE_ELEMENT__GDESC = 7;
    public static final int PACKAGEABLE_ELEMENT__SHORT_NAME = 8;
    public static final int PACKAGEABLE_ELEMENT__LONG_NAME = 9;
    public static final int PACKAGEABLE_ELEMENT__DESC = 10;
    public static final int PACKAGEABLE_ELEMENT__CATEGORY = 11;
    public static final int PACKAGEABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int PACKAGEABLE_ELEMENT__UUID = 13;
    public static final int PACKAGEABLE_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int PACKAGEABLE_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int PACKAGEABLE_ELEMENT__GAR_PACKAGE = 16;
    public static final int PACKAGEABLE_ELEMENT__AR_PACKAGE = 17;
    public static final int PACKAGEABLE_ELEMENT_FEATURE_COUNT = 18;
    public static final int NON_SPLITABLE_ELEMENT = 0;
    public static final int NON_SPLITABLE_ELEMENT__GCHECKSUM = 0;
    public static final int NON_SPLITABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int NON_SPLITABLE_ELEMENT__CHECKSUM = 2;
    public static final int NON_SPLITABLE_ELEMENT__TIMESTAMP = 3;
    public static final int NON_SPLITABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int NON_SPLITABLE_ELEMENT__GUUID = 5;
    public static final int NON_SPLITABLE_ELEMENT__GCATEGORY = 6;
    public static final int NON_SPLITABLE_ELEMENT__GDESC = 7;
    public static final int NON_SPLITABLE_ELEMENT__SHORT_NAME = 8;
    public static final int NON_SPLITABLE_ELEMENT__LONG_NAME = 9;
    public static final int NON_SPLITABLE_ELEMENT__DESC = 10;
    public static final int NON_SPLITABLE_ELEMENT__CATEGORY = 11;
    public static final int NON_SPLITABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int NON_SPLITABLE_ELEMENT__UUID = 13;
    public static final int NON_SPLITABLE_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int NON_SPLITABLE_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int NON_SPLITABLE_ELEMENT__GAR_PACKAGE = 16;
    public static final int NON_SPLITABLE_ELEMENT__AR_PACKAGE = 17;
    public static final int NON_SPLITABLE_ELEMENT_FEATURE_COUNT = 18;
    public static final int SPLITABLE_ELEMENT = 3;
    public static final int SPLITABLE_ELEMENT__GCHECKSUM = 0;
    public static final int SPLITABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int SPLITABLE_ELEMENT__CHECKSUM = 2;
    public static final int SPLITABLE_ELEMENT__TIMESTAMP = 3;
    public static final int SPLITABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int SPLITABLE_ELEMENT__GUUID = 5;
    public static final int SPLITABLE_ELEMENT__GCATEGORY = 6;
    public static final int SPLITABLE_ELEMENT__GDESC = 7;
    public static final int SPLITABLE_ELEMENT__SHORT_NAME = 8;
    public static final int SPLITABLE_ELEMENT__LONG_NAME = 9;
    public static final int SPLITABLE_ELEMENT__DESC = 10;
    public static final int SPLITABLE_ELEMENT__CATEGORY = 11;
    public static final int SPLITABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int SPLITABLE_ELEMENT__UUID = 13;
    public static final int SPLITABLE_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int SPLITABLE_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int SPLITABLE_ELEMENT__GAR_PACKAGE = 16;
    public static final int SPLITABLE_ELEMENT__AR_PACKAGE = 17;
    public static final int SPLITABLE_ELEMENT_FEATURE_COUNT = 18;

    public EClass getNonSplitableElement();

    public EClass getPackageableElement();

    public EReference getPackageableElement_ARPackage();

    public EClass getARObject();

    public EAttribute getARObject_Checksum();

    public EAttribute getARObject_Timestamp();

    public EClass getSplitableElement();

    public InfrastructureFactory getInfrastructureFactory();

    public static interface Literals {
        public static final EClass NON_SPLITABLE_ELEMENT = eINSTANCE.getNonSplitableElement();
        public static final EClass PACKAGEABLE_ELEMENT = eINSTANCE.getPackageableElement();
        public static final EReference PACKAGEABLE_ELEMENT__AR_PACKAGE = eINSTANCE.getPackageableElement_ARPackage();
        public static final EClass AR_OBJECT = eINSTANCE.getARObject();
        public static final EAttribute AR_OBJECT__CHECKSUM = eINSTANCE.getARObject_Checksum();
        public static final EAttribute AR_OBJECT__TIMESTAMP = eINSTANCE.getARObject_Timestamp();
        public static final EClass SPLITABLE_ELEMENT = eINSTANCE.getSplitableElement();
    }
}

