/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.blueprintdedicated.portinterfaceblueprint;

import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintFactory;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.impl.PortinterfaceblueprintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortinterfaceblueprintPackage
extends EPackage {
    public static final String eNAME = "portinterfaceblueprint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/bd/pib";
    public static final String eNS_PREFIX = "";
    public static final PortinterfaceblueprintPackage eINSTANCE = PortinterfaceblueprintPackageImpl.init();
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING = 0;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__GCHECKSUM = 0;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__GTIMESTAMP = 1;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__CHECKSUM = 2;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__TIMESTAMP = 3;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__BLUEPRINT_MAPPING_SET = 4;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__PORT_INTERFACE_BLUEPRINT = 5;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING__DERIVED_PORT_INTERFACE = 6;
    public static final int PORT_INTERFACE_BLUEPRINT_MAPPING_FEATURE_COUNT = 7;

    public EClass getPortInterfaceBlueprintMapping();

    public EReference getPortInterfaceBlueprintMapping_PortInterfaceBlueprint();

    public EReference getPortInterfaceBlueprintMapping_DerivedPortInterface();

    public PortinterfaceblueprintFactory getPortinterfaceblueprintFactory();

    public static interface Literals {
        public static final EClass PORT_INTERFACE_BLUEPRINT_MAPPING = eINSTANCE.getPortInterfaceBlueprintMapping();
        public static final EReference PORT_INTERFACE_BLUEPRINT_MAPPING__PORT_INTERFACE_BLUEPRINT = eINSTANCE.getPortInterfaceBlueprintMapping_PortInterfaceBlueprint();
        public static final EReference PORT_INTERFACE_BLUEPRINT_MAPPING__DERIVED_PORT_INTERFACE = eINSTANCE.getPortInterfaceBlueprintMapping_DerivedPortInterface();
    }
}

