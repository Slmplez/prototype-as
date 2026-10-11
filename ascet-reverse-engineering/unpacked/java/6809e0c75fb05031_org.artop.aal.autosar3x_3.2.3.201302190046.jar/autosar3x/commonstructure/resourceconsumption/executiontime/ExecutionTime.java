/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.implementation.DependencyOnLibrary;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar3x.commonstructure.resourceconsumption.ResourceConsumption;
import autosar3x.commonstructure.resourceconsumption.SoftwareContext;
import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExecutionTime
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public ECUPrototype getEcu();

    public void setEcu(ECUPrototype var1);

    public ExclusiveArea getExclusiveArea();

    public void setExclusiveArea(ExclusiveArea var1);

    public EList<DependencyOnLibrary> getExternalLibraries();

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public EList<MemorySectionLocation> getMemorySectionLocations();

    public ExecutableEntity getRunnable();

    public void setRunnable(ExecutableEntity var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);
}

