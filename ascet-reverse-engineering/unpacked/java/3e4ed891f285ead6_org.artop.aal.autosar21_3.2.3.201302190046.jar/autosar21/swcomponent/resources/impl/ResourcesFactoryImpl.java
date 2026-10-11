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
package autosar21.swcomponent.resources.impl;

import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.ResourcesFactory;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.impl.ResourceConsumptionImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ResourcesFactoryImpl
extends EFactoryImpl
implements ResourcesFactory {
    public static ResourcesFactory init() {
        try {
            ResourcesFactory theResourcesFactory = (ResourcesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r");
            if (theResourcesFactory != null) {
                return theResourcesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ResourcesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createResourceConsumption();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ResourceConsumption createResourceConsumption() {
        ResourceConsumptionImpl resourceConsumption = new ResourceConsumptionImpl();
        return resourceConsumption;
    }

    public ResourcesPackage getResourcesPackage() {
        return (ResourcesPackage)this.getEPackage();
    }

    @Deprecated
    public static ResourcesPackage getPackage() {
        return ResourcesPackage.eINSTANCE;
    }
}

