/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.softwarecomponentdocumentation;

import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationFactory;
import autosar40.swcomponent.softwarecomponentdocumentation.impl.SoftwarecomponentdocumentationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SoftwarecomponentdocumentationPackage
extends EPackage {
    public static final String eNAME = "softwarecomponentdocumentation";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/scd";
    public static final String eNS_PREFIX = "";
    public static final SoftwarecomponentdocumentationPackage eINSTANCE = SoftwarecomponentdocumentationPackageImpl.init();
    public static final int SW_COMPONENT_DOCUMENTATION = 0;
    public static final int SW_COMPONENT_DOCUMENTATION__GCHECKSUM = 0;
    public static final int SW_COMPONENT_DOCUMENTATION__GTIMESTAMP = 1;
    public static final int SW_COMPONENT_DOCUMENTATION__CHECKSUM = 2;
    public static final int SW_COMPONENT_DOCUMENTATION__TIMESTAMP = 3;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_FEATURE_DEF = 4;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_FEATURE_DESC = 5;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_TEST_DESC = 6;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_CALIBRATION_NOTES = 7;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_MAINTENANCE_NOTES = 8;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_DIAGNOSTICS_NOTES = 9;
    public static final int SW_COMPONENT_DOCUMENTATION__SW_CARB_DOC = 10;
    public static final int SW_COMPONENT_DOCUMENTATION__CHAPTERS = 11;
    public static final int SW_COMPONENT_DOCUMENTATION__VARIATION_POINT = 12;
    public static final int SW_COMPONENT_DOCUMENTATION_FEATURE_COUNT = 13;

    public EClass getSwComponentDocumentation();

    public EReference getSwComponentDocumentation_SwFeatureDef();

    public EReference getSwComponentDocumentation_SwFeatureDesc();

    public EReference getSwComponentDocumentation_SwTestDesc();

    public EReference getSwComponentDocumentation_SwCalibrationNotes();

    public EReference getSwComponentDocumentation_SwMaintenanceNotes();

    public EReference getSwComponentDocumentation_SwDiagnosticsNotes();

    public EReference getSwComponentDocumentation_SwCarbDoc();

    public EReference getSwComponentDocumentation_Chapters();

    public EReference getSwComponentDocumentation_VariationPoint();

    public SoftwarecomponentdocumentationFactory getSoftwarecomponentdocumentationFactory();

    public static interface Literals {
        public static final EClass SW_COMPONENT_DOCUMENTATION = eINSTANCE.getSwComponentDocumentation();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_FEATURE_DEF = eINSTANCE.getSwComponentDocumentation_SwFeatureDef();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_FEATURE_DESC = eINSTANCE.getSwComponentDocumentation_SwFeatureDesc();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_TEST_DESC = eINSTANCE.getSwComponentDocumentation_SwTestDesc();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_CALIBRATION_NOTES = eINSTANCE.getSwComponentDocumentation_SwCalibrationNotes();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_MAINTENANCE_NOTES = eINSTANCE.getSwComponentDocumentation_SwMaintenanceNotes();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_DIAGNOSTICS_NOTES = eINSTANCE.getSwComponentDocumentation_SwDiagnosticsNotes();
        public static final EReference SW_COMPONENT_DOCUMENTATION__SW_CARB_DOC = eINSTANCE.getSwComponentDocumentation_SwCarbDoc();
        public static final EReference SW_COMPONENT_DOCUMENTATION__CHAPTERS = eINSTANCE.getSwComponentDocumentation_Chapters();
        public static final EReference SW_COMPONENT_DOCUMENTATION__VARIATION_POINT = eINSTANCE.getSwComponentDocumentation_VariationPoint();
    }
}

