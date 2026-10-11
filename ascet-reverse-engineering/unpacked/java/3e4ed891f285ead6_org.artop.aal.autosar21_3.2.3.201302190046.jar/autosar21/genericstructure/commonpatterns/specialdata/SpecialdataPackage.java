/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.genericstructure.commonpatterns.specialdata;

import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataFactory;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SpecialdataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SpecialdataPackage
extends EPackage {
    public static final String eNAME = "specialdata";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/cp/sd";
    public static final String eNS_PREFIX = "";
    public static final SpecialdataPackage eINSTANCE = SpecialdataPackageImpl.init();
    public static final int CAPTION = 0;
    public static final int CAPTION__GCHECKSUM = 0;
    public static final int CAPTION__GTIMESTAMP = 1;
    public static final int CAPTION__CHECKSUM = 2;
    public static final int CAPTION__TIMESTAMP = 3;
    public static final int CAPTION__GSHORT_NAME = 4;
    public static final int CAPTION__GUUID = 5;
    public static final int CAPTION__GCATEGORY = 6;
    public static final int CAPTION__GDESC = 7;
    public static final int CAPTION__SHORT_NAME = 8;
    public static final int CAPTION__LONG_NAME = 9;
    public static final int CAPTION__DESC = 10;
    public static final int CAPTION__CATEGORY = 11;
    public static final int CAPTION__ADMIN_DATA = 12;
    public static final int CAPTION__UUID = 13;
    public static final int CAPTION__ALL_EXTENSIONS = 14;
    public static final int CAPTION__CONTAINED_EXTENSIONS = 15;
    public static final int CAPTION__SDG = 16;
    public static final int CAPTION_FEATURE_COUNT = 17;
    public static final int SD = 1;
    public static final int SD__GCHECKSUM = 0;
    public static final int SD__GTIMESTAMP = 1;
    public static final int SD__CHECKSUM = 2;
    public static final int SD__TIMESTAMP = 3;
    public static final int SD__MIXED = 4;
    public static final int SD__SDG_CONTENTS = 5;
    public static final int SD__GID = 6;
    public static final int SD__ID_CLASS = 7;
    public static final int SD_FEATURE_COUNT = 8;
    public static final int SDG_CONTENTS = 2;
    public static final int SDG_CONTENTS__GCHECKSUM = 0;
    public static final int SDG_CONTENTS__GTIMESTAMP = 1;
    public static final int SDG_CONTENTS__CHECKSUM = 2;
    public static final int SDG_CONTENTS__TIMESTAMP = 3;
    public static final int SDG_CONTENTS__SDG = 4;
    public static final int SDG_CONTENTS__SDS = 5;
    public static final int SDG_CONTENTS__SDGS = 6;
    public static final int SDG_CONTENTS_FEATURE_COUNT = 7;
    public static final int SDGS = 3;
    public static final int SDGS__GCHECKSUM = 0;
    public static final int SDGS__GTIMESTAMP = 1;
    public static final int SDGS__CHECKSUM = 2;
    public static final int SDGS__TIMESTAMP = 3;
    public static final int SDGS__SDGS = 4;
    public static final int SDGS_FEATURE_COUNT = 5;
    public static final int SDG = 4;
    public static final int SDG__GCHECKSUM = 0;
    public static final int SDG__GTIMESTAMP = 1;
    public static final int SDG__CHECKSUM = 2;
    public static final int SDG__TIMESTAMP = 3;
    public static final int SDG__GID = 4;
    public static final int SDG__SDG_CAPTION = 5;
    public static final int SDG__SDG_CONTENTS_TYPE = 6;
    public static final int SDG_FEATURE_COUNT = 7;

    public EClass getCaption();

    public EReference getCaption_Sdg();

    public EClass getSd();

    public EAttribute getSd_Mixed();

    public EReference getSd_SdgContents();

    public EAttribute getSd_Gid();

    public EAttribute getSd_IdClass();

    public EClass getSdgContents();

    public EReference getSdgContents_Sdg();

    public EReference getSdgContents_Sds();

    public EReference getSdgContents_Sdgs();

    public EClass getSdgs();

    public EReference getSdgs_Sdgs();

    public EClass getSdg();

    public EAttribute getSdg_Gid();

    public EReference getSdg_SdgCaption();

    public EReference getSdg_SdgContentsType();

    public SpecialdataFactory getSpecialdataFactory();

    public static interface Literals {
        public static final EClass CAPTION = eINSTANCE.getCaption();
        public static final EReference CAPTION__SDG = eINSTANCE.getCaption_Sdg();
        public static final EClass SD = eINSTANCE.getSd();
        public static final EAttribute SD__MIXED = eINSTANCE.getSd_Mixed();
        public static final EReference SD__SDG_CONTENTS = eINSTANCE.getSd_SdgContents();
        public static final EAttribute SD__GID = eINSTANCE.getSd_Gid();
        public static final EAttribute SD__ID_CLASS = eINSTANCE.getSd_IdClass();
        public static final EClass SDG_CONTENTS = eINSTANCE.getSdgContents();
        public static final EReference SDG_CONTENTS__SDG = eINSTANCE.getSdgContents_Sdg();
        public static final EReference SDG_CONTENTS__SDS = eINSTANCE.getSdgContents_Sds();
        public static final EReference SDG_CONTENTS__SDGS = eINSTANCE.getSdgContents_Sdgs();
        public static final EClass SDGS = eINSTANCE.getSdgs();
        public static final EReference SDGS__SDGS = eINSTANCE.getSdgs_Sdgs();
        public static final EClass SDG = eINSTANCE.getSdg();
        public static final EAttribute SDG__GID = eINSTANCE.getSdg_Gid();
        public static final EReference SDG__SDG_CAPTION = eINSTANCE.getSdg_SdgCaption();
        public static final EReference SDG__SDG_CONTENTS_TYPE = eINSTANCE.getSdg_SdgContentsType();
    }
}

