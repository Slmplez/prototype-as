/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gcommonstructure.gimplementation;

import gautosar.gcommonstructure.gimplementation.GimplementationFactory;
import gautosar.gcommonstructure.gimplementation.impl.GimplementationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GimplementationPackage
extends EPackage {
    public static final String eNAME = "gimplementation";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/implementation";
    public static final String eNS_PREFIX = "";
    public static final GimplementationPackage eINSTANCE = GimplementationPackageImpl.init();
    public static final int GIMPLEMENTATION = 0;
    public static final int GIMPLEMENTATION__GCHECKSUM = 0;
    public static final int GIMPLEMENTATION__GTIMESTAMP = 1;
    public static final int GIMPLEMENTATION__GSHORT_NAME = 2;
    public static final int GIMPLEMENTATION__GUUID = 3;
    public static final int GIMPLEMENTATION__GCATEGORY = 4;
    public static final int GIMPLEMENTATION__GDESC = 5;
    public static final int GIMPLEMENTATION__GAR_PACKAGE = 6;
    public static final int GIMPLEMENTATION__GRESOURCE_CONSUMPTION = 7;
    public static final int GIMPLEMENTATION__GCODE_DESCRIPTORS = 8;
    public static final int GIMPLEMENTATION_FEATURE_COUNT = 9;
    public static final int GCODE = 1;
    public static final int GCODE__GCHECKSUM = 0;
    public static final int GCODE__GTIMESTAMP = 1;
    public static final int GCODE__GSHORT_NAME = 2;
    public static final int GCODE__GUUID = 3;
    public static final int GCODE__GCATEGORY = 4;
    public static final int GCODE__GDESC = 5;
    public static final int GCODE_FEATURE_COUNT = 6;
    public static final int GENGINEERING_OBJECT = 2;
    public static final int GENGINEERING_OBJECT__GCHECKSUM = 0;
    public static final int GENGINEERING_OBJECT__GTIMESTAMP = 1;
    public static final int GENGINEERING_OBJECT_FEATURE_COUNT = 2;
    public static final int GAUTOSAR_ENGINEERING_OBJECT = 3;
    public static final int GAUTOSAR_ENGINEERING_OBJECT__GCHECKSUM = 0;
    public static final int GAUTOSAR_ENGINEERING_OBJECT__GTIMESTAMP = 1;
    public static final int GAUTOSAR_ENGINEERING_OBJECT_FEATURE_COUNT = 2;

    public EClass getGImplementation();

    public EReference getGImplementation_GResourceConsumption();

    public EReference getGImplementation_GCodeDescriptors();

    public EClass getGCode();

    public EClass getGEngineeringObject();

    public EClass getGAutosarEngineeringObject();

    public GimplementationFactory getGimplementationFactory();

    public static interface Literals {
        public static final EClass GIMPLEMENTATION = eINSTANCE.getGImplementation();
        public static final EReference GIMPLEMENTATION__GRESOURCE_CONSUMPTION = eINSTANCE.getGImplementation_GResourceConsumption();
        public static final EReference GIMPLEMENTATION__GCODE_DESCRIPTORS = eINSTANCE.getGImplementation_GCodeDescriptors();
        public static final EClass GCODE = eINSTANCE.getGCode();
        public static final EClass GENGINEERING_OBJECT = eINSTANCE.getGEngineeringObject();
        public static final EClass GAUTOSAR_ENGINEERING_OBJECT = eINSTANCE.getGAutosarEngineeringObject();
    }
}

