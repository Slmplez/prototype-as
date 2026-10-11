/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gswcimplementation;

import gautosar.gswcomponents.gswcimplementation.GswcimplementationFactory;
import gautosar.gswcomponents.gswcimplementation.impl.GswcimplementationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GswcimplementationPackage
extends EPackage {
    public static final String eNAME = "gswcimplementation";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/si";
    public static final String eNS_PREFIX = "";
    public static final GswcimplementationPackage eINSTANCE = GswcimplementationPackageImpl.init();
    public static final int GSWC_IMPLEMENTATION = 0;
    public static final int GSWC_IMPLEMENTATION__GCHECKSUM = 0;
    public static final int GSWC_IMPLEMENTATION__GTIMESTAMP = 1;
    public static final int GSWC_IMPLEMENTATION__GSHORT_NAME = 2;
    public static final int GSWC_IMPLEMENTATION__GUUID = 3;
    public static final int GSWC_IMPLEMENTATION__GCATEGORY = 4;
    public static final int GSWC_IMPLEMENTATION__GDESC = 5;
    public static final int GSWC_IMPLEMENTATION__GAR_PACKAGE = 6;
    public static final int GSWC_IMPLEMENTATION__GRESOURCE_CONSUMPTION = 7;
    public static final int GSWC_IMPLEMENTATION__GCODE_DESCRIPTORS = 8;
    public static final int GSWC_IMPLEMENTATION__GBEHAVIOR = 9;
    public static final int GSWC_IMPLEMENTATION_FEATURE_COUNT = 10;

    public EClass getGSwcImplementation();

    public EReference getGSwcImplementation_GBehavior();

    public GswcimplementationFactory getGswcimplementationFactory();

    public static interface Literals {
        public static final EClass GSWC_IMPLEMENTATION = eINSTANCE.getGSwcImplementation();
        public static final EReference GSWC_IMPLEMENTATION__GBEHAVIOR = eINSTANCE.getGSwcImplementation_GBehavior();
    }
}

