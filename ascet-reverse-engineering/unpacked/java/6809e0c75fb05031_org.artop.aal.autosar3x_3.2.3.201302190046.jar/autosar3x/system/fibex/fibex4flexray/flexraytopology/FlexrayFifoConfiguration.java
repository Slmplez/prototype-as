/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibex4flexray.flexraytopology;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationController;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayFifoConfiguration
extends ARObject {
    public FlexrayCommunicationController getFlexrayCommunicationController();

    public void setFlexrayCommunicationController(FlexrayCommunicationController var1);

    public Boolean getAdmitWithoutMessageId();

    public void setAdmitWithoutMessageId(Boolean var1);

    public void unsetAdmitWithoutMessageId();

    public boolean isSetAdmitWithoutMessageId();

    public Integer getBaseCycle();

    public void setBaseCycle(Integer var1);

    public void unsetBaseCycle();

    public boolean isSetBaseCycle();

    public EList<FlexrayPhysicalChannel> getChannels();

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
}

