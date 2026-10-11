/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl.SynopsisPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface SynopsisPackage
extends EPackage {
    public static final String eNAME = "synopsis";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s";
    public static final String eNS_PREFIX = "";
    public static final SynopsisPackage eINSTANCE = SynopsisPackageImpl.init();
    public static final int SYN_ARGUMENT = 0;
    public static final int SYN_ARGUMENT__GCHECKSUM = 0;
    public static final int SYN_ARGUMENT__GTIMESTAMP = 1;
    public static final int SYN_ARGUMENT__CHECKSUM = 2;
    public static final int SYN_ARGUMENT__TIMESTAMP = 3;
    public static final int SYN_ARGUMENT_FEATURE_COUNT = 4;

    public EClass getSynArgument();

    public SynopsisFactory getSynopsisFactory();

    public static interface Literals {
        public static final EClass SYN_ARGUMENT = eINSTANCE.getSynArgument();
    }
}

