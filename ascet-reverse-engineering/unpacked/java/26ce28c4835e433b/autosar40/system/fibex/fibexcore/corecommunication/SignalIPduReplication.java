/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SignalIPduReplication
extends ARObject {
    public ISignalIPdu getISignalIPdu();

    public void setISignalIPdu(ISignalIPdu var1);

    public Integer getPduReplicationVoting();

    public void setPduReplicationVoting(Integer var1);

    public void unsetPduReplicationVoting();

    public boolean isSetPduReplicationVoting();

    public EList<ISignalIPdu> getReplicaPdus();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getPduReplicationVotingData();

    public void setPduReplicationVotingData(IntegerDatatype var1);
}

