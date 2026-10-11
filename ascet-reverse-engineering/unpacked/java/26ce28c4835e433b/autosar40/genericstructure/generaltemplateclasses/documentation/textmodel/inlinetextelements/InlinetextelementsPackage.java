/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl.InlinetextelementsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InlinetextelementsPackage
extends EPackage {
    public static final String eNAME = "inlinetextelements";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/ite";
    public static final String eNS_PREFIX = "";
    public static final InlinetextelementsPackage eINSTANCE = InlinetextelementsPackageImpl.init();
    public static final int BR = 0;
    public static final int BR__GCHECKSUM = 0;
    public static final int BR__GTIMESTAMP = 1;
    public static final int BR__CHECKSUM = 2;
    public static final int BR__TIMESTAMP = 3;
    public static final int BR_FEATURE_COUNT = 4;
    public static final int EMPHASIS_TEXT = 1;
    public static final int EMPHASIS_TEXT__GCHECKSUM = 0;
    public static final int EMPHASIS_TEXT__GTIMESTAMP = 1;
    public static final int EMPHASIS_TEXT__CHECKSUM = 2;
    public static final int EMPHASIS_TEXT__TIMESTAMP = 3;
    public static final int EMPHASIS_TEXT__MIXED = 4;
    public static final int EMPHASIS_TEXT__COLOR = 5;
    public static final int EMPHASIS_TEXT__FONT = 6;
    public static final int EMPHASIS_TEXT__SUBS = 7;
    public static final int EMPHASIS_TEXT__SUPS = 8;
    public static final int EMPHASIS_TEXT__TYPE = 9;
    public static final int EMPHASIS_TEXT_FEATURE_COUNT = 10;
    public static final int FOOTNOTE_TEXT = 2;
    public static final int FOOTNOTE_TEXT__GCHECKSUM = 0;
    public static final int FOOTNOTE_TEXT__GTIMESTAMP = 1;
    public static final int FOOTNOTE_TEXT__CHECKSUM = 2;
    public static final int FOOTNOTE_TEXT__TIMESTAMP = 3;
    public static final int FOOTNOTE_TEXT__MIXED = 4;
    public static final int FOOTNOTE_TEXT__SUBS = 5;
    public static final int FOOTNOTE_TEXT__SUPS = 6;
    public static final int FOOTNOTE_TEXT__TTS = 7;
    public static final int FOOTNOTE_TEXT__ES = 8;
    public static final int FOOTNOTE_TEXT_FEATURE_COUNT = 9;
    public static final int TT = 3;
    public static final int TT__GCHECKSUM = 0;
    public static final int TT__GTIMESTAMP = 1;
    public static final int TT__CHECKSUM = 2;
    public static final int TT__TIMESTAMP = 3;
    public static final int TT__TERM = 4;
    public static final int TT__TYPE = 5;
    public static final int TT_FEATURE_COUNT = 6;
    public static final int INDEX_ENTRY = 4;
    public static final int INDEX_ENTRY__GCHECKSUM = 0;
    public static final int INDEX_ENTRY__GTIMESTAMP = 1;
    public static final int INDEX_ENTRY__CHECKSUM = 2;
    public static final int INDEX_ENTRY__TIMESTAMP = 3;
    public static final int INDEX_ENTRY__MIXED = 4;
    public static final int INDEX_ENTRY__SUPS = 5;
    public static final int INDEX_ENTRY__SUBS = 6;
    public static final int INDEX_ENTRY_FEATURE_COUNT = 7;
    public static final int STD = 5;
    public static final int STD__GCHECKSUM = 0;
    public static final int STD__GTIMESTAMP = 1;
    public static final int STD__CHECKSUM = 2;
    public static final int STD__TIMESTAMP = 3;
    public static final int STD__GSHORT_NAME = 4;
    public static final int STD__SHORT_NAME = 5;
    public static final int STD__LONG_NAME1 = 6;
    public static final int STD__MIXED_CONTENT_FOR_PARAGRAPH = 7;
    public static final int STD__SUBTITLE = 8;
    public static final int STD__STATE = 9;
    public static final int STD__DATE = 10;
    public static final int STD__URL = 11;
    public static final int STD__POSITION = 12;
    public static final int STD_FEATURE_COUNT = 13;
    public static final int XFILE = 6;
    public static final int XFILE__GCHECKSUM = 0;
    public static final int XFILE__GTIMESTAMP = 1;
    public static final int XFILE__CHECKSUM = 2;
    public static final int XFILE__TIMESTAMP = 3;
    public static final int XFILE__GSHORT_NAME = 4;
    public static final int XFILE__SHORT_NAME = 5;
    public static final int XFILE__LONG_NAME1 = 6;
    public static final int XFILE__MIXED_CONTENT_FOR_PARAGRAPH = 7;
    public static final int XFILE__URL = 8;
    public static final int XFILE__TOOL = 9;
    public static final int XFILE__TOOL_VERSION = 10;
    public static final int XFILE_FEATURE_COUNT = 11;
    public static final int XDOC = 7;
    public static final int XDOC__GCHECKSUM = 0;
    public static final int XDOC__GTIMESTAMP = 1;
    public static final int XDOC__CHECKSUM = 2;
    public static final int XDOC__TIMESTAMP = 3;
    public static final int XDOC__GSHORT_NAME = 4;
    public static final int XDOC__SHORT_NAME = 5;
    public static final int XDOC__LONG_NAME1 = 6;
    public static final int XDOC__MIXED_CONTENT_FOR_PARAGRAPH = 7;
    public static final int XDOC__NUMBER = 8;
    public static final int XDOC__STATE = 9;
    public static final int XDOC__DATE = 10;
    public static final int XDOC__PUBLISHER = 11;
    public static final int XDOC__URL = 12;
    public static final int XDOC__POSITION = 13;
    public static final int XDOC_FEATURE_COUNT = 14;
    public static final int XREF = 8;
    public static final int XREF__GCHECKSUM = 0;
    public static final int XREF__GTIMESTAMP = 1;
    public static final int XREF__CHECKSUM = 2;
    public static final int XREF__TIMESTAMP = 3;
    public static final int XREF__LABEL1 = 4;
    public static final int XREF__REFERRABLE = 5;
    public static final int XREF__SHOW_CONTENT = 6;
    public static final int XREF__SHOW_RESOURCE_ALIAS_NAME = 7;
    public static final int XREF__SHOW_RESOURCE_CATEGORY = 8;
    public static final int XREF__SHOW_RESOURCE_LONG_NAME = 9;
    public static final int XREF__SHOW_RESOURCE_NUMBER = 10;
    public static final int XREF__SHOW_RESOURCE_PAGE = 11;
    public static final int XREF__SHOW_RESOURCE_SHORT_NAME = 12;
    public static final int XREF__SHOW_RESOURCE_TYPE = 13;
    public static final int XREF__SHOW_SEE = 14;
    public static final int XREF_FEATURE_COUNT = 15;
    public static final int XREF_TARGET = 9;
    public static final int XREF_TARGET__GCHECKSUM = 0;
    public static final int XREF_TARGET__GTIMESTAMP = 1;
    public static final int XREF_TARGET__CHECKSUM = 2;
    public static final int XREF_TARGET__TIMESTAMP = 3;
    public static final int XREF_TARGET__GSHORT_NAME = 4;
    public static final int XREF_TARGET__SHORT_NAME = 5;
    public static final int XREF_TARGET__LONG_NAME1 = 6;
    public static final int XREF_TARGET_FEATURE_COUNT = 7;
    public static final int SUPERSCRIPT = 10;

    public EClass getBr();

    public EClass getEmphasisText();

    public EAttribute getEmphasisText_Mixed();

    public EAttribute getEmphasisText_Color();

    public EAttribute getEmphasisText_Font();

    public EAttribute getEmphasisText_Subs();

    public EAttribute getEmphasisText_Sups();

    public EAttribute getEmphasisText_Type();

    public EClass getFootnoteText();

    public EAttribute getFootnoteText_Mixed();

    public EAttribute getFootnoteText_Subs();

    public EAttribute getFootnoteText_Sups();

    public EReference getFootnoteText_Tts();

    public EReference getFootnoteText_Es();

    public EClass getTt();

    public EAttribute getTt_Term();

    public EAttribute getTt_Type();

    public EClass getIndexEntry();

    public EAttribute getIndexEntry_Mixed();

    public EAttribute getIndexEntry_Sups();

    public EAttribute getIndexEntry_Subs();

    public EClass getStd();

    public EReference getStd_MixedContentForParagraph();

    public EAttribute getStd_Subtitle();

    public EAttribute getStd_State();

    public EAttribute getStd_Date();

    public EReference getStd_Url();

    public EAttribute getStd_Position();

    public EClass getXfile();

    public EReference getXfile_MixedContentForParagraph();

    public EReference getXfile_Url();

    public EAttribute getXfile_Tool();

    public EAttribute getXfile_ToolVersion();

    public EClass getXdoc();

    public EReference getXdoc_MixedContentForParagraph();

    public EAttribute getXdoc_Number();

    public EAttribute getXdoc_State();

    public EAttribute getXdoc_Date();

    public EAttribute getXdoc_Publisher();

    public EReference getXdoc_Url();

    public EAttribute getXdoc_Position();

    public EClass getXref();

    public EReference getXref_Label1();

    public EReference getXref_Referrable();

    public EAttribute getXref_ShowContent();

    public EAttribute getXref_ShowResourceAliasName();

    public EAttribute getXref_ShowResourceCategory();

    public EAttribute getXref_ShowResourceLongName();

    public EAttribute getXref_ShowResourceNumber();

    public EAttribute getXref_ShowResourcePage();

    public EAttribute getXref_ShowResourceShortName();

    public EAttribute getXref_ShowResourceType();

    public EAttribute getXref_ShowSee();

    public EClass getXrefTarget();

    public EDataType getSuperscript();

    public InlinetextelementsFactory getInlinetextelementsFactory();

    public static interface Literals {
        public static final EClass BR = eINSTANCE.getBr();
        public static final EClass EMPHASIS_TEXT = eINSTANCE.getEmphasisText();
        public static final EAttribute EMPHASIS_TEXT__MIXED = eINSTANCE.getEmphasisText_Mixed();
        public static final EAttribute EMPHASIS_TEXT__COLOR = eINSTANCE.getEmphasisText_Color();
        public static final EAttribute EMPHASIS_TEXT__FONT = eINSTANCE.getEmphasisText_Font();
        public static final EAttribute EMPHASIS_TEXT__SUBS = eINSTANCE.getEmphasisText_Subs();
        public static final EAttribute EMPHASIS_TEXT__SUPS = eINSTANCE.getEmphasisText_Sups();
        public static final EAttribute EMPHASIS_TEXT__TYPE = eINSTANCE.getEmphasisText_Type();
        public static final EClass FOOTNOTE_TEXT = eINSTANCE.getFootnoteText();
        public static final EAttribute FOOTNOTE_TEXT__MIXED = eINSTANCE.getFootnoteText_Mixed();
        public static final EAttribute FOOTNOTE_TEXT__SUBS = eINSTANCE.getFootnoteText_Subs();
        public static final EAttribute FOOTNOTE_TEXT__SUPS = eINSTANCE.getFootnoteText_Sups();
        public static final EReference FOOTNOTE_TEXT__TTS = eINSTANCE.getFootnoteText_Tts();
        public static final EReference FOOTNOTE_TEXT__ES = eINSTANCE.getFootnoteText_Es();
        public static final EClass TT = eINSTANCE.getTt();
        public static final EAttribute TT__TERM = eINSTANCE.getTt_Term();
        public static final EAttribute TT__TYPE = eINSTANCE.getTt_Type();
        public static final EClass INDEX_ENTRY = eINSTANCE.getIndexEntry();
        public static final EAttribute INDEX_ENTRY__MIXED = eINSTANCE.getIndexEntry_Mixed();
        public static final EAttribute INDEX_ENTRY__SUPS = eINSTANCE.getIndexEntry_Sups();
        public static final EAttribute INDEX_ENTRY__SUBS = eINSTANCE.getIndexEntry_Subs();
        public static final EClass STD = eINSTANCE.getStd();
        public static final EReference STD__MIXED_CONTENT_FOR_PARAGRAPH = eINSTANCE.getStd_MixedContentForParagraph();
        public static final EAttribute STD__SUBTITLE = eINSTANCE.getStd_Subtitle();
        public static final EAttribute STD__STATE = eINSTANCE.getStd_State();
        public static final EAttribute STD__DATE = eINSTANCE.getStd_Date();
        public static final EReference STD__URL = eINSTANCE.getStd_Url();
        public static final EAttribute STD__POSITION = eINSTANCE.getStd_Position();
        public static final EClass XFILE = eINSTANCE.getXfile();
        public static final EReference XFILE__MIXED_CONTENT_FOR_PARAGRAPH = eINSTANCE.getXfile_MixedContentForParagraph();
        public static final EReference XFILE__URL = eINSTANCE.getXfile_Url();
        public static final EAttribute XFILE__TOOL = eINSTANCE.getXfile_Tool();
        public static final EAttribute XFILE__TOOL_VERSION = eINSTANCE.getXfile_ToolVersion();
        public static final EClass XDOC = eINSTANCE.getXdoc();
        public static final EReference XDOC__MIXED_CONTENT_FOR_PARAGRAPH = eINSTANCE.getXdoc_MixedContentForParagraph();
        public static final EAttribute XDOC__NUMBER = eINSTANCE.getXdoc_Number();
        public static final EAttribute XDOC__STATE = eINSTANCE.getXdoc_State();
        public static final EAttribute XDOC__DATE = eINSTANCE.getXdoc_Date();
        public static final EAttribute XDOC__PUBLISHER = eINSTANCE.getXdoc_Publisher();
        public static final EReference XDOC__URL = eINSTANCE.getXdoc_Url();
        public static final EAttribute XDOC__POSITION = eINSTANCE.getXdoc_Position();
        public static final EClass XREF = eINSTANCE.getXref();
        public static final EReference XREF__LABEL1 = eINSTANCE.getXref_Label1();
        public static final EReference XREF__REFERRABLE = eINSTANCE.getXref_Referrable();
        public static final EAttribute XREF__SHOW_CONTENT = eINSTANCE.getXref_ShowContent();
        public static final EAttribute XREF__SHOW_RESOURCE_ALIAS_NAME = eINSTANCE.getXref_ShowResourceAliasName();
        public static final EAttribute XREF__SHOW_RESOURCE_CATEGORY = eINSTANCE.getXref_ShowResourceCategory();
        public static final EAttribute XREF__SHOW_RESOURCE_LONG_NAME = eINSTANCE.getXref_ShowResourceLongName();
        public static final EAttribute XREF__SHOW_RESOURCE_NUMBER = eINSTANCE.getXref_ShowResourceNumber();
        public static final EAttribute XREF__SHOW_RESOURCE_PAGE = eINSTANCE.getXref_ShowResourcePage();
        public static final EAttribute XREF__SHOW_RESOURCE_SHORT_NAME = eINSTANCE.getXref_ShowResourceShortName();
        public static final EAttribute XREF__SHOW_RESOURCE_TYPE = eINSTANCE.getXref_ShowResourceType();
        public static final EAttribute XREF__SHOW_SEE = eINSTANCE.getXref_ShowSee();
        public static final EClass XREF_TARGET = eINSTANCE.getXrefTarget();
        public static final EDataType SUPERSCRIPT = eINSTANCE.getSuperscript();
    }
}

