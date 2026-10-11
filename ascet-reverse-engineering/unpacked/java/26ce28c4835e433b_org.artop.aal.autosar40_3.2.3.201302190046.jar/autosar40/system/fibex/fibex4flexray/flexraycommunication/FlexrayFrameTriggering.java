/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayFrameTriggering
extends FrameTriggering {
    public EList<FlexrayAbsolutelyScheduledTiming> getAbsolutelyScheduledTimings();

    public Boolean getAllowDynamicLSduLength();

    public void setAllowDynamicLSduLength(Boolean var1);

    public void unsetAllowDynamicLSduLength();

    public boolean isSetAllowDynamicLSduLength();

    public Long getMessageId();

    public void setMessageId(Long var1);

    public void unsetMessageId();

    public boolean isSetMessageId();

    public Boolean getPayloadPreambleIndicator();

    public void setPayloadPreambleIndicator(Boolean var1);

    public void unsetPayloadPreambleIndicator();

    public boolean isSetPayloadPreambleIndicator();

    public PositiveIntegerDatatype getMessageIdData();

    public void setMessageIdData(PositiveIntegerDatatype var1);
}

