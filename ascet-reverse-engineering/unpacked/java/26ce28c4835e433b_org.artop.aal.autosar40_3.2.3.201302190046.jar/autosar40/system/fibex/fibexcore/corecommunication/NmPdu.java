/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.ISignalToIPduMapping;
import autosar40.system.fibex.fibexcore.corecommunication.Pdu;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface NmPdu
extends Pdu {
    public EList<ISignalToIPduMapping> getISignalToIPduMappings();

    public Boolean getNmDataInformation();

    public void setNmDataInformation(Boolean var1);

    public void unsetNmDataInformation();

    public boolean isSetNmDataInformation();

    public Boolean getNmVoteInformation();

    public void setNmVoteInformation(Boolean var1);

    public void unsetNmVoteInformation();

    public boolean isSetNmVoteInformation();

    public Integer getUnusedBitPattern();

    public void setUnusedBitPattern(Integer var1);

    public void unsetUnusedBitPattern();

    public boolean isSetUnusedBitPattern();

    public IntegerDatatype getUnusedBitPatternData();

    public void setUnusedBitPatternData(IntegerDatatype var1);
}

