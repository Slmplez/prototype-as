/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.elementcollection;

import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionFactory;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.impl.ElementcollectionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ElementcollectionPackage
extends EPackage {
    public static final String eNAME = "elementcollection";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/ec";
    public static final String eNS_PREFIX = "";
    public static final ElementcollectionPackage eINSTANCE = ElementcollectionPackageImpl.init();
    public static final int COLLECTABLE_ELEMENT = 1;
    public static final int COLLECTABLE_ELEMENT__GCHECKSUM = 0;
    public static final int COLLECTABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int COLLECTABLE_ELEMENT__CHECKSUM = 2;
    public static final int COLLECTABLE_ELEMENT__TIMESTAMP = 3;
    public static final int COLLECTABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int COLLECTABLE_ELEMENT__SHORT_NAME = 5;
    public static final int COLLECTABLE_ELEMENT__LONG_NAME = 6;
    public static final int COLLECTABLE_ELEMENT__GUUID = 7;
    public static final int COLLECTABLE_ELEMENT__GCATEGORY = 8;
    public static final int COLLECTABLE_ELEMENT__GDESC = 9;
    public static final int COLLECTABLE_ELEMENT__DESC = 10;
    public static final int COLLECTABLE_ELEMENT__CATEGORY = 11;
    public static final int COLLECTABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int COLLECTABLE_ELEMENT__INTRODUCTION = 13;
    public static final int COLLECTABLE_ELEMENT__ANNOTATIONS = 14;
    public static final int COLLECTABLE_ELEMENT__UUID = 15;
    public static final int COLLECTABLE_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int COLLECTABLE_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int COLLECTABLE_ELEMENT_FEATURE_COUNT = 18;
    public static final int COLLECTION = 0;
    public static final int COLLECTION__GCHECKSUM = 0;
    public static final int COLLECTION__GTIMESTAMP = 1;
    public static final int COLLECTION__CHECKSUM = 2;
    public static final int COLLECTION__TIMESTAMP = 3;
    public static final int COLLECTION__GSHORT_NAME = 4;
    public static final int COLLECTION__SHORT_NAME = 5;
    public static final int COLLECTION__LONG_NAME = 6;
    public static final int COLLECTION__GUUID = 7;
    public static final int COLLECTION__GCATEGORY = 8;
    public static final int COLLECTION__GDESC = 9;
    public static final int COLLECTION__DESC = 10;
    public static final int COLLECTION__CATEGORY = 11;
    public static final int COLLECTION__ADMIN_DATA = 12;
    public static final int COLLECTION__INTRODUCTION = 13;
    public static final int COLLECTION__ANNOTATIONS = 14;
    public static final int COLLECTION__UUID = 15;
    public static final int COLLECTION__ALL_EXTENSIONS = 16;
    public static final int COLLECTION__CONTAINED_EXTENSIONS = 17;
    public static final int COLLECTION__GAR_PACKAGE = 18;
    public static final int COLLECTION__AR_PACKAGE = 19;
    public static final int COLLECTION__VARIATION_POINT = 20;
    public static final int COLLECTION__ELEMENTS = 21;
    public static final int COLLECTION_FEATURE_COUNT = 22;

    public EClass getCollection();

    public EReference getCollection_Elements();

    public EClass getCollectableElement();

    public ElementcollectionFactory getElementcollectionFactory();

    public static interface Literals {
        public static final EClass COLLECTION = eINSTANCE.getCollection();
        public static final EReference COLLECTION__ELEMENTS = eINSTANCE.getCollection_Elements();
        public static final EClass COLLECTABLE_ELEMENT = eINSTANCE.getCollectableElement();
    }
}

