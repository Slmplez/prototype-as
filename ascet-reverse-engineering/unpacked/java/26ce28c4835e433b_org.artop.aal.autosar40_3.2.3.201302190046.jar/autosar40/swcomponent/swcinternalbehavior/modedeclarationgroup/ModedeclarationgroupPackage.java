/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupFactory;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ModedeclarationgroupPackage
extends EPackage {
    public static final String eNAME = "modedeclarationgroup";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg";
    public static final String eNS_PREFIX = "";
    public static final ModedeclarationgroupPackage eINSTANCE = ModedeclarationgroupPackageImpl.init();
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET = 0;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__GCHECKSUM = 0;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__GTIMESTAMP = 1;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__CHECKSUM = 2;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__TIMESTAMP = 3;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__SWC_INTERNAL_BEHAVIOR = 4;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__MODE_DECLARATION_GROUPS = 5;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET__PREFIX = 6;
    public static final int INCLUDED_MODE_DECLARATION_GROUP_SET_FEATURE_COUNT = 7;
    public static final int MODE_ACCESS_POINT = 1;
    public static final int MODE_ACCESS_POINT__GCHECKSUM = 0;
    public static final int MODE_ACCESS_POINT__GTIMESTAMP = 1;
    public static final int MODE_ACCESS_POINT__CHECKSUM = 2;
    public static final int MODE_ACCESS_POINT__TIMESTAMP = 3;
    public static final int MODE_ACCESS_POINT__RUNNABLE_ENTITY = 4;
    public static final int MODE_ACCESS_POINT__MODE_GROUP = 5;
    public static final int MODE_ACCESS_POINT__VARIATION_POINT = 6;
    public static final int MODE_ACCESS_POINT_FEATURE_COUNT = 7;
    public static final int MODE_SWITCH_POINT = 2;
    public static final int MODE_SWITCH_POINT__GCHECKSUM = 0;
    public static final int MODE_SWITCH_POINT__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_POINT__CHECKSUM = 2;
    public static final int MODE_SWITCH_POINT__TIMESTAMP = 3;
    public static final int MODE_SWITCH_POINT__GSHORT_NAME = 4;
    public static final int MODE_SWITCH_POINT__SHORT_NAME = 5;
    public static final int MODE_SWITCH_POINT__LONG_NAME = 6;
    public static final int MODE_SWITCH_POINT__GUUID = 7;
    public static final int MODE_SWITCH_POINT__GCATEGORY = 8;
    public static final int MODE_SWITCH_POINT__GDESC = 9;
    public static final int MODE_SWITCH_POINT__DESC = 10;
    public static final int MODE_SWITCH_POINT__CATEGORY = 11;
    public static final int MODE_SWITCH_POINT__ADMIN_DATA = 12;
    public static final int MODE_SWITCH_POINT__INTRODUCTION = 13;
    public static final int MODE_SWITCH_POINT__ANNOTATIONS = 14;
    public static final int MODE_SWITCH_POINT__UUID = 15;
    public static final int MODE_SWITCH_POINT__ALL_EXTENSIONS = 16;
    public static final int MODE_SWITCH_POINT__CONTAINED_EXTENSIONS = 17;
    public static final int MODE_SWITCH_POINT__GMODE_GROUP = 18;
    public static final int MODE_SWITCH_POINT__RUNNABLE_ENTITY = 19;
    public static final int MODE_SWITCH_POINT__MODE_GROUP = 20;
    public static final int MODE_SWITCH_POINT__VARIATION_POINT = 21;
    public static final int MODE_SWITCH_POINT_FEATURE_COUNT = 22;

    public EClass getIncludedModeDeclarationGroupSet();

    public EReference getIncludedModeDeclarationGroupSet_SwcInternalBehavior();

    public EReference getIncludedModeDeclarationGroupSet_ModeDeclarationGroups();

    public EAttribute getIncludedModeDeclarationGroupSet_Prefix();

    public EClass getModeAccessPoint();

    public EReference getModeAccessPoint_RunnableEntity();

    public EReference getModeAccessPoint_ModeGroup();

    public EReference getModeAccessPoint_VariationPoint();

    public EClass getModeSwitchPoint();

    public EReference getModeSwitchPoint_RunnableEntity();

    public EReference getModeSwitchPoint_ModeGroup();

    public EReference getModeSwitchPoint_VariationPoint();

    public ModedeclarationgroupFactory getModedeclarationgroupFactory();

    public static interface Literals {
        public static final EClass INCLUDED_MODE_DECLARATION_GROUP_SET = eINSTANCE.getIncludedModeDeclarationGroupSet();
        public static final EReference INCLUDED_MODE_DECLARATION_GROUP_SET__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getIncludedModeDeclarationGroupSet_SwcInternalBehavior();
        public static final EReference INCLUDED_MODE_DECLARATION_GROUP_SET__MODE_DECLARATION_GROUPS = eINSTANCE.getIncludedModeDeclarationGroupSet_ModeDeclarationGroups();
        public static final EAttribute INCLUDED_MODE_DECLARATION_GROUP_SET__PREFIX = eINSTANCE.getIncludedModeDeclarationGroupSet_Prefix();
        public static final EClass MODE_ACCESS_POINT = eINSTANCE.getModeAccessPoint();
        public static final EReference MODE_ACCESS_POINT__RUNNABLE_ENTITY = eINSTANCE.getModeAccessPoint_RunnableEntity();
        public static final EReference MODE_ACCESS_POINT__MODE_GROUP = eINSTANCE.getModeAccessPoint_ModeGroup();
        public static final EReference MODE_ACCESS_POINT__VARIATION_POINT = eINSTANCE.getModeAccessPoint_VariationPoint();
        public static final EClass MODE_SWITCH_POINT = eINSTANCE.getModeSwitchPoint();
        public static final EReference MODE_SWITCH_POINT__RUNNABLE_ENTITY = eINSTANCE.getModeSwitchPoint_RunnableEntity();
        public static final EReference MODE_SWITCH_POINT__MODE_GROUP = eINSTANCE.getModeSwitchPoint_ModeGroup();
        public static final EReference MODE_SWITCH_POINT__VARIATION_POINT = eINSTANCE.getModeSwitchPoint_VariationPoint();
    }
}

