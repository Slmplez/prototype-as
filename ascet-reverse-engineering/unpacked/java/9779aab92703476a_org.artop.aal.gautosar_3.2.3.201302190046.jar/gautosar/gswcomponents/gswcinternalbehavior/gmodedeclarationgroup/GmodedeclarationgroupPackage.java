/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup;

import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.impl.GmodedeclarationgroupPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GmodedeclarationgroupPackage
extends EPackage {
    public static final String eNAME = "gmodedeclarationgroup";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib/mdg";
    public static final String eNS_PREFIX = "";
    public static final GmodedeclarationgroupPackage eINSTANCE = GmodedeclarationgroupPackageImpl.init();
    public static final int GMODE_SWITCH_POINT = 0;
    public static final int GMODE_SWITCH_POINT__GCHECKSUM = 0;
    public static final int GMODE_SWITCH_POINT__GTIMESTAMP = 1;
    public static final int GMODE_SWITCH_POINT__GSHORT_NAME = 2;
    public static final int GMODE_SWITCH_POINT__GUUID = 3;
    public static final int GMODE_SWITCH_POINT__GCATEGORY = 4;
    public static final int GMODE_SWITCH_POINT__GDESC = 5;
    public static final int GMODE_SWITCH_POINT__GMODE_GROUP = 6;
    public static final int GMODE_SWITCH_POINT_FEATURE_COUNT = 7;

    public EClass getGModeSwitchPoint();

    public EReference getGModeSwitchPoint_GModeGroup();

    public GmodedeclarationgroupFactory getGmodedeclarationgroupFactory();

    public static interface Literals {
        public static final EClass GMODE_SWITCH_POINT = eINSTANCE.getGModeSwitchPoint();
        public static final EReference GMODE_SWITCH_POINT__GMODE_GROUP = eINSTANCE.getGModeSwitchPoint_GModeGroup();
    }
}

