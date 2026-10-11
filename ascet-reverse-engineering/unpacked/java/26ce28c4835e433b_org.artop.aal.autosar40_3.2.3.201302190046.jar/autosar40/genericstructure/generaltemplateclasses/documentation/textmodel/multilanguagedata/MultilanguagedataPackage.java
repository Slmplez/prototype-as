/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.impl.MultilanguagedataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MultilanguagedataPackage
extends EPackage {
    public static final String eNAME = "multilanguagedata";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/md";
    public static final String eNS_PREFIX = "";
    public static final MultilanguagedataPackage eINSTANCE = MultilanguagedataPackageImpl.init();
    public static final int MULTILANGUAGE_LONG_NAME = 0;
    public static final int MULTILANGUAGE_LONG_NAME__GCHECKSUM = 0;
    public static final int MULTILANGUAGE_LONG_NAME__GTIMESTAMP = 1;
    public static final int MULTILANGUAGE_LONG_NAME__CHECKSUM = 2;
    public static final int MULTILANGUAGE_LONG_NAME__TIMESTAMP = 3;
    public static final int MULTILANGUAGE_LONG_NAME__L4S = 4;
    public static final int MULTILANGUAGE_LONG_NAME_FEATURE_COUNT = 5;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH = 1;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__GCHECKSUM = 0;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__GTIMESTAMP = 1;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__CHECKSUM = 2;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__TIMESTAMP = 3;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__GL_2S = 4;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__L2S = 5;
    public static final int MULTI_LANGUAGE_OVERVIEW_PARAGRAPH_FEATURE_COUNT = 6;
    public static final int MULTI_LANGUAGE_PARAGRAPH = 2;
    public static final int MULTI_LANGUAGE_PARAGRAPH__GCHECKSUM = 0;
    public static final int MULTI_LANGUAGE_PARAGRAPH__GTIMESTAMP = 1;
    public static final int MULTI_LANGUAGE_PARAGRAPH__CHECKSUM = 2;
    public static final int MULTI_LANGUAGE_PARAGRAPH__TIMESTAMP = 3;
    public static final int MULTI_LANGUAGE_PARAGRAPH__SI = 4;
    public static final int MULTI_LANGUAGE_PARAGRAPH__VIEW = 5;
    public static final int MULTI_LANGUAGE_PARAGRAPH__BREAK = 6;
    public static final int MULTI_LANGUAGE_PARAGRAPH__KEEP_WITH_PREVIOUS = 7;
    public static final int MULTI_LANGUAGE_PARAGRAPH__GL_1S = 8;
    public static final int MULTI_LANGUAGE_PARAGRAPH__DOCUMENTATION_BLOCK = 9;
    public static final int MULTI_LANGUAGE_PARAGRAPH__HELP_ENTRY = 10;
    public static final int MULTI_LANGUAGE_PARAGRAPH__L1S = 11;
    public static final int MULTI_LANGUAGE_PARAGRAPH__VARIATION_POINT = 12;
    public static final int MULTI_LANGUAGE_PARAGRAPH_FEATURE_COUNT = 13;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT = 3;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT__GCHECKSUM = 0;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT__GTIMESTAMP = 1;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT__CHECKSUM = 2;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT__TIMESTAMP = 3;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT__L10S = 4;
    public static final int MULTI_LANGUAGE_PLAIN_TEXT_FEATURE_COUNT = 5;
    public static final int MULTI_LANGUAGE_VERBATIM = 4;
    public static final int MULTI_LANGUAGE_VERBATIM__GCHECKSUM = 0;
    public static final int MULTI_LANGUAGE_VERBATIM__GTIMESTAMP = 1;
    public static final int MULTI_LANGUAGE_VERBATIM__CHECKSUM = 2;
    public static final int MULTI_LANGUAGE_VERBATIM__TIMESTAMP = 3;
    public static final int MULTI_LANGUAGE_VERBATIM__SI = 4;
    public static final int MULTI_LANGUAGE_VERBATIM__VIEW = 5;
    public static final int MULTI_LANGUAGE_VERBATIM__BREAK = 6;
    public static final int MULTI_LANGUAGE_VERBATIM__KEEP_WITH_PREVIOUS = 7;
    public static final int MULTI_LANGUAGE_VERBATIM__ALLOW_BREAK = 8;
    public static final int MULTI_LANGUAGE_VERBATIM__FLOAT = 9;
    public static final int MULTI_LANGUAGE_VERBATIM__HELP_ENTRY = 10;
    public static final int MULTI_LANGUAGE_VERBATIM__PGWIDE = 11;
    public static final int MULTI_LANGUAGE_VERBATIM__L5S = 12;
    public static final int MULTI_LANGUAGE_VERBATIM__VARIATION_POINT = 13;
    public static final int MULTI_LANGUAGE_VERBATIM_FEATURE_COUNT = 14;

    public EClass getMultilanguageLongName();

    public EReference getMultilanguageLongName_L4s();

    public EClass getMultiLanguageOverviewParagraph();

    public EReference getMultiLanguageOverviewParagraph_L2s();

    public EClass getMultiLanguageParagraph();

    public EReference getMultiLanguageParagraph_DocumentationBlock();

    public EAttribute getMultiLanguageParagraph_HelpEntry();

    public EReference getMultiLanguageParagraph_L1s();

    public EReference getMultiLanguageParagraph_VariationPoint();

    public EClass getMultiLanguagePlainText();

    public EReference getMultiLanguagePlainText_L10s();

    public EClass getMultiLanguageVerbatim();

    public EAttribute getMultiLanguageVerbatim_AllowBreak();

    public EAttribute getMultiLanguageVerbatim_Float();

    public EAttribute getMultiLanguageVerbatim_HelpEntry();

    public EAttribute getMultiLanguageVerbatim_Pgwide();

    public EReference getMultiLanguageVerbatim_L5s();

    public EReference getMultiLanguageVerbatim_VariationPoint();

    public MultilanguagedataFactory getMultilanguagedataFactory();

    public static interface Literals {
        public static final EClass MULTILANGUAGE_LONG_NAME = eINSTANCE.getMultilanguageLongName();
        public static final EReference MULTILANGUAGE_LONG_NAME__L4S = eINSTANCE.getMultilanguageLongName_L4s();
        public static final EClass MULTI_LANGUAGE_OVERVIEW_PARAGRAPH = eINSTANCE.getMultiLanguageOverviewParagraph();
        public static final EReference MULTI_LANGUAGE_OVERVIEW_PARAGRAPH__L2S = eINSTANCE.getMultiLanguageOverviewParagraph_L2s();
        public static final EClass MULTI_LANGUAGE_PARAGRAPH = eINSTANCE.getMultiLanguageParagraph();
        public static final EReference MULTI_LANGUAGE_PARAGRAPH__DOCUMENTATION_BLOCK = eINSTANCE.getMultiLanguageParagraph_DocumentationBlock();
        public static final EAttribute MULTI_LANGUAGE_PARAGRAPH__HELP_ENTRY = eINSTANCE.getMultiLanguageParagraph_HelpEntry();
        public static final EReference MULTI_LANGUAGE_PARAGRAPH__L1S = eINSTANCE.getMultiLanguageParagraph_L1s();
        public static final EReference MULTI_LANGUAGE_PARAGRAPH__VARIATION_POINT = eINSTANCE.getMultiLanguageParagraph_VariationPoint();
        public static final EClass MULTI_LANGUAGE_PLAIN_TEXT = eINSTANCE.getMultiLanguagePlainText();
        public static final EReference MULTI_LANGUAGE_PLAIN_TEXT__L10S = eINSTANCE.getMultiLanguagePlainText_L10s();
        public static final EClass MULTI_LANGUAGE_VERBATIM = eINSTANCE.getMultiLanguageVerbatim();
        public static final EAttribute MULTI_LANGUAGE_VERBATIM__ALLOW_BREAK = eINSTANCE.getMultiLanguageVerbatim_AllowBreak();
        public static final EAttribute MULTI_LANGUAGE_VERBATIM__FLOAT = eINSTANCE.getMultiLanguageVerbatim_Float();
        public static final EAttribute MULTI_LANGUAGE_VERBATIM__HELP_ENTRY = eINSTANCE.getMultiLanguageVerbatim_HelpEntry();
        public static final EAttribute MULTI_LANGUAGE_VERBATIM__PGWIDE = eINSTANCE.getMultiLanguageVerbatim_Pgwide();
        public static final EReference MULTI_LANGUAGE_VERBATIM__L5S = eINSTANCE.getMultiLanguageVerbatim_L5s();
        public static final EReference MULTI_LANGUAGE_VERBATIM__VARIATION_POINT = eINSTANCE.getMultiLanguageVerbatim_VariationPoint();
    }
}

