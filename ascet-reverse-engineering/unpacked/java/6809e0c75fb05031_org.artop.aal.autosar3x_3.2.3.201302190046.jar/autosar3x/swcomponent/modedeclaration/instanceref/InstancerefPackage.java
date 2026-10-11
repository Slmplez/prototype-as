/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.modedeclaration.instanceref;

import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefFactory;
import autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/md/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE = 0;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__GCHECKSUM = 0;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__GTIMESTAMP = 1;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__CHECKSUM = 2;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__TIMESTAMP = 3;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DISABLING_DEPENDENCY = 4;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__RPORT_PROTOTYPE = 5;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DECLARATION_GROUP_PROTOTYPE = 6;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DECLARATION = 7;
    public static final int MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE_FEATURE_COUNT = 8;

    public EClass getModeDisablingDependencyDependentOnMode();

    public EReference getModeDisablingDependencyDependentOnMode_ModeDisablingDependency();

    public EReference getModeDisablingDependencyDependentOnMode_RPortPrototype();

    public EReference getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype();

    public EReference getModeDisablingDependencyDependentOnMode_ModeDeclaration();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE = eINSTANCE.getModeDisablingDependencyDependentOnMode();
        public static final EReference MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DISABLING_DEPENDENCY = eINSTANCE.getModeDisablingDependencyDependentOnMode_ModeDisablingDependency();
        public static final EReference MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__RPORT_PROTOTYPE = eINSTANCE.getModeDisablingDependencyDependentOnMode_RPortPrototype();
        public static final EReference MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype();
        public static final EReference MODE_DISABLING_DEPENDENCY_DEPENDENT_ON_MODE__MODE_DECLARATION = eINSTANCE.getModeDisablingDependencyDependentOnMode_ModeDeclaration();
    }
}

