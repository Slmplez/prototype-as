/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.implementation.DependencyOnLibrary;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.exclusivearea.RunnableEntityCanEnterExclusiveArea;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
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

    public RunnableEntityCanEnterExclusiveArea getExclusiveAreaSection();

    public void setExclusiveAreaSection(RunnableEntityCanEnterExclusiveArea var1);

    public EList<DependencyOnLibrary> getExternalLibraries();

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public EList<MemorySectionLocation> getMemorySectionLocations();

    public RunnableEntity getRunnable();

    public void setRunnable(RunnableEntity var1);

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);
}

