/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gcomposition;

import gautosar.gswcomponents.gcomposition.GcompositionFactory;
import gautosar.gswcomponents.gcomposition.impl.GcompositionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GcompositionPackage
extends EPackage {
    public static final String eNAME = "gcomposition";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/composition";
    public static final String eNS_PREFIX = "";
    public static final GcompositionPackage eINSTANCE = GcompositionPackageImpl.init();
    public static final int GSW_COMPONENT_PROTOTYPE = 0;
    public static final int GSW_COMPONENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int GSW_COMPONENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GSW_COMPONENT_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GSW_COMPONENT_PROTOTYPE__GUUID = 3;
    public static final int GSW_COMPONENT_PROTOTYPE__GCATEGORY = 4;
    public static final int GSW_COMPONENT_PROTOTYPE__GDESC = 5;
    public static final int GSW_COMPONENT_PROTOTYPE__GTYPE = 6;
    public static final int GSW_COMPONENT_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE = 1;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GUUID = 3;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GDESC = 5;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE__GCOMPONENTS = 8;
    public static final int GCOMPOSITION_SW_COMPONENT_TYPE_FEATURE_COUNT = 9;
    public static final int GSW_CONNECTOR = 2;
    public static final int GSW_CONNECTOR__GCHECKSUM = 0;
    public static final int GSW_CONNECTOR__GTIMESTAMP = 1;
    public static final int GSW_CONNECTOR__GSHORT_NAME = 2;
    public static final int GSW_CONNECTOR__GUUID = 3;
    public static final int GSW_CONNECTOR__GCATEGORY = 4;
    public static final int GSW_CONNECTOR__GDESC = 5;
    public static final int GSW_CONNECTOR_FEATURE_COUNT = 6;
    public static final int GASSEMBLY_SW_CONNECTOR = 3;
    public static final int GASSEMBLY_SW_CONNECTOR__GCHECKSUM = 0;
    public static final int GASSEMBLY_SW_CONNECTOR__GTIMESTAMP = 1;
    public static final int GASSEMBLY_SW_CONNECTOR__GSHORT_NAME = 2;
    public static final int GASSEMBLY_SW_CONNECTOR__GUUID = 3;
    public static final int GASSEMBLY_SW_CONNECTOR__GCATEGORY = 4;
    public static final int GASSEMBLY_SW_CONNECTOR__GDESC = 5;
    public static final int GASSEMBLY_SW_CONNECTOR__GREQUESTER = 6;
    public static final int GASSEMBLY_SW_CONNECTOR__GPROVIDER = 7;
    public static final int GASSEMBLY_SW_CONNECTOR_FEATURE_COUNT = 8;

    public EClass getGSwComponentPrototype();

    public EReference getGSwComponentPrototype_GType();

    public EClass getGCompositionSwComponentType();

    public EReference getGCompositionSwComponentType_GComponents();

    public EClass getGSwConnector();

    public EClass getGAssemblySwConnector();

    public EReference getGAssemblySwConnector_GRequester();

    public EReference getGAssemblySwConnector_GProvider();

    public GcompositionFactory getGcompositionFactory();

    public static interface Literals {
        public static final EClass GSW_COMPONENT_PROTOTYPE = eINSTANCE.getGSwComponentPrototype();
        public static final EReference GSW_COMPONENT_PROTOTYPE__GTYPE = eINSTANCE.getGSwComponentPrototype_GType();
        public static final EClass GCOMPOSITION_SW_COMPONENT_TYPE = eINSTANCE.getGCompositionSwComponentType();
        public static final EReference GCOMPOSITION_SW_COMPONENT_TYPE__GCOMPONENTS = eINSTANCE.getGCompositionSwComponentType_GComponents();
        public static final EClass GSW_CONNECTOR = eINSTANCE.getGSwConnector();
        public static final EClass GASSEMBLY_SW_CONNECTOR = eINSTANCE.getGAssemblySwConnector();
        public static final EReference GASSEMBLY_SW_CONNECTOR__GREQUESTER = eINSTANCE.getGAssemblySwConnector_GRequester();
        public static final EReference GASSEMBLY_SW_CONNECTOR__GPROVIDER = eINSTANCE.getGAssemblySwConnector_GProvider();
    }
}

