/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.ecuresourcemapping;

import autosar40.ecuresource.HwElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;
import autosar40.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar40.system.ecuresourcemapping.HwPortMapping;
import autosar40.system.fibex.fibexcore.coretopology.EcuInstance;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ECUMapping
extends Identifiable {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public EList<CommunicationControllerMapping> getCommControllerMappings();

    public EcuInstance getEcuInstance();

    public void setEcuInstance(EcuInstance var1);

    public HwElement getEcu();

    public void setEcu(HwElement var1);

    public EList<HwPortMapping> getHwPortMappings();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

