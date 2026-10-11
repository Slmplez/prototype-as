/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.ggenericstructure.ginfrastructure;

import gautosar.ggenericstructure.ginfrastructure.GinfrastructureFactory;
import gautosar.ggenericstructure.ginfrastructure.impl.GinfrastructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GinfrastructurePackage
extends EPackage {
    public static final String eNAME = "ginfrastructure";
    public static final String eNS_URI = "http://artop.org/gautosar/gs/in";
    public static final String eNS_PREFIX = "";
    public static final GinfrastructurePackage eINSTANCE = GinfrastructurePackageImpl.init();
    public static final int GAR_OBJECT = 0;
    public static final int GAR_OBJECT__GCHECKSUM = 0;
    public static final int GAR_OBJECT__GTIMESTAMP = 1;
    public static final int GAR_OBJECT_FEATURE_COUNT = 2;
    public static final int GREFERRABLE = 5;
    public static final int GREFERRABLE__GCHECKSUM = 0;
    public static final int GREFERRABLE__GTIMESTAMP = 1;
    public static final int GREFERRABLE__GSHORT_NAME = 2;
    public static final int GREFERRABLE_FEATURE_COUNT = 3;
    public static final int GIDENTIFIABLE = 1;
    public static final int GIDENTIFIABLE__GCHECKSUM = 0;
    public static final int GIDENTIFIABLE__GTIMESTAMP = 1;
    public static final int GIDENTIFIABLE__GSHORT_NAME = 2;
    public static final int GIDENTIFIABLE__GUUID = 3;
    public static final int GIDENTIFIABLE__GCATEGORY = 4;
    public static final int GIDENTIFIABLE__GDESC = 5;
    public static final int GIDENTIFIABLE_FEATURE_COUNT = 6;
    public static final int GAR_PACKAGE = 2;
    public static final int GAR_PACKAGE__GCHECKSUM = 0;
    public static final int GAR_PACKAGE__GTIMESTAMP = 1;
    public static final int GAR_PACKAGE__GSHORT_NAME = 2;
    public static final int GAR_PACKAGE__GUUID = 3;
    public static final int GAR_PACKAGE__GCATEGORY = 4;
    public static final int GAR_PACKAGE__GDESC = 5;
    public static final int GAR_PACKAGE__GELEMENTS = 6;
    public static final int GAR_PACKAGE__GSUB_PACKAGES = 7;
    public static final int GAR_PACKAGE_FEATURE_COUNT = 8;
    public static final int GAUTOSAR = 3;
    public static final int GAUTOSAR__GAR_PACKAGES = 0;
    public static final int GAUTOSAR_FEATURE_COUNT = 1;
    public static final int GPACKAGEABLE_ELEMENT = 4;
    public static final int GPACKAGEABLE_ELEMENT__GCHECKSUM = 0;
    public static final int GPACKAGEABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int GPACKAGEABLE_ELEMENT__GSHORT_NAME = 2;
    public static final int GPACKAGEABLE_ELEMENT__GUUID = 3;
    public static final int GPACKAGEABLE_ELEMENT__GCATEGORY = 4;
    public static final int GPACKAGEABLE_ELEMENT__GDESC = 5;
    public static final int GPACKAGEABLE_ELEMENT__GAR_PACKAGE = 6;
    public static final int GPACKAGEABLE_ELEMENT_FEATURE_COUNT = 7;

    public EClass getGARObject();

    public EAttribute getGARObject_GChecksum();

    public EAttribute getGARObject_GTimestamp();

    public EClass getGIdentifiable();

    public EAttribute getGIdentifiable_GUuid();

    public EAttribute getGIdentifiable_GCategory();

    public EReference getGIdentifiable_GDesc();

    public EClass getGARPackage();

    public EReference getGARPackage_GElements();

    public EReference getGARPackage_GSubPackages();

    public EClass getGAUTOSAR();

    public EReference getGAUTOSAR_GArPackages();

    public EClass getGPackageableElement();

    public EReference getGPackageableElement_GARPackage();

    public EClass getGReferrable();

    public EAttribute getGReferrable_GShortName();

    public GinfrastructureFactory getGinfrastructureFactory();

    public static interface Literals {
        public static final EClass GAR_OBJECT = eINSTANCE.getGARObject();
        public static final EAttribute GAR_OBJECT__GCHECKSUM = eINSTANCE.getGARObject_GChecksum();
        public static final EAttribute GAR_OBJECT__GTIMESTAMP = eINSTANCE.getGARObject_GTimestamp();
        public static final EClass GIDENTIFIABLE = eINSTANCE.getGIdentifiable();
        public static final EAttribute GIDENTIFIABLE__GUUID = eINSTANCE.getGIdentifiable_GUuid();
        public static final EAttribute GIDENTIFIABLE__GCATEGORY = eINSTANCE.getGIdentifiable_GCategory();
        public static final EReference GIDENTIFIABLE__GDESC = eINSTANCE.getGIdentifiable_GDesc();
        public static final EClass GAR_PACKAGE = eINSTANCE.getGARPackage();
        public static final EReference GAR_PACKAGE__GELEMENTS = eINSTANCE.getGARPackage_GElements();
        public static final EReference GAR_PACKAGE__GSUB_PACKAGES = eINSTANCE.getGARPackage_GSubPackages();
        public static final EClass GAUTOSAR = eINSTANCE.getGAUTOSAR();
        public static final EReference GAUTOSAR__GAR_PACKAGES = eINSTANCE.getGAUTOSAR_GArPackages();
        public static final EClass GPACKAGEABLE_ELEMENT = eINSTANCE.getGPackageableElement();
        public static final EReference GPACKAGEABLE_ELEMENT__GAR_PACKAGE = eINSTANCE.getGPackageableElement_GARPackage();
        public static final EClass GREFERRABLE = eINSTANCE.getGReferrable();
        public static final EAttribute GREFERRABLE__GSHORT_NAME = eINSTANCE.getGReferrable_GShortName();
    }
}

