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
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesFactory;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InlinesPackage
extends EPackage {
    public static final String eNAME = "inlines";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/itm/i";
    public static final String eNS_PREFIX = "";
    public static final InlinesPackage eINSTANCE = InlinesPackageImpl.init();
    public static final int BR = 0;
    public static final int BR__GCHECKSUM = 0;
    public static final int BR__GTIMESTAMP = 1;
    public static final int BR__CHECKSUM = 2;
    public static final int BR__TIMESTAMP = 3;
    public static final int BR_FEATURE_COUNT = 4;
    public static final int ETYPE = 1;
    public static final int ETYPE__GCHECKSUM = 0;
    public static final int ETYPE__GTIMESTAMP = 1;
    public static final int ETYPE__CHECKSUM = 2;
    public static final int ETYPE__TIMESTAMP = 3;
    public static final int ETYPE__MIXED = 4;
    public static final int ETYPE_FEATURE_COUNT = 5;
    public static final int FT = 2;
    public static final int FT__GCHECKSUM = 0;
    public static final int FT__GTIMESTAMP = 1;
    public static final int FT__CHECKSUM = 2;
    public static final int FT__TIMESTAMP = 3;
    public static final int FT__MIXED = 4;
    public static final int FT_FEATURE_COUNT = 5;
    public static final int TT = 3;
    public static final int TT__GCHECKSUM = 0;
    public static final int TT__GTIMESTAMP = 1;
    public static final int TT__CHECKSUM = 2;
    public static final int TT__TIMESTAMP = 3;
    public static final int TT__MIXED = 4;
    public static final int TT_FEATURE_COUNT = 5;
    public static final int IE = 4;
    public static final int IE__GCHECKSUM = 0;
    public static final int IE__GTIMESTAMP = 1;
    public static final int IE__CHECKSUM = 2;
    public static final int IE__TIMESTAMP = 3;
    public static final int IE__MIXED = 4;
    public static final int IE_FEATURE_COUNT = 5;
    public static final int STD = 5;
    public static final int STD__GCHECKSUM = 0;
    public static final int STD__GTIMESTAMP = 1;
    public static final int STD__CHECKSUM = 2;
    public static final int STD__TIMESTAMP = 3;
    public static final int STD__GSHORT_NAME = 4;
    public static final int STD__GUUID = 5;
    public static final int STD__GCATEGORY = 6;
    public static final int STD__GDESC = 7;
    public static final int STD__SHORT_NAME = 8;
    public static final int STD__LONG_NAME = 9;
    public static final int STD__DESC = 10;
    public static final int STD__CATEGORY = 11;
    public static final int STD__ADMIN_DATA = 12;
    public static final int STD__INTRODUCTION = 13;
    public static final int STD__UUID = 14;
    public static final int STD__ALL_EXTENSIONS = 15;
    public static final int STD__CONTAINED_EXTENSIONS = 16;
    public static final int STD_FEATURE_COUNT = 17;
    public static final int XREF_TARGET = 6;
    public static final int XREF_TARGET__GCHECKSUM = 0;
    public static final int XREF_TARGET__GTIMESTAMP = 1;
    public static final int XREF_TARGET__CHECKSUM = 2;
    public static final int XREF_TARGET__TIMESTAMP = 3;
    public static final int XREF_TARGET__GSHORT_NAME = 4;
    public static final int XREF_TARGET__GUUID = 5;
    public static final int XREF_TARGET__GCATEGORY = 6;
    public static final int XREF_TARGET__GDESC = 7;
    public static final int XREF_TARGET__SHORT_NAME = 8;
    public static final int XREF_TARGET__LONG_NAME = 9;
    public static final int XREF_TARGET__DESC = 10;
    public static final int XREF_TARGET__CATEGORY = 11;
    public static final int XREF_TARGET__ADMIN_DATA = 12;
    public static final int XREF_TARGET__INTRODUCTION = 13;
    public static final int XREF_TARGET__UUID = 14;
    public static final int XREF_TARGET__ALL_EXTENSIONS = 15;
    public static final int XREF_TARGET__CONTAINED_EXTENSIONS = 16;
    public static final int XREF_TARGET_FEATURE_COUNT = 17;
    public static final int XREF = 7;
    public static final int XREF__GCHECKSUM = 0;
    public static final int XREF__GTIMESTAMP = 1;
    public static final int XREF__CHECKSUM = 2;
    public static final int XREF__TIMESTAMP = 3;
    public static final int XREF__MIXED = 4;
    public static final int XREF_FEATURE_COUNT = 5;
    public static final int URL = 8;
    public static final int URL__GCHECKSUM = 0;
    public static final int URL__GTIMESTAMP = 1;
    public static final int URL__CHECKSUM = 2;
    public static final int URL__TIMESTAMP = 3;
    public static final int URL__MIME_TYPE = 4;
    public static final int URL__VALUE = 5;
    public static final int URL_FEATURE_COUNT = 6;
    public static final int XFILE = 9;
    public static final int XFILE__GCHECKSUM = 0;
    public static final int XFILE__GTIMESTAMP = 1;
    public static final int XFILE__CHECKSUM = 2;
    public static final int XFILE__TIMESTAMP = 3;
    public static final int XFILE__MIXED_CONTENT1 = 4;
    public static final int XFILE__SHORT_NAME = 5;
    public static final int XFILE__LONG_NAME1 = 6;
    public static final int XFILE__URL = 7;
    public static final int XFILE__TOOL = 8;
    public static final int XFILE__TOOL_VERSION = 9;
    public static final int XFILE_FEATURE_COUNT = 10;
    public static final int XDOC = 10;
    public static final int XDOC__GCHECKSUM = 0;
    public static final int XDOC__GTIMESTAMP = 1;
    public static final int XDOC__CHECKSUM = 2;
    public static final int XDOC__TIMESTAMP = 3;
    public static final int XDOC__GSHORT_NAME = 4;
    public static final int XDOC__GUUID = 5;
    public static final int XDOC__GCATEGORY = 6;
    public static final int XDOC__GDESC = 7;
    public static final int XDOC__SHORT_NAME = 8;
    public static final int XDOC__LONG_NAME = 9;
    public static final int XDOC__DESC = 10;
    public static final int XDOC__CATEGORY = 11;
    public static final int XDOC__ADMIN_DATA = 12;
    public static final int XDOC__INTRODUCTION = 13;
    public static final int XDOC__UUID = 14;
    public static final int XDOC__ALL_EXTENSIONS = 15;
    public static final int XDOC__CONTAINED_EXTENSIONS = 16;
    public static final int XDOC_FEATURE_COUNT = 17;
    public static final int EENUM = 11;
    public static final int EENUM_FONT = 12;
    public static final int TT_ENUM = 13;
    public static final int SHOW_CONTENT_ENUM = 14;
    public static final int SHOW_RESOURCE_LONG_NAME_ENUM = 15;
    public static final int SHOW_RESOURCE_NUMBER_ENUM = 16;
    public static final int SHOW_RESOURCE_PAGE_ENUM = 17;
    public static final int SHOW_RESOURCE_SHORT_NAME_ENUM = 18;
    public static final int SHOW_RESOURCE_TYPE_ENUM = 19;
    public static final int SHOW_SEE_ENUM = 20;

    public EClass getBr();

    public EClass getEType();

    public EAttribute getEType_Mixed();

    public EClass getFt();

    public EAttribute getFt_Mixed();

    public EClass getTt();

    public EAttribute getTt_Mixed();

    public EClass getIe();

    public EAttribute getIe_Mixed();

    public EClass getStd();

    public EClass getXrefTarget();

    public EClass getXref();

    public EAttribute getXref_Mixed();

    public EClass getUrl();

    public EAttribute getUrl_MimeType();

    public EAttribute getUrl_Value();

    public EClass getXfile();

    public EReference getXfile_MixedContent1();

    public EAttribute getXfile_ShortName();

    public EReference getXfile_LongName1();

    public EReference getXfile_Url();

    public EAttribute getXfile_Tool();

    public EAttribute getXfile_ToolVersion();

    public EClass getXdoc();

    public EEnum getEEnum();

    public EEnum getEEnumFont();

    public EEnum getTtEnum();

    public EEnum getShowContentEnum();

    public EEnum getShowResourceLongNameEnum();

    public EEnum getShowResourceNumberEnum();

    public EEnum getShowResourcePageEnum();

    public EEnum getShowResourceShortNameEnum();

    public EEnum getShowResourceTypeEnum();

    public EEnum getShowSeeEnum();

    public InlinesFactory getInlinesFactory();

    public static interface Literals {
        public static final EClass BR = eINSTANCE.getBr();
        public static final EClass ETYPE = eINSTANCE.getEType();
        public static final EAttribute ETYPE__MIXED = eINSTANCE.getEType_Mixed();
        public static final EClass FT = eINSTANCE.getFt();
        public static final EAttribute FT__MIXED = eINSTANCE.getFt_Mixed();
        public static final EClass TT = eINSTANCE.getTt();
        public static final EAttribute TT__MIXED = eINSTANCE.getTt_Mixed();
        public static final EClass IE = eINSTANCE.getIe();
        public static final EAttribute IE__MIXED = eINSTANCE.getIe_Mixed();
        public static final EClass STD = eINSTANCE.getStd();
        public static final EClass XREF_TARGET = eINSTANCE.getXrefTarget();
        public static final EClass XREF = eINSTANCE.getXref();
        public static final EAttribute XREF__MIXED = eINSTANCE.getXref_Mixed();
        public static final EClass URL = eINSTANCE.getUrl();
        public static final EAttribute URL__MIME_TYPE = eINSTANCE.getUrl_MimeType();
        public static final EAttribute URL__VALUE = eINSTANCE.getUrl_Value();
        public static final EClass XFILE = eINSTANCE.getXfile();
        public static final EReference XFILE__MIXED_CONTENT1 = eINSTANCE.getXfile_MixedContent1();
        public static final EAttribute XFILE__SHORT_NAME = eINSTANCE.getXfile_ShortName();
        public static final EReference XFILE__LONG_NAME1 = eINSTANCE.getXfile_LongName1();
        public static final EReference XFILE__URL = eINSTANCE.getXfile_Url();
        public static final EAttribute XFILE__TOOL = eINSTANCE.getXfile_Tool();
        public static final EAttribute XFILE__TOOL_VERSION = eINSTANCE.getXfile_ToolVersion();
        public static final EClass XDOC = eINSTANCE.getXdoc();
        public static final EEnum EENUM = eINSTANCE.getEEnum();
        public static final EEnum EENUM_FONT = eINSTANCE.getEEnumFont();
        public static final EEnum TT_ENUM = eINSTANCE.getTtEnum();
        public static final EEnum SHOW_CONTENT_ENUM = eINSTANCE.getShowContentEnum();
        public static final EEnum SHOW_RESOURCE_LONG_NAME_ENUM = eINSTANCE.getShowResourceLongNameEnum();
        public static final EEnum SHOW_RESOURCE_NUMBER_ENUM = eINSTANCE.getShowResourceNumberEnum();
        public static final EEnum SHOW_RESOURCE_PAGE_ENUM = eINSTANCE.getShowResourcePageEnum();
        public static final EEnum SHOW_RESOURCE_SHORT_NAME_ENUM = eINSTANCE.getShowResourceShortNameEnum();
        public static final EEnum SHOW_RESOURCE_TYPE_ENUM = eINSTANCE.getShowResourceTypeEnum();
        public static final EEnum SHOW_SEE_ENUM = eINSTANCE.getShowSeeEnum();
    }
}

