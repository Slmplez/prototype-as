/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.composition.instanceref;

import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeProvider;
import autosar3x.swcomponent.composition.instanceref.AssemblyConnectorPrototypeRequester;
import autosar3x.swcomponent.composition.instanceref.DelegationConnectorPrototypeInnerPort;
import autosar3x.swcomponent.composition.instanceref.InstancerefPackage;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeApplicationPort;
import autosar3x.swcomponent.composition.instanceref.ServiceConnectorPrototypeServicePort;
import autosar3x.swcomponent.composition.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public AssemblyConnectorPrototypeProvider createAssemblyConnectorPrototypeProvider();

    public AssemblyConnectorPrototypeRequester createAssemblyConnectorPrototypeRequester();

    public DelegationConnectorPrototypeInnerPort createDelegationConnectorPrototypeInnerPort();

    public ServiceConnectorPrototypeApplicationPort createServiceConnectorPrototypeApplicationPort();

    public ServiceConnectorPrototypeServicePort createServiceConnectorPrototypeServicePort();

    public InstancerefPackage getInstancerefPackage();
}

