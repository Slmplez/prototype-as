/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.components.instanceref;

import autosar3x.swcomponent.components.instanceref.InstancerefFactory;
import autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/components/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int PORT_GROUP_INNER_GROUP = 0;
    public static final int PORT_GROUP_INNER_GROUP__GCHECKSUM = 0;
    public static final int PORT_GROUP_INNER_GROUP__GTIMESTAMP = 1;
    public static final int PORT_GROUP_INNER_GROUP__CHECKSUM = 2;
    public static final int PORT_GROUP_INNER_GROUP__TIMESTAMP = 3;
    public static final int PORT_GROUP_INNER_GROUP__COMPONENT_PROTOTYPES = 4;
    public static final int PORT_GROUP_INNER_GROUP__PORT_GROUP = 5;
    public static final int PORT_GROUP_INNER_GROUP_FEATURE_COUNT = 6;

    public EClass getPortGroupInnerGroup();

    public EReference getPortGroupInnerGroup_ComponentPrototypes();

    public EReference getPortGroupInnerGroup_PortGroup();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass PORT_GROUP_INNER_GROUP = eINSTANCE.getPortGroupInnerGroup();
        public static final EReference PORT_GROUP_INNER_GROUP__COMPONENT_PROTOTYPES = eINSTANCE.getPortGroupInnerGroup_ComponentPrototypes();
        public static final EReference PORT_GROUP_INNER_GROUP__PORT_GROUP = eINSTANCE.getPortGroupInnerGroup_PortGroup();
    }
}

