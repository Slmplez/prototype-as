/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.swmapping;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import autosar40.system.instancerefs.ComponentInSystemInstanceRef;
import autosar40.system.swmapping.EcuPartition;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwcToEcuMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<ComponentInSystemInstanceRef> getComponents();

    public HwElement getControlledHwElement();

    public void setControlledHwElement(HwElement var1);

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public EcuPartition getPartition();

    public void setPartition(EcuPartition var1);

    public HwElement getProcessingUnit();

    public void setProcessingUnit(HwElement var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

