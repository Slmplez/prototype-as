/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.implementation.DependencyOnArtifact;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.resourceconsumption.HardwareConfiguration;
import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.commonstructure.resourceconsumption.SoftwareContext;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExecutionTime
extends Identifiable {
    public ResourceConsumption getResourceConsumption();

    public void setResourceConsumption(ResourceConsumption var1);

    public ExclusiveArea getExclusiveArea();

    public void setExclusiveArea(ExclusiveArea var1);

    public ExecutableEntity getExecutableEntity();

    public void setExecutableEntity(ExecutableEntity var1);

    public HardwareConfiguration getHardwareConfiguration();

    public void setHardwareConfiguration(HardwareConfiguration var1);

    public HwElement getHwElement();

    public void setHwElement(HwElement var1);

    public EList<DependencyOnArtifact> getIncludedLibraries();

    public EList<MemorySectionLocation> getMemorySectionLocations();

    public SoftwareContext getSoftwareContext();

    public void setSoftwareContext(SoftwareContext var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

