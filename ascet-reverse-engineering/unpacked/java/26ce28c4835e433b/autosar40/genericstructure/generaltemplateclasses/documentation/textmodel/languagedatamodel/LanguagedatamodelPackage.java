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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LanguagedatamodelPackage
extends EPackage {
    public static final String eNAME = "languagedatamodel";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ldm";
    public static final String eNS_PREFIX = "";
    public static final LanguagedatamodelPackage eINSTANCE = LanguagedatamodelPackageImpl.init();
    public static final int LANGUAGE_SPECIFIC = 1;
    public static final int LANGUAGE_SPECIFIC__GCHECKSUM = 0;
    public static final int LANGUAGE_SPECIFIC__GTIMESTAMP = 1;
    public static final int LANGUAGE_SPECIFIC__CHECKSUM = 2;
    public static final int LANGUAGE_SPECIFIC__TIMESTAMP = 3;
    public static final int LANGUAGE_SPECIFIC__L = 4;
    public static final int LANGUAGE_SPECIFIC_FEATURE_COUNT = 5;
    public static final int LLONG_NAME = 0;
    public static final int LLONG_NAME__GCHECKSUM = 0;
    public static final int LLONG_NAME__GTIMESTAMP = 1;
    public static final int LLONG_NAME__CHECKSUM = 2;
    public static final int LLONG_NAME__TIMESTAMP = 3;
    public static final int LLONG_NAME__L = 4;
    public static final int LLONG_NAME__MIXED = 5;
    public static final int LLONG_NAME__TTS = 6;
    public static final int LLONG_NAME__ES = 7;
    public static final int LLONG_NAME__SUPS = 8;
    public static final int LLONG_NAME__SUBS = 9;
    public static final int LLONG_NAME__IES = 10;
    public static final int LLONG_NAME__MULTILANGUAGE_LONG_NAME = 11;
    public static final int LLONG_NAME_FEATURE_COUNT = 12;
    public static final int LOVERVIEW_PARAGRAPH = 2;
    public static final int LOVERVIEW_PARAGRAPH__GCHECKSUM = 0;
    public static final int LOVERVIEW_PARAGRAPH__GTIMESTAMP = 1;
    public static final int LOVERVIEW_PARAGRAPH__CHECKSUM = 2;
    public static final int LOVERVIEW_PARAGRAPH__TIMESTAMP = 3;
    public static final int LOVERVIEW_PARAGRAPH__L = 4;
    public static final int LOVERVIEW_PARAGRAPH__MIXED = 5;
    public static final int LOVERVIEW_PARAGRAPH__BRS = 6;
    public static final int LOVERVIEW_PARAGRAPH__TTS = 7;
    public static final int LOVERVIEW_PARAGRAPH__XREFS = 8;
    public static final int LOVERVIEW_PARAGRAPH__XREF_TARGETS = 9;
    public static final int LOVERVIEW_PARAGRAPH__ES = 10;
    public static final int LOVERVIEW_PARAGRAPH__FTS = 11;
    public static final int LOVERVIEW_PARAGRAPH__SUPS = 12;
    public static final int LOVERVIEW_PARAGRAPH__SUBS = 13;
    public static final int LOVERVIEW_PARAGRAPH__IES = 14;
    public static final int LOVERVIEW_PARAGRAPH_FEATURE_COUNT = 15;
    public static final int LPARAGRAPH = 3;
    public static final int LPARAGRAPH__GCHECKSUM = 0;
    public static final int LPARAGRAPH__GTIMESTAMP = 1;
    public static final int LPARAGRAPH__CHECKSUM = 2;
    public static final int LPARAGRAPH__TIMESTAMP = 3;
    public static final int LPARAGRAPH__L = 4;
    public static final int LPARAGRAPH__MIXED = 5;
    public static final int LPARAGRAPH__TTS = 6;
    public static final int LPARAGRAPH__BRS = 7;
    public static final int LPARAGRAPH__XREFS = 8;
    public static final int LPARAGRAPH__XREF_TARGETS = 9;
    public static final int LPARAGRAPH__ES = 10;
    public static final int LPARAGRAPH__FTS = 11;
    public static final int LPARAGRAPH__SUPS = 12;
    public static final int LPARAGRAPH__SUBS = 13;
    public static final int LPARAGRAPH__IES = 14;
    public static final int LPARAGRAPH__STDS = 15;
    public static final int LPARAGRAPH__XDOCS = 16;
    public static final int LPARAGRAPH__XFILES = 17;
    public static final int LPARAGRAPH__MULTI_LANGUAGE_PARAGRAPH = 18;
    public static final int LPARAGRAPH_FEATURE_COUNT = 19;
    public static final int LPLAIN_TEXT = 4;
    public static final int LPLAIN_TEXT__GCHECKSUM = 0;
    public static final int LPLAIN_TEXT__GTIMESTAMP = 1;
    public static final int LPLAIN_TEXT__CHECKSUM = 2;
    public static final int LPLAIN_TEXT__TIMESTAMP = 3;
    public static final int LPLAIN_TEXT__L = 4;
    public static final int LPLAIN_TEXT__XML_SPACE = 5;
    public static final int LPLAIN_TEXT__CONTENTS = 6;
    public static final int LPLAIN_TEXT__MULTI_LANGUAGE_PLAIN_TEXT = 7;
    public static final int LPLAIN_TEXT_FEATURE_COUNT = 8;
    public static final int LVERBATIM = 5;
    public static final int LVERBATIM__GCHECKSUM = 0;
    public static final int LVERBATIM__GTIMESTAMP = 1;
    public static final int LVERBATIM__CHECKSUM = 2;
    public static final int LVERBATIM__TIMESTAMP = 3;
    public static final int LVERBATIM__L = 4;
    public static final int LVERBATIM__XML_SPACE = 5;
    public static final int LVERBATIM__MIXED = 6;
    public static final int LVERBATIM__TTS = 7;
    public static final int LVERBATIM__ES = 8;
    public static final int LVERBATIM__XREFS = 9;
    public static final int LVERBATIM__BRS = 10;
    public static final int LVERBATIM__MULTI_LANGUAGE_VERBATIM = 11;
    public static final int LVERBATIM_FEATURE_COUNT = 12;
    public static final int WHITESPACE_CONTROLLED = 6;
    public static final int WHITESPACE_CONTROLLED__GCHECKSUM = 0;
    public static final int WHITESPACE_CONTROLLED__GTIMESTAMP = 1;
    public static final int WHITESPACE_CONTROLLED__CHECKSUM = 2;
    public static final int WHITESPACE_CONTROLLED__TIMESTAMP = 3;
    public static final int WHITESPACE_CONTROLLED__XML_SPACE = 4;
    public static final int WHITESPACE_CONTROLLED_FEATURE_COUNT = 5;
    public static final int LENUM = 7;
    public static final int XML_SPACE_ENUM = 8;

    public EClass getLLongName();

    public EReference getLLongName_MultilanguageLongName();

    public EClass getLanguageSpecific();

    public EAttribute getLanguageSpecific_L();

    public EClass getLOverviewParagraph();

    public EClass getLParagraph();

    public EReference getLParagraph_MultiLanguageParagraph();

    public EClass getLPlainText();

    public EReference getLPlainText_MultiLanguagePlainText();

    public EClass getLVerbatim();

    public EReference getLVerbatim_MultiLanguageVerbatim();

    public EClass getWhitespaceControlled();

    public EAttribute getWhitespaceControlled_XmlSpace();

    public EEnum getLEnum();

    public EEnum getXmlSpaceEnum();

    public LanguagedatamodelFactory getLanguagedatamodelFactory();

    public static interface Literals {
        public static final EClass LLONG_NAME = eINSTANCE.getLLongName();
        public static final EReference LLONG_NAME__MULTILANGUAGE_LONG_NAME = eINSTANCE.getLLongName_MultilanguageLongName();
        public static final EClass LANGUAGE_SPECIFIC = eINSTANCE.getLanguageSpecific();
        public static final EAttribute LANGUAGE_SPECIFIC__L = eINSTANCE.getLanguageSpecific_L();
        public static final EClass LOVERVIEW_PARAGRAPH = eINSTANCE.getLOverviewParagraph();
        public static final EClass LPARAGRAPH = eINSTANCE.getLParagraph();
        public static final EReference LPARAGRAPH__MULTI_LANGUAGE_PARAGRAPH = eINSTANCE.getLParagraph_MultiLanguageParagraph();
        public static final EClass LPLAIN_TEXT = eINSTANCE.getLPlainText();
        public static final EReference LPLAIN_TEXT__MULTI_LANGUAGE_PLAIN_TEXT = eINSTANCE.getLPlainText_MultiLanguagePlainText();
        public static final EClass LVERBATIM = eINSTANCE.getLVerbatim();
        public static final EReference LVERBATIM__MULTI_LANGUAGE_VERBATIM = eINSTANCE.getLVerbatim_MultiLanguageVerbatim();
        public static final EClass WHITESPACE_CONTROLLED = eINSTANCE.getWhitespaceControlled();
        public static final EAttribute WHITESPACE_CONTROLLED__XML_SPACE = eINSTANCE.getWhitespaceControlled_XmlSpace();
        public static final EEnum LENUM = eINSTANCE.getLEnum();
        public static final EEnum XML_SPACE_ENUM = eINSTANCE.getXmlSpaceEnum();
    }
}

