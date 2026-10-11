/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gsystem;

import gautosar.gsystem.GsystemFactory;
import gautosar.gsystem.impl.GsystemPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GsystemPackage
extends EPackage {
    public static final String eNAME = "gsystem";
    public static final String eNS_URI = "http://artop.org/gautosar/s";
    public static final String eNS_PREFIX = "";
    public static final GsystemPackage eINSTANCE = GsystemPackageImpl.init();
    public static final int GSYSTEM = 0;
    public static final int GSYSTEM__GCHECKSUM = 0;
    public static final int GSYSTEM__GTIMESTAMP = 1;
    public static final int GSYSTEM__GSHORT_NAME = 2;
    public static final int GSYSTEM__GUUID = 3;
    public static final int GSYSTEM__GCATEGORY = 4;
    public static final int GSYSTEM__GDESC = 5;
    public static final int GSYSTEM__GAR_PACKAGE = 6;
    public static final int GSYSTEM_FEATURE_COUNT = 7;

    public EClass getGSystem();

    public GsystemFactory getGsystemFactory();

    public static interface Literals {
        public static final EClass GSYSTEM = eINSTANCE.getGSystem();
    }
}

