/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.NmPdu;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationController;
import autosar40.system.networkmanagement.NmCluster;
import autosar40.system.networkmanagement.NmEcu;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmNode
extends Identifiable {
    public NmCluster getNmCluster();

    public void setNmCluster(NmCluster var1);

    public CommunicationController getController();

    public void setController(CommunicationController var1);

    public NmEcu getNmIfEcu();

    public void setNmIfEcu(NmEcu var1);

    public Integer getNmNodeId();

    public void setNmNodeId(Integer var1);

    public void unsetNmNodeId();

    public boolean isSetNmNodeId();

    public Boolean getNmPassiveModeEnabled();

    public void setNmPassiveModeEnabled(Boolean var1);

    public void unsetNmPassiveModeEnabled();

    public boolean isSetNmPassiveModeEnabled();

    public EList<NmPdu> getRxNmPdus();

    public EList<NmPdu> getTxNmPdus();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getNmNodeIdData();

    public void setNmNodeIdData(IntegerDatatype var1);
}

