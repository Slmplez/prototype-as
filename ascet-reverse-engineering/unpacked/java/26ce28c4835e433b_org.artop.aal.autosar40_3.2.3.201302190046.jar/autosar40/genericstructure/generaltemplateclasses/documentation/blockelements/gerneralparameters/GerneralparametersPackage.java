/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.GerneralparametersPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GerneralparametersPackage
extends EPackage {
    public static final String eNAME = "gerneralparameters";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp";
    public static final String eNS_PREFIX = "";
    public static final GerneralparametersPackage eINSTANCE = GerneralparametersPackageImpl.init();
    public static final int GENERAL_PARAMETER = 0;
    public static final int GENERAL_PARAMETER__GCHECKSUM = 0;
    public static final int GENERAL_PARAMETER__GTIMESTAMP = 1;
    public static final int GENERAL_PARAMETER__CHECKSUM = 2;
    public static final int GENERAL_PARAMETER__TIMESTAMP = 3;
    public static final int GENERAL_PARAMETER__GSHORT_NAME = 4;
    public static final int GENERAL_PARAMETER__SHORT_NAME = 5;
    public static final int GENERAL_PARAMETER__LONG_NAME = 6;
    public static final int GENERAL_PARAMETER__GUUID = 7;
    public static final int GENERAL_PARAMETER__GCATEGORY = 8;
    public static final int GENERAL_PARAMETER__GDESC = 9;
    public static final int GENERAL_PARAMETER__DESC = 10;
    public static final int GENERAL_PARAMETER__CATEGORY = 11;
    public static final int GENERAL_PARAMETER__ADMIN_DATA = 12;
    public static final int GENERAL_PARAMETER__INTRODUCTION = 13;
    public static final int GENERAL_PARAMETER__ANNOTATIONS = 14;
    public static final int GENERAL_PARAMETER__UUID = 15;
    public static final int GENERAL_PARAMETER__ALL_EXTENSIONS = 16;
    public static final int GENERAL_PARAMETER__CONTAINED_EXTENSIONS = 17;
    public static final int GENERAL_PARAMETER__PRMS = 18;
    public static final int GENERAL_PARAMETER__PRM_CHARS = 19;
    public static final int GENERAL_PARAMETER_FEATURE_COUNT = 20;
    public static final int PRM_CHAR = 1;
    public static final int PRM_CHAR__GCHECKSUM = 0;
    public static final int PRM_CHAR__GTIMESTAMP = 1;
    public static final int PRM_CHAR__CHECKSUM = 2;
    public static final int PRM_CHAR__TIMESTAMP = 3;
    public static final int PRM_CHAR__GENERAL_PARAMETER = 4;
    public static final int PRM_CHAR__COND = 5;
    public static final int PRM_CHAR__PRM_CHAR_CONTENTS = 6;
    public static final int PRM_CHAR__REMARK = 7;
    public static final int PRM_CHAR_FEATURE_COUNT = 8;
    public static final int PRM_CHAR_CONTENTS = 2;
    public static final int PRM_CHAR_CONTENTS__GCHECKSUM = 0;
    public static final int PRM_CHAR_CONTENTS__GTIMESTAMP = 1;
    public static final int PRM_CHAR_CONTENTS__CHECKSUM = 2;
    public static final int PRM_CHAR_CONTENTS__TIMESTAMP = 3;
    public static final int PRM_CHAR_CONTENTS__PRM_CHAR = 4;
    public static final int PRM_CHAR_CONTENTS_FEATURE_COUNT = 5;
    public static final int PRM_CHAR_NUMERICAL_VALUE = 4;
    public static final int PRM_CHAR_NUMERICAL_VALUE__GCHECKSUM = 0;
    public static final int PRM_CHAR_NUMERICAL_VALUE__GTIMESTAMP = 1;
    public static final int PRM_CHAR_NUMERICAL_VALUE__CHECKSUM = 2;
    public static final int PRM_CHAR_NUMERICAL_VALUE__TIMESTAMP = 3;
    public static final int PRM_CHAR_NUMERICAL_VALUE__PRM_CHAR_NUMERICAL_CONTENTS = 4;
    public static final int PRM_CHAR_NUMERICAL_VALUE_FEATURE_COUNT = 5;
    public static final int PRM_CHAR_ABS_TOL = 3;
    public static final int PRM_CHAR_ABS_TOL__GCHECKSUM = 0;
    public static final int PRM_CHAR_ABS_TOL__GTIMESTAMP = 1;
    public static final int PRM_CHAR_ABS_TOL__CHECKSUM = 2;
    public static final int PRM_CHAR_ABS_TOL__TIMESTAMP = 3;
    public static final int PRM_CHAR_ABS_TOL__PRM_CHAR_NUMERICAL_CONTENTS = 4;
    public static final int PRM_CHAR_ABS_TOL__ABS = 5;
    public static final int PRM_CHAR_ABS_TOL__TOL = 6;
    public static final int PRM_CHAR_ABS_TOL_FEATURE_COUNT = 7;
    public static final int PRM_CHAR_MIN_TYP_MAX = 5;
    public static final int PRM_CHAR_MIN_TYP_MAX__GCHECKSUM = 0;
    public static final int PRM_CHAR_MIN_TYP_MAX__GTIMESTAMP = 1;
    public static final int PRM_CHAR_MIN_TYP_MAX__CHECKSUM = 2;
    public static final int PRM_CHAR_MIN_TYP_MAX__TIMESTAMP = 3;
    public static final int PRM_CHAR_MIN_TYP_MAX__PRM_CHAR_NUMERICAL_CONTENTS = 4;
    public static final int PRM_CHAR_MIN_TYP_MAX__MIN = 5;
    public static final int PRM_CHAR_MIN_TYP_MAX__TYP = 6;
    public static final int PRM_CHAR_MIN_TYP_MAX__MAX = 7;
    public static final int PRM_CHAR_MIN_TYP_MAX_FEATURE_COUNT = 8;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS = 6;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__GCHECKSUM = 0;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__GTIMESTAMP = 1;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__CHECKSUM = 2;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__TIMESTAMP = 3;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__PRM_CHAR = 4;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__PRM_CHAR_NUMERICAL_VALUE_TYPE = 5;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS__PRM_UNIT = 6;
    public static final int PRM_CHAR_NUMERICAL_CONTENTS_FEATURE_COUNT = 7;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS = 7;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__GCHECKSUM = 0;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__GTIMESTAMP = 1;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__CHECKSUM = 2;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__TIMESTAMP = 3;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__PRM_CHAR = 4;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS__TEXT = 5;
    public static final int PRM_CHAR_TEXTUAL_CONTENTS_FEATURE_COUNT = 6;
    public static final int PRMS = 8;
    public static final int PRMS__GCHECKSUM = 0;
    public static final int PRMS__GTIMESTAMP = 1;
    public static final int PRMS__CHECKSUM = 2;
    public static final int PRMS__TIMESTAMP = 3;
    public static final int PRMS__SI = 4;
    public static final int PRMS__VIEW = 5;
    public static final int PRMS__BREAK = 6;
    public static final int PRMS__KEEP_WITH_PREVIOUS = 7;
    public static final int PRMS__CHAPTER_CONTENT = 8;
    public static final int PRMS__LABEL = 9;
    public static final int PRMS__PRMS = 10;
    public static final int PRMS_FEATURE_COUNT = 11;

    public EClass getGeneralParameter();

    public EReference getGeneralParameter_Prms();

    public EReference getGeneralParameter_PrmChars();

    public EClass getPrmChar();

    public EReference getPrmChar_GeneralParameter();

    public EReference getPrmChar_Cond();

    public EReference getPrmChar_PrmCharContents();

    public EReference getPrmChar_Remark();

    public EClass getPrmCharContents();

    public EReference getPrmCharContents_PrmChar();

    public EClass getPrmCharAbsTol();

    public EAttribute getPrmCharAbsTol_Abs();

    public EAttribute getPrmCharAbsTol_Tol();

    public EClass getPrmCharNumericalValue();

    public EReference getPrmCharNumericalValue_PrmCharNumericalContents();

    public EClass getPrmCharMinTypMax();

    public EAttribute getPrmCharMinTypMax_Min();

    public EAttribute getPrmCharMinTypMax_Typ();

    public EAttribute getPrmCharMinTypMax_Max();

    public EClass getPrmCharNumericalContents();

    public EReference getPrmCharNumericalContents_PrmCharNumericalValueType();

    public EReference getPrmCharNumericalContents_PrmUnit();

    public EClass getPrmCharTextualContents();

    public EAttribute getPrmCharTextualContents_Text();

    public EClass getPrms();

    public EReference getPrms_ChapterContent();

    public EReference getPrms_Label();

    public EReference getPrms_Prms();

    public GerneralparametersFactory getGerneralparametersFactory();

    public static interface Literals {
        public static final EClass GENERAL_PARAMETER = eINSTANCE.getGeneralParameter();
        public static final EReference GENERAL_PARAMETER__PRMS = eINSTANCE.getGeneralParameter_Prms();
        public static final EReference GENERAL_PARAMETER__PRM_CHARS = eINSTANCE.getGeneralParameter_PrmChars();
        public static final EClass PRM_CHAR = eINSTANCE.getPrmChar();
        public static final EReference PRM_CHAR__GENERAL_PARAMETER = eINSTANCE.getPrmChar_GeneralParameter();
        public static final EReference PRM_CHAR__COND = eINSTANCE.getPrmChar_Cond();
        public static final EReference PRM_CHAR__PRM_CHAR_CONTENTS = eINSTANCE.getPrmChar_PrmCharContents();
        public static final EReference PRM_CHAR__REMARK = eINSTANCE.getPrmChar_Remark();
        public static final EClass PRM_CHAR_CONTENTS = eINSTANCE.getPrmCharContents();
        public static final EReference PRM_CHAR_CONTENTS__PRM_CHAR = eINSTANCE.getPrmCharContents_PrmChar();
        public static final EClass PRM_CHAR_ABS_TOL = eINSTANCE.getPrmCharAbsTol();
        public static final EAttribute PRM_CHAR_ABS_TOL__ABS = eINSTANCE.getPrmCharAbsTol_Abs();
        public static final EAttribute PRM_CHAR_ABS_TOL__TOL = eINSTANCE.getPrmCharAbsTol_Tol();
        public static final EClass PRM_CHAR_NUMERICAL_VALUE = eINSTANCE.getPrmCharNumericalValue();
        public static final EReference PRM_CHAR_NUMERICAL_VALUE__PRM_CHAR_NUMERICAL_CONTENTS = eINSTANCE.getPrmCharNumericalValue_PrmCharNumericalContents();
        public static final EClass PRM_CHAR_MIN_TYP_MAX = eINSTANCE.getPrmCharMinTypMax();
        public static final EAttribute PRM_CHAR_MIN_TYP_MAX__MIN = eINSTANCE.getPrmCharMinTypMax_Min();
        public static final EAttribute PRM_CHAR_MIN_TYP_MAX__TYP = eINSTANCE.getPrmCharMinTypMax_Typ();
        public static final EAttribute PRM_CHAR_MIN_TYP_MAX__MAX = eINSTANCE.getPrmCharMinTypMax_Max();
        public static final EClass PRM_CHAR_NUMERICAL_CONTENTS = eINSTANCE.getPrmCharNumericalContents();
        public static final EReference PRM_CHAR_NUMERICAL_CONTENTS__PRM_CHAR_NUMERICAL_VALUE_TYPE = eINSTANCE.getPrmCharNumericalContents_PrmCharNumericalValueType();
        public static final EReference PRM_CHAR_NUMERICAL_CONTENTS__PRM_UNIT = eINSTANCE.getPrmCharNumericalContents_PrmUnit();
        public static final EClass PRM_CHAR_TEXTUAL_CONTENTS = eINSTANCE.getPrmCharTextualContents();
        public static final EAttribute PRM_CHAR_TEXTUAL_CONTENTS__TEXT = eINSTANCE.getPrmCharTextualContents_Text();
        public static final EClass PRMS = eINSTANCE.getPrms();
        public static final EReference PRMS__CHAPTER_CONTENT = eINSTANCE.getPrms_ChapterContent();
        public static final EReference PRMS__LABEL = eINSTANCE.getPrms_Label();
        public static final EReference PRMS__PRMS = eINSTANCE.getPrms_Prms();
    }
}

