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
package autosar3x.commonstructure.resourceconsumption.impl;

import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionFactory;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.commonstructure.resourceconsumption.impl.HardwareConfigurationImpl;
import autosar3x.commonstructure.resourceconsumption.impl.ResourceConsumptionImpl;
import autosar3x.commonstructure.resourceconsumption.impl.SoftwareContextImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ResourceconsumptionFactoryImpl
extends EFactoryImpl
implements ResourceconsumptionFactory {
    public static ResourceconsumptionFactory init() {
        try {
            ResourceconsumptionFactory theResourceconsumptionFactory = (ResourceconsumptionFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/rc");
            if (theResourceconsumptionFactory != null) {
                return theResourceconsumptionFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ResourceconsumptionFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createHardwareConfiguration();
            }
            case 1: {
                return this.createSoftwareContext();
            }
            case 2: {
                return this.createResourceConsumption();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public HardwareConfiguration createHardwareConfiguration() {
        HardwareConfigurationImpl hardwareConfiguration = new HardwareConfigurationImpl();
        return hardwareConfiguration;
    }

    public SoftwareContext createSoftwareContext() {
        SoftwareContextImpl softwareContext = new SoftwareContextImpl();
        return softwareContext;
    }

    public ResourceConsumption createResourceConsumption() {
        ResourceConsumptionImpl resourceConsumption = new ResourceConsumptionImpl();
        return resourceConsumption;
    }

    public ResourceconsumptionPackage getResourceconsumptionPackage() {
        return (ResourceconsumptionPackage)this.getEPackage();
    }

    @Deprecated
    public static ResourceconsumptionPackage getPackage() {
        return ResourceconsumptionPackage.eINSTANCE;
    }
}

