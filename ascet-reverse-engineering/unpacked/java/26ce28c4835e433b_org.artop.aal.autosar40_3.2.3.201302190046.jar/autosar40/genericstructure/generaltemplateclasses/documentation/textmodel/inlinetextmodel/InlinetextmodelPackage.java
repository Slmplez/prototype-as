/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InlinetextmodelPackage
extends EPackage {
    public static final String eNAME = "inlinetextmodel";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/itm";
    public static final String eNS_PREFIX = "";
    public static final InlinetextmodelPackage eINSTANCE = InlinetextmodelPackageImpl.init();
    public static final int MIXED_CONTENT_FOR_LONG_NAME = 0;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__MIXED = 4;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__TTS = 5;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__ES = 6;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__SUPS = 7;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__SUBS = 8;
    public static final int MIXED_CONTENT_FOR_LONG_NAME__IES = 9;
    public static final int MIXED_CONTENT_FOR_LONG_NAME_FEATURE_COUNT = 10;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH = 1;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__MIXED = 4;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__TTS = 5;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__BRS = 6;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__XREFS = 7;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__XREF_TARGETS = 8;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__ES = 9;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__FTS = 10;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__SUPS = 11;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__SUBS = 12;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__IES = 13;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__STDS = 14;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__XDOCS = 15;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH__XFILES = 16;
    public static final int MIXED_CONTENT_FOR_PARAGRAPH_FEATURE_COUNT = 17;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT = 2;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__XML_SPACE = 4;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT__CONTENTS = 5;
    public static final int MIXED_CONTENT_FOR_PLAIN_TEXT_FEATURE_COUNT = 6;
    public static final int MIXED_CONTENT_FOR_VERBATIM = 3;
    public static final int MIXED_CONTENT_FOR_VERBATIM__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_VERBATIM__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_VERBATIM__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_VERBATIM__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_VERBATIM__XML_SPACE = 4;
    public static final int MIXED_CONTENT_FOR_VERBATIM__MIXED = 5;
    public static final int MIXED_CONTENT_FOR_VERBATIM__TTS = 6;
    public static final int MIXED_CONTENT_FOR_VERBATIM__ES = 7;
    public static final int MIXED_CONTENT_FOR_VERBATIM__XREFS = 8;
    public static final int MIXED_CONTENT_FOR_VERBATIM__BRS = 9;
    public static final int MIXED_CONTENT_FOR_VERBATIM_FEATURE_COUNT = 10;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES = 4;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__MIXED = 4;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__SUPS = 5;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES__SUBS = 6;
    public static final int MIXED_CONTENT_FOR_UNIT_NAMES_FEATURE_COUNT = 7;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH = 5;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__GCHECKSUM = 0;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__GTIMESTAMP = 1;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__CHECKSUM = 2;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__TIMESTAMP = 3;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__MIXED = 4;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__BRS = 5;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__TTS = 6;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREFS = 7;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREF_TARGETS = 8;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__ES = 9;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__FTS = 10;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__SUPS = 11;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__SUBS = 12;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__IES = 13;
    public static final int MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH_FEATURE_COUNT = 14;

    public EClass getMixedContentForLongName();

    public EAttribute getMixedContentForLongName_Mixed();

    public EReference getMixedContentForLongName_Tts();

    public EReference getMixedContentForLongName_Es();

    public EAttribute getMixedContentForLongName_Sups();

    public EAttribute getMixedContentForLongName_Subs();

    public EReference getMixedContentForLongName_Ies();

    public EClass getMixedContentForParagraph();

    public EAttribute getMixedContentForParagraph_Mixed();

    public EReference getMixedContentForParagraph_Tts();

    public EReference getMixedContentForParagraph_Brs();

    public EReference getMixedContentForParagraph_Xrefs();

    public EReference getMixedContentForParagraph_XrefTargets();

    public EReference getMixedContentForParagraph_Es();

    public EReference getMixedContentForParagraph_Fts();

    public EAttribute getMixedContentForParagraph_Sups();

    public EAttribute getMixedContentForParagraph_Subs();

    public EReference getMixedContentForParagraph_Ies();

    public EReference getMixedContentForParagraph_Stds();

    public EReference getMixedContentForParagraph_Xdocs();

    public EReference getMixedContentForParagraph_Xfiles();

    public EClass getMixedContentForPlainText();

    public EAttribute getMixedContentForPlainText_Contents();

    public EClass getMixedContentForVerbatim();

    public EAttribute getMixedContentForVerbatim_Mixed();

    public EReference getMixedContentForVerbatim_Tts();

    public EReference getMixedContentForVerbatim_Es();

    public EReference getMixedContentForVerbatim_Xrefs();

    public EReference getMixedContentForVerbatim_Brs();

    public EClass getMixedContentForUnitNames();

    public EAttribute getMixedContentForUnitNames_Mixed();

    public EAttribute getMixedContentForUnitNames_Sups();

    public EAttribute getMixedContentForUnitNames_Subs();

    public EClass getMixedContentForOverviewParagraph();

    public EAttribute getMixedContentForOverviewParagraph_Mixed();

    public EReference getMixedContentForOverviewParagraph_Brs();

    public EReference getMixedContentForOverviewParagraph_Tts();

    public EReference getMixedContentForOverviewParagraph_Xrefs();

    public EReference getMixedContentForOverviewParagraph_XrefTargets();

    public EReference getMixedContentForOverviewParagraph_Es();

    public EReference getMixedContentForOverviewParagraph_Fts();

    public EAttribute getMixedContentForOverviewParagraph_Sups();

    public EAttribute getMixedContentForOverviewParagraph_Subs();

    public EReference getMixedContentForOverviewParagraph_Ies();

    public InlinetextmodelFactory getInlinetextmodelFactory();

    public static interface Literals {
        public static final EClass MIXED_CONTENT_FOR_LONG_NAME = eINSTANCE.getMixedContentForLongName();
        public static final EAttribute MIXED_CONTENT_FOR_LONG_NAME__MIXED = eINSTANCE.getMixedContentForLongName_Mixed();
        public static final EReference MIXED_CONTENT_FOR_LONG_NAME__TTS = eINSTANCE.getMixedContentForLongName_Tts();
        public static final EReference MIXED_CONTENT_FOR_LONG_NAME__ES = eINSTANCE.getMixedContentForLongName_Es();
        public static final EAttribute MIXED_CONTENT_FOR_LONG_NAME__SUPS = eINSTANCE.getMixedContentForLongName_Sups();
        public static final EAttribute MIXED_CONTENT_FOR_LONG_NAME__SUBS = eINSTANCE.getMixedContentForLongName_Subs();
        public static final EReference MIXED_CONTENT_FOR_LONG_NAME__IES = eINSTANCE.getMixedContentForLongName_Ies();
        public static final EClass MIXED_CONTENT_FOR_PARAGRAPH = eINSTANCE.getMixedContentForParagraph();
        public static final EAttribute MIXED_CONTENT_FOR_PARAGRAPH__MIXED = eINSTANCE.getMixedContentForParagraph_Mixed();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__TTS = eINSTANCE.getMixedContentForParagraph_Tts();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__BRS = eINSTANCE.getMixedContentForParagraph_Brs();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__XREFS = eINSTANCE.getMixedContentForParagraph_Xrefs();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__XREF_TARGETS = eINSTANCE.getMixedContentForParagraph_XrefTargets();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__ES = eINSTANCE.getMixedContentForParagraph_Es();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__FTS = eINSTANCE.getMixedContentForParagraph_Fts();
        public static final EAttribute MIXED_CONTENT_FOR_PARAGRAPH__SUPS = eINSTANCE.getMixedContentForParagraph_Sups();
        public static final EAttribute MIXED_CONTENT_FOR_PARAGRAPH__SUBS = eINSTANCE.getMixedContentForParagraph_Subs();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__IES = eINSTANCE.getMixedContentForParagraph_Ies();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__STDS = eINSTANCE.getMixedContentForParagraph_Stds();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__XDOCS = eINSTANCE.getMixedContentForParagraph_Xdocs();
        public static final EReference MIXED_CONTENT_FOR_PARAGRAPH__XFILES = eINSTANCE.getMixedContentForParagraph_Xfiles();
        public static final EClass MIXED_CONTENT_FOR_PLAIN_TEXT = eINSTANCE.getMixedContentForPlainText();
        public static final EAttribute MIXED_CONTENT_FOR_PLAIN_TEXT__CONTENTS = eINSTANCE.getMixedContentForPlainText_Contents();
        public static final EClass MIXED_CONTENT_FOR_VERBATIM = eINSTANCE.getMixedContentForVerbatim();
        public static final EAttribute MIXED_CONTENT_FOR_VERBATIM__MIXED = eINSTANCE.getMixedContentForVerbatim_Mixed();
        public static final EReference MIXED_CONTENT_FOR_VERBATIM__TTS = eINSTANCE.getMixedContentForVerbatim_Tts();
        public static final EReference MIXED_CONTENT_FOR_VERBATIM__ES = eINSTANCE.getMixedContentForVerbatim_Es();
        public static final EReference MIXED_CONTENT_FOR_VERBATIM__XREFS = eINSTANCE.getMixedContentForVerbatim_Xrefs();
        public static final EReference MIXED_CONTENT_FOR_VERBATIM__BRS = eINSTANCE.getMixedContentForVerbatim_Brs();
        public static final EClass MIXED_CONTENT_FOR_UNIT_NAMES = eINSTANCE.getMixedContentForUnitNames();
        public static final EAttribute MIXED_CONTENT_FOR_UNIT_NAMES__MIXED = eINSTANCE.getMixedContentForUnitNames_Mixed();
        public static final EAttribute MIXED_CONTENT_FOR_UNIT_NAMES__SUPS = eINSTANCE.getMixedContentForUnitNames_Sups();
        public static final EAttribute MIXED_CONTENT_FOR_UNIT_NAMES__SUBS = eINSTANCE.getMixedContentForUnitNames_Subs();
        public static final EClass MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH = eINSTANCE.getMixedContentForOverviewParagraph();
        public static final EAttribute MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__MIXED = eINSTANCE.getMixedContentForOverviewParagraph_Mixed();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__BRS = eINSTANCE.getMixedContentForOverviewParagraph_Brs();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__TTS = eINSTANCE.getMixedContentForOverviewParagraph_Tts();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREFS = eINSTANCE.getMixedContentForOverviewParagraph_Xrefs();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__XREF_TARGETS = eINSTANCE.getMixedContentForOverviewParagraph_XrefTargets();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__ES = eINSTANCE.getMixedContentForOverviewParagraph_Es();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__FTS = eINSTANCE.getMixedContentForOverviewParagraph_Fts();
        public static final EAttribute MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__SUPS = eINSTANCE.getMixedContentForOverviewParagraph_Sups();
        public static final EAttribute MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__SUBS = eINSTANCE.getMixedContentForOverviewParagraph_Subs();
        public static final EReference MIXED_CONTENT_FOR_OVERVIEW_PARAGRAPH__IES = eINSTANCE.getMixedContentForOverviewParagraph_Ies();
    }
}

