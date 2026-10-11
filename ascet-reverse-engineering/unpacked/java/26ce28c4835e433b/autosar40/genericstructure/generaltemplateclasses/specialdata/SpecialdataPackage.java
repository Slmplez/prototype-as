/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.specialdata;

import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataFactory;
import autosar40.genericstructure.generaltemplateclasses.specialdata.impl.SpecialdataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SpecialdataPackage
extends EPackage {
    public static final String eNAME = "specialdata";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/sd";
    public static final String eNS_PREFIX = "";
    public static final SpecialdataPackage eINSTANCE = SpecialdataPackageImpl.init();
    public static final int SD = 0;
    public static final int SD__GCHECKSUM = 0;
    public static final int SD__GTIMESTAMP = 1;
    public static final int SD__CHECKSUM = 2;
    public static final int SD__TIMESTAMP = 3;
    public static final int SD__SDG_CONTENTS = 4;
    public static final int SD__GID = 5;
    public static final int SD__VALUE = 6;
    public static final int SD_FEATURE_COUNT = 7;
    public static final int SDG_CAPTION = 1;
    public static final int SDG_CAPTION__GCHECKSUM = 0;
    public static final int SDG_CAPTION__GTIMESTAMP = 1;
    public static final int SDG_CAPTION__CHECKSUM = 2;
    public static final int SDG_CAPTION__TIMESTAMP = 3;
    public static final int SDG_CAPTION__GSHORT_NAME = 4;
    public static final int SDG_CAPTION__SHORT_NAME = 5;
    public static final int SDG_CAPTION__LONG_NAME = 6;
    public static final int SDG_CAPTION__SDG = 7;
    public static final int SDG_CAPTION__DESC = 8;
    public static final int SDG_CAPTION_FEATURE_COUNT = 9;
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
    public static final int SDG = 3;
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

    public EReference getSd_SdgContents();

    public EAttribute getSd_Gid();

    public EAttribute getSd_Value();

    public EClass getSdgCaption();

    public EReference getSdgCaption_Sdg();

    public EReference getSdgCaption_Desc();

    public EClass getSdgContents();

    public EReference getSdgContents_Sdg();

    public EReference getSdgContents_Sdxs();

    public EReference getSdgContents_Sds();

    public EReference getSdgContents_Sdgs();

    public EClass getSdg();

    public EAttribute getSdg_Gid();

    public EReference getSdg_SdgCaption();

    public EReference getSdg_SdgCaptionRef();

    public EReference getSdg_SdgContentsType();

    public SpecialdataFactory getSpecialdataFactory();

    public static interface Literals {
        public static final EClass SD = eINSTANCE.getSd();
        public static final EReference SD__SDG_CONTENTS = eINSTANCE.getSd_SdgContents();
        public static final EAttribute SD__GID = eINSTANCE.getSd_Gid();
        public static final EAttribute SD__VALUE = eINSTANCE.getSd_Value();
        public static final EClass SDG_CAPTION = eINSTANCE.getSdgCaption();
        public static final EReference SDG_CAPTION__SDG = eINSTANCE.getSdgCaption_Sdg();
        public static final EReference SDG_CAPTION__DESC = eINSTANCE.getSdgCaption_Desc();
        public static final EClass SDG_CONTENTS = eINSTANCE.getSdgContents();
        public static final EReference SDG_CONTENTS__SDG = eINSTANCE.getSdgContents_Sdg();
        public static final EReference SDG_CONTENTS__SDXS = eINSTANCE.getSdgContents_Sdxs();
        public static final EReference SDG_CONTENTS__SDS = eINSTANCE.getSdgContents_Sds();
        public static final EReference SDG_CONTENTS__SDGS = eINSTANCE.getSdgContents_Sdgs();
        public static final EClass SDG = eINSTANCE.getSdg();
        public static final EAttribute SDG__GID = eINSTANCE.getSdg_Gid();
        public static final EReference SDG__SDG_CAPTION = eINSTANCE.getSdg_SdgCaption();
        public static final EReference SDG__SDG_CAPTION_REF = eINSTANCE.getSdg_SdgCaptionRef();
        public static final EReference SDG__SDG_CONTENTS_TYPE = eINSTANCE.getSdg_SdgContentsType();
    }
}

