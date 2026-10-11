/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.services;

import autosar21.swcomponent.services.EcuSwComposition;
import autosar21.swcomponent.services.ServiceComponentPrototype;
import autosar21.swcomponent.services.ServicesPackage;
import autosar21.swcomponent.services.impl.ServicesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ServicesFactory
extends EFactory {
    public static final ServicesFactory eINSTANCE = ServicesFactoryImpl.init();

    public EcuSwComposition createEcuSwComposition();

    public ServiceComponentPrototype createServiceComponentPrototype();

    public ServicesPackage getServicesPackage();
}

