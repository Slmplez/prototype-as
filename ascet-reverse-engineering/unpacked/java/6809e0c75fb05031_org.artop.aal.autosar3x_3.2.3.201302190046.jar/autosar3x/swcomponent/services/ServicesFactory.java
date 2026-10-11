/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.services;

import autosar3x.swcomponent.services.EcuSwComposition;
import autosar3x.swcomponent.services.ServiceComponentPrototype;
import autosar3x.swcomponent.services.ServicesPackage;
import autosar3x.swcomponent.services.impl.ServicesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServicesFactory
extends EFactory {
    public static final ServicesFactory eINSTANCE = ServicesFactoryImpl.init();

    public ServiceComponentPrototype createServiceComponentPrototype();

    public EcuSwComposition createEcuSwComposition();

    public ServicesPackage getServicesPackage();
}

