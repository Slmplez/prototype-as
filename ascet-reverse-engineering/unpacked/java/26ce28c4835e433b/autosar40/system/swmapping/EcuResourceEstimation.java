/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.swmapping;

import autosar40.commonstructure.resourceconsumption.ResourceConsumption;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.swmapping.SwcToEcuMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuResourceEstimation
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);

    public ResourceConsumption getBswResourceEstimation();

    public void setBswResourceEstimation(ResourceConsumption var1);

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public ResourceConsumption getRteResourceEstimation();

    public void setRteResourceEstimation(ResourceConsumption var1);

    public EList<SwcToEcuMapping> getSwCompToEcuMappings();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

