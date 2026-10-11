/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.resourceconsumption;

import autosar40.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar40.commonstructure.resourceconsumption.SoftwareContext;
import autosar40.commonstructure.resourceconsumption.impl.ResourceconsumptionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ResourceconsumptionFactory
extends EFactory {
    public static final ResourceconsumptionFactory eINSTANCE = ResourceconsumptionFactoryImpl.init();

    public HardwareConfiguration createHardwareConfiguration();

    public SoftwareContext createSoftwareContext();

    public ResourceConsumption createResourceConsumption();

    public ResourceconsumptionPackage getResourceconsumptionPackage();
}

