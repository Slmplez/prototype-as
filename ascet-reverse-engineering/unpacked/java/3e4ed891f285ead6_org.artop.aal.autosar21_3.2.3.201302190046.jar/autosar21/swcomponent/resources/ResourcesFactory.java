/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources;

import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.impl.ResourcesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ResourcesFactory
extends EFactory {
    public static final ResourcesFactory eINSTANCE = ResourcesFactoryImpl.init();

    public ResourceConsumption createResourceConsumption();

    public ResourcesPackage getResourcesPackage();
}

