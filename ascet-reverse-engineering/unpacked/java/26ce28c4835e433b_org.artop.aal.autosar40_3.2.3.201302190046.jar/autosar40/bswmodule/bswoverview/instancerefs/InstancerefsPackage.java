/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.bswmodule.bswoverview.instancerefs;

import autosar40.bswmodule.bswoverview.instancerefs.InstancerefsFactory;
import autosar40.bswmodule.bswoverview.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/bm/bo/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF = 0;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__GCHECKSUM = 0;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__CHECKSUM = 2;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__TIMESTAMP = 3;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__BASE = 4;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__CONTEXT_MODE_DECLARATION_GROUP = 5;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__TARGET_MODE = 6;
    public static final int MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF_FEATURE_COUNT = 7;

    public EClass getModeInBswModuleDescriptionInstanceRef();

    public EReference getModeInBswModuleDescriptionInstanceRef_Base();

    public EReference getModeInBswModuleDescriptionInstanceRef_ContextModeDeclarationGroup();

    public EReference getModeInBswModuleDescriptionInstanceRef_TargetMode();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF = eINSTANCE.getModeInBswModuleDescriptionInstanceRef();
        public static final EReference MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__BASE = eINSTANCE.getModeInBswModuleDescriptionInstanceRef_Base();
        public static final EReference MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__CONTEXT_MODE_DECLARATION_GROUP = eINSTANCE.getModeInBswModuleDescriptionInstanceRef_ContextModeDeclarationGroup();
        public static final EReference MODE_IN_BSW_MODULE_DESCRIPTION_INSTANCE_REF__TARGET_MODE = eINSTANCE.getModeInBswModuleDescriptionInstanceRef_TargetMode();
    }
}

