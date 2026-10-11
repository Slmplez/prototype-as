/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.modedeclaration;

import autosar3x.swcomponent.modedeclaration.ModedeclarationFactory;
import autosar3x.swcomponent.modedeclaration.impl.ModedeclarationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ModedeclarationPackage
extends EPackage {
    public static final String eNAME = "modedeclaration";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/md";
    public static final String eNS_PREFIX = "";
    public static final ModedeclarationPackage eINSTANCE = ModedeclarationPackageImpl.init();
    public static final int MODE_DECLARATION = 0;
    public static final int MODE_DECLARATION__GCHECKSUM = 0;
    public static final int MODE_DECLARATION__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION__CHECKSUM = 2;
    public static final int MODE_DECLARATION__TIMESTAMP = 3;
    public static final int MODE_DECLARATION__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION__GUUID = 5;
    public static final int MODE_DECLARATION__GCATEGORY = 6;
    public static final int MODE_DECLARATION__GDESC = 7;
    public static final int MODE_DECLARATION__SHORT_NAME = 8;
    public static final int MODE_DECLARATION__LONG_NAME = 9;
    public static final int MODE_DECLARATION__DESC = 10;
    public static final int MODE_DECLARATION__CATEGORY = 11;
    public static final int MODE_DECLARATION__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION__INTRODUCTION = 13;
    public static final int MODE_DECLARATION__UUID = 14;
    public static final int MODE_DECLARATION__ALL_EXTENSIONS = 15;
    public static final int MODE_DECLARATION__CONTAINED_EXTENSIONS = 16;
    public static final int MODE_DECLARATION__MODE_DECLARATION_GROUP = 17;
    public static final int MODE_DECLARATION_FEATURE_COUNT = 18;
    public static final int MODE_DISABLING_DEPENDENCY = 1;
    public static final int MODE_DISABLING_DEPENDENCY__GCHECKSUM = 0;
    public static final int MODE_DISABLING_DEPENDENCY__GTIMESTAMP = 1;
    public static final int MODE_DISABLING_DEPENDENCY__CHECKSUM = 2;
    public static final int MODE_DISABLING_DEPENDENCY__TIMESTAMP = 3;
    public static final int MODE_DISABLING_DEPENDENCY__RTE_EVENT = 4;
    public static final int MODE_DISABLING_DEPENDENCY__DEPENDENT_ON_MODES = 5;
    public static final int MODE_DISABLING_DEPENDENCY_FEATURE_COUNT = 6;
    public static final int MODE_DECLARATION_GROUP = 2;
    public static final int MODE_DECLARATION_GROUP__GCHECKSUM = 0;
    public static final int MODE_DECLARATION_GROUP__GTIMESTAMP = 1;
    public static final int MODE_DECLARATION_GROUP__CHECKSUM = 2;
    public static final int MODE_DECLARATION_GROUP__TIMESTAMP = 3;
    public static final int MODE_DECLARATION_GROUP__GSHORT_NAME = 4;
    public static final int MODE_DECLARATION_GROUP__GUUID = 5;
    public static final int MODE_DECLARATION_GROUP__GCATEGORY = 6;
    public static final int MODE_DECLARATION_GROUP__GDESC = 7;
    public static final int MODE_DECLARATION_GROUP__SHORT_NAME = 8;
    public static final int MODE_DECLARATION_GROUP__LONG_NAME = 9;
    public static final int MODE_DECLARATION_GROUP__DESC = 10;
    public static final int MODE_DECLARATION_GROUP__CATEGORY = 11;
    public static final int MODE_DECLARATION_GROUP__ADMIN_DATA = 12;
    public static final int MODE_DECLARATION_GROUP__INTRODUCTION = 13;
    public static final int MODE_DECLARATION_GROUP__UUID = 14;
    public static final int MODE_DECLARATION_GROUP__ALL_EXTENSIONS = 15;
    public static final int MODE_DECLARATION_GROUP__CONTAINED_EXTENSIONS = 16;
    public static final int MODE_DECLARATION_GROUP__GAR_PACKAGE = 17;
    public static final int MODE_DECLARATION_GROUP__AR_PACKAGE = 18;
    public static final int MODE_DECLARATION_GROUP__GMODE_DECLARATIONS = 19;
    public static final int MODE_DECLARATION_GROUP__GINITIAL_MODE = 20;
    public static final int MODE_DECLARATION_GROUP__INITIAL_MODE = 21;
    public static final int MODE_DECLARATION_GROUP__MODE_DECLARATIONS = 22;
    public static final int MODE_DECLARATION_GROUP_FEATURE_COUNT = 23;
    public static final int MODE_ACTIVATION_KIND = 3;

    public EClass getModeDeclaration();

    public EReference getModeDeclaration_ModeDeclarationGroup();

    public EClass getModeDisablingDependency();

    public EReference getModeDisablingDependency_RTEEvent();

    public EReference getModeDisablingDependency_DependentOnModes();

    public EClass getModeDeclarationGroup();

    public EReference getModeDeclarationGroup_InitialMode();

    public EReference getModeDeclarationGroup_ModeDeclarations();

    public EEnum getModeActivationKind();

    public ModedeclarationFactory getModedeclarationFactory();

    public static interface Literals {
        public static final EClass MODE_DECLARATION = eINSTANCE.getModeDeclaration();
        public static final EReference MODE_DECLARATION__MODE_DECLARATION_GROUP = eINSTANCE.getModeDeclaration_ModeDeclarationGroup();
        public static final EClass MODE_DISABLING_DEPENDENCY = eINSTANCE.getModeDisablingDependency();
        public static final EReference MODE_DISABLING_DEPENDENCY__RTE_EVENT = eINSTANCE.getModeDisablingDependency_RTEEvent();
        public static final EReference MODE_DISABLING_DEPENDENCY__DEPENDENT_ON_MODES = eINSTANCE.getModeDisablingDependency_DependentOnModes();
        public static final EClass MODE_DECLARATION_GROUP = eINSTANCE.getModeDeclarationGroup();
        public static final EReference MODE_DECLARATION_GROUP__INITIAL_MODE = eINSTANCE.getModeDeclarationGroup_InitialMode();
        public static final EReference MODE_DECLARATION_GROUP__MODE_DECLARATIONS = eINSTANCE.getModeDeclarationGroup_ModeDeclarations();
        public static final EEnum MODE_ACTIVATION_KIND = eINSTANCE.getModeActivationKind();
    }
}

