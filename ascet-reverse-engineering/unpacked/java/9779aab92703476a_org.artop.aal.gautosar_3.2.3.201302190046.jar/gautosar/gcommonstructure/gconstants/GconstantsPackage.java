/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gcommonstructure.gconstants;

import gautosar.gcommonstructure.gconstants.GconstantsFactory;
import gautosar.gcommonstructure.gconstants.impl.GconstantsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GconstantsPackage
extends EPackage {
    public static final String eNAME = "gconstants";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/const";
    public static final String eNS_PREFIX = "";
    public static final GconstantsPackage eINSTANCE = GconstantsPackageImpl.init();
    public static final int GVALUE_SPECIFICATION = 0;
    public static final int GVALUE_SPECIFICATION__GCHECKSUM = 0;
    public static final int GVALUE_SPECIFICATION__GTIMESTAMP = 1;
    public static final int GVALUE_SPECIFICATION_FEATURE_COUNT = 2;

    public EClass getGValueSpecification();

    public GconstantsFactory getGconstantsFactory();

    public static interface Literals {
        public static final EClass GVALUE_SPECIFICATION = eINSTANCE.getGValueSpecification();
    }
}

