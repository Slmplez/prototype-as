/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4can.cancommunication;

import autosar40.system.fibex.fibex4can.cancommunication.CanAddressingModeType;
import autosar40.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcanAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CanFrameTriggering
extends FrameTriggering {
    public EList<TtcanAbsolutelyScheduledTiming> getAbsolutelyScheduledTimings();

    public CanAddressingModeType getCanAddressingMode();

    public void setCanAddressingMode(CanAddressingModeType var1);

    public void unsetCanAddressingMode();

    public boolean isSetCanAddressingMode();

    public Integer getIdentifier();

    public void setIdentifier(Integer var1);

    public void unsetIdentifier();

    public boolean isSetIdentifier();

    public RxIdentifierRange getRxIdentifierRange();

    public void setRxIdentifierRange(RxIdentifierRange var1);

    public IntegerDatatype getIdentifierData();

    public void setIdentifierData(IntegerDatatype var1);
}

