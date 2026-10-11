/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCluster;
import autosar40.system.networkmanagement.NmConfig;
import autosar40.system.networkmanagement.NmNode;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmCluster
extends Identifiable {
    public NmConfig getNmConfig();

    public void setNmConfig(NmConfig var1);

    public CommunicationCluster getCommunicationCluster();

    public void setCommunicationCluster(CommunicationCluster var1);

    public Long getNmChannelId();

    public void setNmChannelId(Long var1);

    public void unsetNmChannelId();

    public boolean isSetNmChannelId();

    public Boolean getNmChannelSleepMaster();

    public void setNmChannelSleepMaster(Boolean var1);

    public void unsetNmChannelSleepMaster();

    public boolean isSetNmChannelSleepMaster();

    public EList<NmNode> getNmNodes();

    public Boolean getNmSynchronizingNetwork();

    public void setNmSynchronizingNetwork(Boolean var1);

    public void unsetNmSynchronizingNetwork();

    public boolean isSetNmSynchronizingNetwork();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getNmChannelIdData();

    public void setNmChannelIdData(PositiveIntegerDatatype var1);
}

