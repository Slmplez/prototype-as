/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref;

import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.InstancerefFactory;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/mdg/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int MODE_SWITCH_POINT_MODE_GROUP = 0;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__GCHECKSUM = 0;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__GTIMESTAMP = 1;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__CHECKSUM = 2;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__TIMESTAMP = 3;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__GCONTEXT_PPORT = 4;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__GTARGET_MODE_GROUP = 5;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__MODE_SWITCH_POINT = 6;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__PPORT_PROTOTYPE = 7;
    public static final int MODE_SWITCH_POINT_MODE_GROUP__MODE_DECLARATION_GROUP_PROTOTYPE = 8;
    public static final int MODE_SWITCH_POINT_MODE_GROUP_FEATURE_COUNT = 9;

    public EClass getModeSwitchPointModeGroup();

    public EReference getModeSwitchPointModeGroup_ModeSwitchPoint();

    public EReference getModeSwitchPointModeGroup_PPortPrototype();

    public EReference getModeSwitchPointModeGroup_ModeDeclarationGroupPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass MODE_SWITCH_POINT_MODE_GROUP = eINSTANCE.getModeSwitchPointModeGroup();
        public static final EReference MODE_SWITCH_POINT_MODE_GROUP__MODE_SWITCH_POINT = eINSTANCE.getModeSwitchPointModeGroup_ModeSwitchPoint();
        public static final EReference MODE_SWITCH_POINT_MODE_GROUP__PPORT_PROTOTYPE = eINSTANCE.getModeSwitchPointModeGroup_PPortPrototype();
        public static final EReference MODE_SWITCH_POINT_MODE_GROUP__MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeSwitchPointModeGroup_ModeDeclarationGroupPrototype();
    }
}

