/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.ecuresourcemapping;

import autosar3x.ecuresource.ECU;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.SystemMapping;
import autosar3x.system.ecuresourcemapping.CommunicationControllerMapping;
import autosar3x.system.ecuresourcemapping.HWPortMapping;
import autosar3x.system.fibex.fibexcore.coretopology.EcuInstance;
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

    public ECU getEcu();

    public void setEcu(ECU var1);

    public EList<HWPortMapping> getPortMappings();
}

