/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationControllerContent;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayFifoConfiguration
extends ARObject {
    public FlexrayCommunicationControllerContent getFlexrayCommunicationControllerContent();

    public void setFlexrayCommunicationControllerContent(FlexrayCommunicationControllerContent var1);

    public Boolean getAdmitWithoutMessageId();

    public void setAdmitWithoutMessageId(Boolean var1);

    public void unsetAdmitWithoutMessageId();

    public boolean isSetAdmitWithoutMessageId();

    public Integer getBaseCycle();

    public void setBaseCycle(Integer var1);

    public void unsetBaseCycle();

    public boolean isSetBaseCycle();

    public FlexrayPhysicalChannel getChannel();

    public void setChannel(FlexrayPhysicalChannel var1);

    public Integer getCycleRepetition();

    public void setCycleRepetition(Integer var1);

    public void unsetCycleRepetition();

    public boolean isSetCycleRepetition();

    public Integer getFifoDepth();

    public void setFifoDepth(Integer var1);

    public void unsetFifoDepth();

    public boolean isSetFifoDepth();

    public EList<FlexrayFifoRange> getFifoRanges();

    public Integer getMsgIdMask();

    public void setMsgIdMask(Integer var1);

    public void unsetMsgIdMask();

    public boolean isSetMsgIdMask();

    public Integer getMsgIdMatch();

    public void setMsgIdMatch(Integer var1);

    public void unsetMsgIdMatch();

    public boolean isSetMsgIdMatch();

    public IntegerDatatype getBaseCycleData();

    public void setBaseCycleData(IntegerDatatype var1);

    public IntegerDatatype getCycleRepetitionData();

    public void setCycleRepetitionData(IntegerDatatype var1);

    public IntegerDatatype getFifoDepthData();

    public void setFifoDepthData(IntegerDatatype var1);

    public IntegerDatatype getMsgIdMaskData();

    public void setMsgIdMaskData(IntegerDatatype var1);

    public IntegerDatatype getMsgIdMatchData();

    public void setMsgIdMatchData(IntegerDatatype var1);
}

