/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.swcinternalbehavior.servicemapping;

import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingFactory;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServicemappingPackage
extends EPackage {
    public static final String eNAME = "servicemapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping";
    public static final String eNS_PREFIX = "";
    public static final ServicemappingPackage eINSTANCE = ServicemappingPackageImpl.init();
    public static final int ROLE_BASED_PORT_ASSIGNMENT = 0;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__CHECKSUM = 2;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__PORT_PROTOTYPE = 4;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__ROLE = 5;
    public static final int ROLE_BASED_PORT_ASSIGNMENT__VARIATION_POINT = 6;
    public static final int ROLE_BASED_PORT_ASSIGNMENT_FEATURE_COUNT = 7;
    public static final int SWC_SERVICE_DEPENDENCY = 1;
    public static final int SWC_SERVICE_DEPENDENCY__GCHECKSUM = 0;
    public static final int SWC_SERVICE_DEPENDENCY__GTIMESTAMP = 1;
    public static final int SWC_SERVICE_DEPENDENCY__CHECKSUM = 2;
    public static final int SWC_SERVICE_DEPENDENCY__TIMESTAMP = 3;
    public static final int SWC_SERVICE_DEPENDENCY__GSHORT_NAME = 4;
    public static final int SWC_SERVICE_DEPENDENCY__SHORT_NAME = 5;
    public static final int SWC_SERVICE_DEPENDENCY__LONG_NAME = 6;
    public static final int SWC_SERVICE_DEPENDENCY__GUUID = 7;
    public static final int SWC_SERVICE_DEPENDENCY__GCATEGORY = 8;
    public static final int SWC_SERVICE_DEPENDENCY__GDESC = 9;
    public static final int SWC_SERVICE_DEPENDENCY__DESC = 10;
    public static final int SWC_SERVICE_DEPENDENCY__CATEGORY = 11;
    public static final int SWC_SERVICE_DEPENDENCY__ADMIN_DATA = 12;
    public static final int SWC_SERVICE_DEPENDENCY__INTRODUCTION = 13;
    public static final int SWC_SERVICE_DEPENDENCY__ANNOTATIONS = 14;
    public static final int SWC_SERVICE_DEPENDENCY__UUID = 15;
    public static final int SWC_SERVICE_DEPENDENCY__ALL_EXTENSIONS = 16;
    public static final int SWC_SERVICE_DEPENDENCY__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_SERVICE_DEPENDENCY__ATP_CLASSIFIER = 18;
    public static final int SWC_SERVICE_DEPENDENCY__SWC_INTERNAL_BEHAVIOR = 19;
    public static final int SWC_SERVICE_DEPENDENCY__ASSIGNED_DATAS = 20;
    public static final int SWC_SERVICE_DEPENDENCY__ASSIGNED_PORTS = 21;
    public static final int SWC_SERVICE_DEPENDENCY__REPRESENTED_PORT_GROUP = 22;
    public static final int SWC_SERVICE_DEPENDENCY__SERVICE_NEEDS = 23;
    public static final int SWC_SERVICE_DEPENDENCY__VARIATION_POINT = 24;
    public static final int SWC_SERVICE_DEPENDENCY_FEATURE_COUNT = 25;

    public EClass getRoleBasedPortAssignment();

    public EReference getRoleBasedPortAssignment_PortPrototype();

    public EAttribute getRoleBasedPortAssignment_Role();

    public EReference getRoleBasedPortAssignment_VariationPoint();

    public EClass getSwcServiceDependency();

    public EReference getSwcServiceDependency_SwcInternalBehavior();

    public EReference getSwcServiceDependency_AssignedDatas();

    public EReference getSwcServiceDependency_AssignedPorts();

    public EReference getSwcServiceDependency_RepresentedPortGroup();

    public EReference getSwcServiceDependency_ServiceNeeds();

    public EReference getSwcServiceDependency_VariationPoint();

    public ServicemappingFactory getServicemappingFactory();

    public static interface Literals {
        public static final EClass ROLE_BASED_PORT_ASSIGNMENT = eINSTANCE.getRoleBasedPortAssignment();
        public static final EReference ROLE_BASED_PORT_ASSIGNMENT__PORT_PROTOTYPE = eINSTANCE.getRoleBasedPortAssignment_PortPrototype();
        public static final EAttribute ROLE_BASED_PORT_ASSIGNMENT__ROLE = eINSTANCE.getRoleBasedPortAssignment_Role();
        public static final EReference ROLE_BASED_PORT_ASSIGNMENT__VARIATION_POINT = eINSTANCE.getRoleBasedPortAssignment_VariationPoint();
        public static final EClass SWC_SERVICE_DEPENDENCY = eINSTANCE.getSwcServiceDependency();
        public static final EReference SWC_SERVICE_DEPENDENCY__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getSwcServiceDependency_SwcInternalBehavior();
        public static final EReference SWC_SERVICE_DEPENDENCY__ASSIGNED_DATAS = eINSTANCE.getSwcServiceDependency_AssignedDatas();
        public static final EReference SWC_SERVICE_DEPENDENCY__ASSIGNED_PORTS = eINSTANCE.getSwcServiceDependency_AssignedPorts();
        public static final EReference SWC_SERVICE_DEPENDENCY__REPRESENTED_PORT_GROUP = eINSTANCE.getSwcServiceDependency_RepresentedPortGroup();
        public static final EReference SWC_SERVICE_DEPENDENCY__SERVICE_NEEDS = eINSTANCE.getSwcServiceDependency_ServiceNeeds();
        public static final EReference SWC_SERVICE_DEPENDENCY__VARIATION_POINT = eINSTANCE.getSwcServiceDependency_VariationPoint();
    }
}

