/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.gcommonstructure.gresourceconsumption;

import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionFactory;
import gautosar.gcommonstructure.gresourceconsumption.impl.GresourceconsumptionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface GresourceconsumptionPackage
extends EPackage {
    public static final String eNAME = "gresourceconsumption";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/rc";
    public static final String eNS_PREFIX = "";
    public static final GresourceconsumptionPackage eINSTANCE = GresourceconsumptionPackageImpl.init();
    public static final int GRESOURCE_CONSUMPTION = 0;
    public static final int GRESOURCE_CONSUMPTION__GCHECKSUM = 0;
    public static final int GRESOURCE_CONSUMPTION__GTIMESTAMP = 1;
    public static final int GRESOURCE_CONSUMPTION__GSHORT_NAME = 2;
    public static final int GRESOURCE_CONSUMPTION__GUUID = 3;
    public static final int GRESOURCE_CONSUMPTION__GCATEGORY = 4;
    public static final int GRESOURCE_CONSUMPTION__GDESC = 5;
    public static final int GRESOURCE_CONSUMPTION_FEATURE_COUNT = 6;

    public EClass getGResourceConsumption();

    public GresourceconsumptionFactory getGresourceconsumptionFactory();

    public static interface Literals {
        public static final EClass GRESOURCE_CONSUMPTION = eINSTANCE.getGResourceConsumption();
    }
}

