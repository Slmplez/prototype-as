/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gcommonstructure.gsystemconstant;

import gautosar.gcommonstructure.gsystemconstant.GsystemconstantFactory;
import gautosar.gcommonstructure.gsystemconstant.impl.GsystemconstantPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GsystemconstantPackage
extends EPackage {
    public static final String eNAME = "gsystemconstant";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/sc";
    public static final String eNS_PREFIX = "null";
    public static final GsystemconstantPackage eINSTANCE = GsystemconstantPackageImpl.init();
    public static final int GSW_SYSTEMCONST = 0;
    public static final int GSW_SYSTEMCONST__GCHECKSUM = 0;
    public static final int GSW_SYSTEMCONST__GTIMESTAMP = 1;
    public static final int GSW_SYSTEMCONST__GSHORT_NAME = 2;
    public static final int GSW_SYSTEMCONST__GUUID = 3;
    public static final int GSW_SYSTEMCONST__GCATEGORY = 4;
    public static final int GSW_SYSTEMCONST__GDESC = 5;
    public static final int GSW_SYSTEMCONST__GAR_PACKAGE = 6;
    public static final int GSW_SYSTEMCONST_FEATURE_COUNT = 7;

    public EClass getGSwSystemconst();

    public GsystemconstantFactory getGsystemconstantFactory();

    public static interface Literals {
        public static final EClass GSW_SYSTEMCONST = eINSTANCE.getGSwSystemconst();
    }
}

