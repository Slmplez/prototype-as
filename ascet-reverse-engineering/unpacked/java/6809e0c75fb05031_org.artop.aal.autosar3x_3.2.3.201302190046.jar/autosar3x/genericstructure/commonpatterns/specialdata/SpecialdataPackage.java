/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataFactory;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SpecialdataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SpecialdataPackage
extends EPackage {
    public static final String eNAME = "specialdata";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/sd";
    public static final String eNS_PREFIX = "";
    public static final SpecialdataPackage eINSTANCE = SpecialdataPackageImpl.init();
    public static final int SD = 0;
    public static final int SD__GCHECKSUM = 0;
    public static final int SD__GTIMESTAMP = 1;
    public static final int SD__CHECKSUM = 2;
    public static final int SD__TIMESTAMP = 3;
    public static final int SD__MIXED = 4;
    public static final int SD__SDG_CONTENTS = 5;
    public static final int SD__GID = 6;
    public static final int SD_FEATURE_COUNT = 7;
    public static final int SDG_CAPTION = 1;
    public static final int SDG_CAPTION__GCHECKSUM = 0;
    public static final int SDG_CAPTION__GTIMESTAMP = 1;
    public static final int SDG_CAPTION__CHECKSUM = 2;
    public static final int SDG_CAPTION__TIMESTAMP = 3;
    public static final int SDG_CAPTION__GSHORT_NAME = 4;
    public static final int SDG_CAPTION__GUUID = 5;
    public static final int SDG_CAPTION__GCATEGORY = 6;
    public static final int SDG_CAPTION__GDESC = 7;
    public static final int SDG_CAPTION__SHORT_NAME = 8;
    public static final int SDG_CAPTION__LONG_NAME = 9;
    public static final int SDG_CAPTION__DESC = 10;
    public static final int SDG_CAPTION__CATEGORY = 11;
    public static final int SDG_CAPTION__ADMIN_DATA = 12;
    public static final int SDG_CAPTION__INTRODUCTION = 13;
    public static final int SDG_CAPTION__UUID = 14;
    public static final int SDG_CAPTION__ALL_EXTENSIONS = 15;
    public static final int SDG_CAPTION__CONTAINED_EXTENSIONS = 16;
    public static final int SDG_CAPTION__SDG = 17;
    public static final int SDG_CAPTION_FEATURE_COUNT = 18;
    public static final int SDG_CONTENTS = 2;
    public static final int SDG_CONTENTS__GCHECKSUM = 0;
    public static final int SDG_CONTENTS__GTIMESTAMP = 1;
    public static final int SDG_CONTENTS__CHECKSUM = 2;
    public static final int SDG_CONTENTS__TIMESTAMP = 3;
    public static final int SDG_CONTENTS__SDG = 4;
    public static final int SDG_CONTENTS__SDXS = 5;
    public static final int SDG_CONTENTS__SDS = 6;
    public static final int SDG_CONTENTS__SDGS = 7;
    public static final int SDG_CONTENTS_FEATURE_COUNT = 8;
    public static final int SDX = 3;
    public static final int SDX__GCHECKSUM = 0;
    public static final int SDX__GTIMESTAMP = 1;
    public static final int SDX__CHECKSUM = 2;
    public static final int SDX__TIMESTAMP = 3;
    public static final int SDX__MIXED = 4;
    public static final int SDX__SDG_CONTENTS = 5;
    public static final int SDX__GID = 6;
    public static final int SDX__ID_CLASS = 7;
    public static final int SDX_FEATURE_COUNT = 8;
    public static final int SDG = 4;
    public static final int SDG__GCHECKSUM = 0;
    public static final int SDG__GTIMESTAMP = 1;
    public static final int SDG__CHECKSUM = 2;
    public static final int SDG__TIMESTAMP = 3;
    public static final int SDG__GID = 4;
    public static final int SDG__SDG_CAPTION = 5;
    public static final int SDG__SDG_CAPTION_REF = 6;
    public static final int SDG__SDG_CONTENTS_TYPE = 7;
    public static final int SDG_FEATURE_COUNT = 8;

    public EClass getSd();

    public EAttribute getSd_Mixed();

    public EReference getSd_SdgContents();

    public EAttribute getSd_Gid();

    public EClass getSdgCaption();

    public EReference getSdgCaption_Sdg();

    public EClass getSdgContents();

    public EReference getSdgContents_Sdg();

    public EReference getSdgContents_Sdxs();

    public EReference getSdgContents_Sds();

    public EReference getSdgContents_Sdgs();

    public EClass getSdx();

    public EAttribute getSdx_Mixed();

    public EReference getSdx_SdgContents();

    public EAttribute getSdx_Gid();

    public EAttribute getSdx_IdClass();

    public EClass getSdg();

    public EAttribute getSdg_Gid();

    public EReference getSdg_SdgCaption();

    public EReference getSdg_SdgCaptionRef();

    public EReference getSdg_SdgContentsType();

    public SpecialdataFactory getSpecialdataFactory();

    public static interface Literals {
        public static final EClass SD = eINSTANCE.getSd();
        public static final EAttribute SD__MIXED = eINSTANCE.getSd_Mixed();
        public static final EReference SD__SDG_CONTENTS = eINSTANCE.getSd_SdgContents();
        public static final EAttribute SD__GID = eINSTANCE.getSd_Gid();
        public static final EClass SDG_CAPTION = eINSTANCE.getSdgCaption();
        public static final EReference SDG_CAPTION__SDG = eINSTANCE.getSdgCaption_Sdg();
        public static final EClass SDG_CONTENTS = eINSTANCE.getSdgContents();
        public static final EReference SDG_CONTENTS__SDG = eINSTANCE.getSdgContents_Sdg();
        public static final EReference SDG_CONTENTS__SDXS = eINSTANCE.getSdgContents_Sdxs();
        public static final EReference SDG_CONTENTS__SDS = eINSTANCE.getSdgContents_Sds();
        public static final EReference SDG_CONTENTS__SDGS = eINSTANCE.getSdgContents_Sdgs();
        public static final EClass SDX = eINSTANCE.getSdx();
        public static final EAttribute SDX__MIXED = eINSTANCE.getSdx_Mixed();
        public static final EReference SDX__SDG_CONTENTS = eINSTANCE.getSdx_SdgContents();
        public static final EAttribute SDX__GID = eINSTANCE.getSdx_Gid();
        public static final EAttribute SDX__ID_CLASS = eINSTANCE.getSdx_IdClass();
        public static final EClass SDG = eINSTANCE.getSdg();
        public static final EAttribute SDG__GID = eINSTANCE.getSdg_Gid();
        public static final EReference SDG__SDG_CAPTION = eINSTANCE.getSdg_SdgCaption();
        public static final EReference SDG__SDG_CAPTION_REF = eINSTANCE.getSdg_SdgCaptionRef();
        public static final EReference SDG__SDG_CONTENTS_TYPE = eINSTANCE.getSdg_SdgContentsType();
    }
}

