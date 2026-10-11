/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject;

import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectFactory;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.impl.EngineeringobjectPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface EngineeringobjectPackage
extends EPackage {
    public static final String eNAME = "engineeringobject";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/eo";
    public static final String eNS_PREFIX = "";
    public static final EngineeringobjectPackage eINSTANCE = EngineeringobjectPackageImpl.init();
    public static final int ENGINEERING_OBJECT = 0;
    public static final int ENGINEERING_OBJECT__GCHECKSUM = 0;
    public static final int ENGINEERING_OBJECT__GTIMESTAMP = 1;
    public static final int ENGINEERING_OBJECT__CHECKSUM = 2;
    public static final int ENGINEERING_OBJECT__TIMESTAMP = 3;
    public static final int ENGINEERING_OBJECT__SHORT_LABEL = 4;
    public static final int ENGINEERING_OBJECT__CATEGORY = 5;
    public static final int ENGINEERING_OBJECT__REVISION_LABELS = 6;
    public static final int ENGINEERING_OBJECT__DOMAIN = 7;
    public static final int ENGINEERING_OBJECT_FEATURE_COUNT = 8;
    public static final int AUTOSAR_ENGINEERING_OBJECT = 1;
    public static final int AUTOSAR_ENGINEERING_OBJECT__GCHECKSUM = 0;
    public static final int AUTOSAR_ENGINEERING_OBJECT__GTIMESTAMP = 1;
    public static final int AUTOSAR_ENGINEERING_OBJECT__CHECKSUM = 2;
    public static final int AUTOSAR_ENGINEERING_OBJECT__TIMESTAMP = 3;
    public static final int AUTOSAR_ENGINEERING_OBJECT__SHORT_LABEL = 4;
    public static final int AUTOSAR_ENGINEERING_OBJECT__CATEGORY = 5;
    public static final int AUTOSAR_ENGINEERING_OBJECT__REVISION_LABELS = 6;
    public static final int AUTOSAR_ENGINEERING_OBJECT__DOMAIN = 7;
    public static final int AUTOSAR_ENGINEERING_OBJECT_FEATURE_COUNT = 8;

    public EClass getEngineeringObject();

    public EAttribute getEngineeringObject_ShortLabel();

    public EAttribute getEngineeringObject_Category();

    public EAttribute getEngineeringObject_RevisionLabels();

    public EAttribute getEngineeringObject_Domain();

    public EClass getAutosarEngineeringObject();

    public EngineeringobjectFactory getEngineeringobjectFactory();

    public static interface Literals {
        public static final EClass ENGINEERING_OBJECT = eINSTANCE.getEngineeringObject();
        public static final EAttribute ENGINEERING_OBJECT__SHORT_LABEL = eINSTANCE.getEngineeringObject_ShortLabel();
        public static final EAttribute ENGINEERING_OBJECT__CATEGORY = eINSTANCE.getEngineeringObject_Category();
        public static final EAttribute ENGINEERING_OBJECT__REVISION_LABELS = eINSTANCE.getEngineeringObject_RevisionLabels();
        public static final EAttribute ENGINEERING_OBJECT__DOMAIN = eINSTANCE.getEngineeringObject_Domain();
        public static final EClass AUTOSAR_ENGINEERING_OBJECT = eINSTANCE.getAutosarEngineeringObject();
    }
}

