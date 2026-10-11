/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduCounter;
import autosar40.system.fibex.fibexcore.corecommunication.SignalIPduReplication;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISignalIPdu
extends IPdu {
    public EList<IPduTiming> getIPduTimingSpecifications();

    public EList<ISignalToIPduMapping> getISignalToPduMappings();

    public EList<SignalIPduCounter> getPduCounters();

    public EList<SignalIPduReplication> getPduReplications();

    public Integer getUnusedBitPattern();

    public void setUnusedBitPattern(Integer var1);

    public void unsetUnusedBitPattern();

    public boolean isSetUnusedBitPattern();

    public IntegerDatatype getUnusedBitPatternData();

    public void setUnusedBitPatternData(IntegerDatatype var1);
}

