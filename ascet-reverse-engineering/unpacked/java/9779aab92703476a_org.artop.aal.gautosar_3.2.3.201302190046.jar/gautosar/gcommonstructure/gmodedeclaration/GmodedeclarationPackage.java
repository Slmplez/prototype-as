/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gcommonstructure.gmodedeclaration;

import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationFactory;
import gautosar.gcommonstructure.gmodedeclaration.impl.GmodedeclarationPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GmodedeclarationPackage
extends EPackage {
    public static final String eNAME = "gmodedeclaration";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/md";
    public static final String eNS_PREFIX = "";
    public static final GmodedeclarationPackage eINSTANCE = GmodedeclarationPackageImpl.init();
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE = 0;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GCHECKSUM = 0;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GUUID = 3;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GCATEGORY = 4;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GDESC = 5;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE__GTYPE = 6;
    public static final int GMODE_DECLARATION_GROUP_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GMODE_DECLARATION_GROUP = 1;
    public static final int GMODE_DECLARATION_GROUP__GCHECKSUM = 0;
    public static final int GMODE_DECLARATION_GROUP__GTIMESTAMP = 1;
    public static final int GMODE_DECLARATION_GROUP__GSHORT_NAME = 2;
    public static final int GMODE_DECLARATION_GROUP__GUUID = 3;
    public static final int GMODE_DECLARATION_GROUP__GCATEGORY = 4;
    public static final int GMODE_DECLARATION_GROUP__GDESC = 5;
    public static final int GMODE_DECLARATION_GROUP__GAR_PACKAGE = 6;
    public static final int GMODE_DECLARATION_GROUP__GMODE_DECLARATIONS = 7;
    public static final int GMODE_DECLARATION_GROUP__GINITIAL_MODE = 8;
    public static final int GMODE_DECLARATION_GROUP_FEATURE_COUNT = 9;
    public static final int GMODE_DECLARATION = 2;
    public static final int GMODE_DECLARATION__GCHECKSUM = 0;
    public static final int GMODE_DECLARATION__GTIMESTAMP = 1;
    public static final int GMODE_DECLARATION__GSHORT_NAME = 2;
    public static final int GMODE_DECLARATION__GUUID = 3;
    public static final int GMODE_DECLARATION__GCATEGORY = 4;
    public static final int GMODE_DECLARATION__GDESC = 5;
    public static final int GMODE_DECLARATION_FEATURE_COUNT = 6;

    public EClass getGModeDeclarationGroupPrototype();

    public EReference getGModeDeclarationGroupPrototype_GType();

    public EClass getGModeDeclarationGroup();

    public EReference getGModeDeclarationGroup_GModeDeclarations();

    public EReference getGModeDeclarationGroup_GInitialMode();

    public EClass getGModeDeclaration();

    public GmodedeclarationFactory getGmodedeclarationFactory();

    public static interface Literals {
        public static final EClass GMODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getGModeDeclarationGroupPrototype();
        public static final EReference GMODE_DECLARATION_GROUP_PROTOTYPE__GTYPE = eINSTANCE.getGModeDeclarationGroupPrototype_GType();
        public static final EClass GMODE_DECLARATION_GROUP = eINSTANCE.getGModeDeclarationGroup();
        public static final EReference GMODE_DECLARATION_GROUP__GMODE_DECLARATIONS = eINSTANCE.getGModeDeclarationGroup_GModeDeclarations();
        public static final EReference GMODE_DECLARATION_GROUP__GINITIAL_MODE = eINSTANCE.getGModeDeclarationGroup_GInitialMode();
        public static final EClass GMODE_DECLARATION = eINSTANCE.getGModeDeclaration();
    }
}

