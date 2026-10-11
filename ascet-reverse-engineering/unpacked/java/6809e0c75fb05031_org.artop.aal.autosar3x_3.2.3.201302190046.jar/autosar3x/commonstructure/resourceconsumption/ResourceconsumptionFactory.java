/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.resourceconsumption;

import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.commonstructure.resourceconsumption.impl.ResourceconsumptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ResourceconsumptionFactory
extends EFactory {
    public static final ResourceconsumptionFactory eINSTANCE = ResourceconsumptionFactoryImpl.init();

    public HardwareConfiguration createHardwareConfiguration();

    public SoftwareContext createSoftwareContext();

    public ResourceConsumption createResourceConsumption();

    public ResourceconsumptionPackage getResourceconsumptionPackage();
}

