/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup;

import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupFactory;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ModedeclarationgroupPackage
extends EPackage {
    public static final String eNAME = "modedeclarationgroup";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/mdg";
    public static final String eNS_PREFIX = "";
    public static final ModedeclarationgroupPackage eINSTANCE = ModedeclarationgroupPackageImpl.init();
    public static final int MODE_SWITCH_POINT = 0;
    public static final int MODE_SWITCH_POINT__GCHECKSUM = 0;
    public static final int MODE_SWITCH_POINT__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_POINT__CHECKSUM = 2;
    public static final int MODE_SWITCH_POINT__TIMESTAMP = 3;
    public static final int MODE_SWITCH_POINT__GSHORT_NAME = 4;
    public static final int MODE_SWITCH_POINT__GUUID = 5;
    public static final int MODE_SWITCH_POINT__GCATEGORY = 6;
    public static final int MODE_SWITCH_POINT__GDESC = 7;
    public static final int MODE_SWITCH_POINT__SHORT_NAME = 8;
    public static final int MODE_SWITCH_POINT__LONG_NAME = 9;
    public static final int MODE_SWITCH_POINT__DESC = 10;
    public static final int MODE_SWITCH_POINT__CATEGORY = 11;
    public static final int MODE_SWITCH_POINT__ADMIN_DATA = 12;
    public static final int MODE_SWITCH_POINT__INTRODUCTION = 13;
    public static final int MODE_SWITCH_POINT__UUID = 14;
    public static final int MODE_SWITCH_POINT__ALL_EXTENSIONS = 15;
    public static final int MODE_SWITCH_POINT__CONTAINED_EXTENSIONS = 16;
    public static final int MODE_SWITCH_POINT__GMODE_GROUP = 17;
    public static final int MODE_SWITCH_POINT__RUNNABLE_ENTITY = 18;
    public static final int MODE_SWITCH_POINT__MODE_GROUP = 19;
    public static final int MODE_SWITCH_POINT_FEATURE_COUNT = 20;

    public EClass getModeSwitchPoint();

    public EReference getModeSwitchPoint_RunnableEntity();

    public EReference getModeSwitchPoint_ModeGroup();

    public ModedeclarationgroupFactory getModedeclarationgroupFactory();

    public static interface Literals {
        public static final EClass MODE_SWITCH_POINT = eINSTANCE.getModeSwitchPoint();
        public static final EReference MODE_SWITCH_POINT__RUNNABLE_ENTITY = eINSTANCE.getModeSwitchPoint_RunnableEntity();
        public static final EReference MODE_SWITCH_POINT__MODE_GROUP = eINSTANCE.getModeSwitchPoint_ModeGroup();
    }
}

