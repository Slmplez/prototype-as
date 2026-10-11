/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.swcinternalbehavior.servicemapping;

import autosar40.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPortAssignment;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.SwcServiceDependency;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServicemappingFactory
extends EFactory {
    public static final ServicemappingFactory eINSTANCE = ServicemappingFactoryImpl.init();

    public RoleBasedPortAssignment createRoleBasedPortAssignment();

    public SwcServiceDependency createSwcServiceDependency();

    public ServicemappingPackage getServicemappingPackage();
}

