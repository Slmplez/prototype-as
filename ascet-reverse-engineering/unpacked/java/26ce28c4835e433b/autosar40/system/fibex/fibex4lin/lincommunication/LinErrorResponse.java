/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lintopology.LinSlaveContent;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface LinErrorResponse
extends ARObject {
    public LinSlaveContent getLinSlaveContent();

    public void setLinSlaveContent(LinSlaveContent var1);

    public LinFrameTriggering getFrameTriggering();

    public void setFrameTriggering(LinFrameTriggering var1);

    public Integer getResponseErrorPosition();

    public void setResponseErrorPosition(Integer var1);

    public void unsetResponseErrorPosition();

    public boolean isSetResponseErrorPosition();

    public IntegerDatatype getResponseErrorPositionData();

    public void setResponseErrorPositionData(IntegerDatatype var1);
}

