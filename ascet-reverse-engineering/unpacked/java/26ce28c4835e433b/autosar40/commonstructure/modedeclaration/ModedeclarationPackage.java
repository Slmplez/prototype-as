/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.modedeclaration;

import autosar40.commonstructure.modedeclaration.ModedeclarationFactory;
import autosar40.commonstructure.modedeclaration.impl.ModedeclarationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ModedeclarationPackage
extends EPackage {
    public static final String eNAME = "modedeclaration";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/md";
    public static final String eNS_PREFIX = "";
    public static final ModedeclarationPackage eINSTANCE = ModedeclarationPackageImpl.init();
    public static final int MODE_DECLARATION = 0;
    public static final int MODE_DECLARATION__GCHECKSUM = 0;
    public static final int MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION__CHECKSUM = 2;
    public static final int MODE_DECLARATION__TIMESTAMP = 3;
    public static final int MODE_DECLARATION__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION__SHORT_NAME = 5;
    public static final int MODE_DECLARATION__LONG_NAME = 6;
    public static final int MODE_DECLARATION__GUUID = 7;
    public static final int MODE_DECLARATION__GCATEGORY = 8;
    public static final int MODE_DECLARATION__GDESC = 9;
    public static final int MODE_DECLARATION__DESC = 10;
    public static final int MODE_DECLARATION__CATEGORY = 11;
    public static final int MODE_DECLARATION__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION__INTRODUCTION = 13;
    public static final int MODE_DECLARATION__ANNOTATIONS = 14;
    public static final int MODE_DECLARATION__UUID = 15;
    public static final int MODE_DECLARATION__ALL_EXTENSIONS = 16;
    public static final int MODE_DECLARATION__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_DECLARATION__ATP_CLASSIFIER = 18;
    public static final int MODE_DECLARATION__MODE_DECLARATION_GROUP = 19;
    public static final int MODE_DECLARATION__VALUE = 20;
    public static final int MODE_DECLARATION_FEATURE_COUNT = 21;
    public static final int MODE_DECLARATION_GROUP = 1;
    public static final int MODE_DECLARATION_GROUP__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION_GROUP__SHORT_NAME = 5;
    public static final int MODE_DECLARATION_GROUP__LONG_NAME = 6;
    public static final int MODE_DECLARATION_GROUP__GUUID = 7;
    public static final int MODE_DECLARATION_GROUP__GCATEGORY = 8;
    public static final int MODE_DECLARATION_GROUP__GDESC = 9;
    public static final int MODE_DECLARATION_GROUP__DESC = 10;
    public static final int MODE_DECLARATION_GROUP__CATEGORY = 11;
    public static final int MODE_DECLARATION_GROUP__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION_GROUP__INTRODUCTION = 13;
    public static final int MODE_DECLARATION_GROUP__ANNOTATIONS = 14;
    public static final int MODE_DECLARATION_GROUP__UUID = 15;
    public static final int MODE_DECLARATION_GROUP__ALL_EXTENSIONS = 16;
    public static final int MODE_DECLARATION_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_DECLARATION_GROUP__GAR_PACKAGE = 18;
    public static final int MODE_DECLARATION_GROUP__AR_PACKAGE = 19;
    public static final int MODE_DECLARATION_GROUP__VARIATION_POINT = 20;
    public static final int MODE_DECLARATION_GROUP__SHORT_NAME_PATTERN = 21;
    public static final int MODE_DECLARATION_GROUP__GMODE_DECLARATIONS = 22;
    public static final int MODE_DECLARATION_GROUP__GINITIAL_MODE = 23;
    public static final int MODE_DECLARATION_GROUP__INITIAL_MODE = 24;
    public static final int MODE_DECLARATION_GROUP__MODE_DECLARATIONS = 25;
    public static final int MODE_DECLARATION_GROUP__ON_TRANSITION_VALUE = 26;
    public static final int MODE_DECLARATION_GROUP_FEATURE_COUNT = 27;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE = 2;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__SHORT_NAME = 5;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__LONG_NAME = 6;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GUUID = 7;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GCATEGORY = 8;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GDESC = 9;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__DESC = 10;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CATEGORY = 11;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__INTRODUCTION = 13;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ANNOTATIONS = 14;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__UUID = 15;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ALL_EXTENSIONS = 16;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__ATP_CLASSIFIER = 18;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__GTYPE = 19;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__SW_CALIBRATION_ACCESS = 20;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__TYPE = 21;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE__VARIATION_POINT = 22;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_FEATURE_COUNT = 23;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING = 3;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__MODE_INTERFACE_MAPPING = 4;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__FIRST_MODE_GROUP = 5;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__SECOND_MODE_GROUP = 6;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING_FEATURE_COUNT = 7;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL = 4;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__MODE_DECLARATION_GROUP_PROTOTYPE = 4;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__VARIATION_POINT = 5;
    public static final int MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL_FEATURE_COUNT = 6;
    public static final int MODE_REQUEST_TYPE_MAP = 5;
    public static final int MODE_REQUEST_TYPE_MAP__GCHECKSUM = 0;
    public static final int MODE_REQUEST_TYPE_MAP__GTIMESTAMP = 1;
    public static final int MODE_REQUEST_TYPE_MAP__CHECKSUM = 2;
    public static final int MODE_REQUEST_TYPE_MAP__TIMESTAMP = 3;
    public static final int MODE_REQUEST_TYPE_MAP__DATA_TYPE_MAPPING_SET = 4;
    public static final int MODE_REQUEST_TYPE_MAP__IMPLEMENTATION_DATA_TYPE = 5;
    public static final int MODE_REQUEST_TYPE_MAP__MODE_GROUP = 6;
    public static final int MODE_REQUEST_TYPE_MAP_FEATURE_COUNT = 7;
    public static final int MODE_ACTIVATION_KIND = 6;

    public EClass getModeDeclaration();

    public EReference getModeDeclaration_ModeDeclarationGroup();

    public EAttribute getModeDeclaration_Value();

    public EClass getModeDeclarationGroup();

    public EReference getModeDeclarationGroup_InitialMode();

    public EReference getModeDeclarationGroup_ModeDeclarations();

    public EAttribute getModeDeclarationGroup_OnTransitionValue();

    public EClass getModeDeclarationGroupPrototype();

    public EAttribute getModeDeclarationGroupPrototype_SwCalibrationAccess();

    public EReference getModeDeclarationGroupPrototype_Type();

    public EReference getModeDeclarationGroupPrototype_VariationPoint();

    public EClass getModeDeclarationGroupPrototypeMapping();

    public EReference getModeDeclarationGroupPrototypeMapping_ModeInterfaceMapping();

    public EReference getModeDeclarationGroupPrototypeMapping_FirstModeGroup();

    public EReference getModeDeclarationGroupPrototypeMapping_SecondModeGroup();

    public EClass getModeDeclarationGroupPrototypeRefConditional();

    public EReference getModeDeclarationGroupPrototypeRefConditional_ModeDeclarationGroupPrototype();

    public EReference getModeDeclarationGroupPrototypeRefConditional_VariationPoint();

    public EClass getModeRequestTypeMap();

    public EReference getModeRequestTypeMap_DataTypeMappingSet();

    public EReference getModeRequestTypeMap_ImplementationDataType();

    public EReference getModeRequestTypeMap_ModeGroup();

    public EEnum getModeActivationKind();

    public ModedeclarationFactory getModedeclarationFactory();

    public static interface Literals {
        public static final EClass MODE_DECLARATION = eINSTANCE.getModeDeclaration();
        public static final EReference MODE_DECLARATION__MODE_DECLARATION_GROUP = eINSTANCE.getModeDeclaration_ModeDeclarationGroup();
        public static final EAttribute MODE_DECLARATION__VALUE = eINSTANCE.getModeDeclaration_Value();
        public static final EClass MODE_DECLARATION_GROUP = eINSTANCE.getModeDeclarationGroup();
        public static final EReference MODE_DECLARATION_GROUP__INITIAL_MODE = eINSTANCE.getModeDeclarationGroup_InitialMode();
        public static final EReference MODE_DECLARATION_GROUP__MODE_DECLARATIONS = eINSTANCE.getModeDeclarationGroup_ModeDeclarations();
        public static final EAttribute MODE_DECLARATION_GROUP__ON_TRANSITION_VALUE = eINSTANCE.getModeDeclarationGroup_OnTransitionValue();
        public static final EClass MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeDeclarationGroupPrototype();
        public static final EAttribute MODE_DECLARATION_GROUP_PROTOTYPE__SW_CALIBRATION_ACCESS = eINSTANCE.getModeDeclarationGroupPrototype_SwCalibrationAccess();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE__TYPE = eINSTANCE.getModeDeclarationGroupPrototype_Type();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE__VARIATION_POINT = eINSTANCE.getModeDeclarationGroupPrototype_VariationPoint();
        public static final EClass MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING = eINSTANCE.getModeDeclarationGroupPrototypeMapping();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__MODE_INTERFACE_MAPPING = eINSTANCE.getModeDeclarationGroupPrototypeMapping_ModeInterfaceMapping();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__FIRST_MODE_GROUP = eINSTANCE.getModeDeclarationGroupPrototypeMapping_FirstModeGroup();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE_MAPPING__SECOND_MODE_GROUP = eINSTANCE.getModeDeclarationGroupPrototypeMapping_SecondModeGroup();
        public static final EClass MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL = eINSTANCE.getModeDeclarationGroupPrototypeRefConditional();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeDeclarationGroupPrototypeRefConditional_ModeDeclarationGroupPrototype();
        public static final EReference MODE_DECLARATION_GROUP_PROTOTYPE_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getModeDeclarationGroupPrototypeRefConditional_VariationPoint();
        public static final EClass MODE_REQUEST_TYPE_MAP = eINSTANCE.getModeRequestTypeMap();
        public static final EReference MODE_REQUEST_TYPE_MAP__DATA_TYPE_MAPPING_SET = eINSTANCE.getModeRequestTypeMap_DataTypeMappingSet();
        public static final EReference MODE_REQUEST_TYPE_MAP__IMPLEMENTATION_DATA_TYPE = eINSTANCE.getModeRequestTypeMap_ImplementationDataType();
        public static final EReference MODE_REQUEST_TYPE_MAP__MODE_GROUP = eINSTANCE.getModeRequestTypeMap_ModeGroup();
        public static final EEnum MODE_ACTIVATION_KIND = eINSTANCE.getModeActivationKind();
    }
}

