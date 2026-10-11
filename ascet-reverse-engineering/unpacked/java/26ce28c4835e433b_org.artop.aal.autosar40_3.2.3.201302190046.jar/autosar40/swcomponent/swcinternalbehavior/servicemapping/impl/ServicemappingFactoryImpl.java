/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.swcomponent.swcinternalbehavior.servicemapping.impl;

import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingFactory;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.RoleBasedPortAssignmentImpl;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.SwcServiceDependencyImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ServicemappingFactoryImpl
extends EFactoryImpl
implements ServicemappingFactory {
    public static ServicemappingFactory init() {
        try {
            ServicemappingFactory theServicemappingFactory = (ServicemappingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/smapping");
            if (theServicemappingFactory != null) {
                return theServicemappingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ServicemappingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createRoleBasedPortAssignment();
            }
            case 1: {
                return this.createSwcServiceDependency();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public RoleBasedPortAssignment createRoleBasedPortAssignment() {
        RoleBasedPortAssignmentImpl roleBasedPortAssignment = new RoleBasedPortAssignmentImpl();
        return roleBasedPortAssignment;
    }

    public SwcServiceDependency createSwcServiceDependency() {
        SwcServiceDependencyImpl swcServiceDependency = new SwcServiceDependencyImpl();
        return swcServiceDependency;
    }

    public ServicemappingPackage getServicemappingPackage() {
        return (ServicemappingPackage)this.getEPackage();
    }

    @Deprecated
    public static ServicemappingPackage getPackage() {
        return ServicemappingPackage.eINSTANCE;
    }
}

