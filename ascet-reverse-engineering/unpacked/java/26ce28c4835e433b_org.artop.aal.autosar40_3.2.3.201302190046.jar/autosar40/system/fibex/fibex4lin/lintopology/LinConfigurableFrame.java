/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface LinConfigurableFrame
extends ARObject {
    public LinCommunicationConnector getLinCommunicationConnector();

    public void setLinCommunicationConnector(LinCommunicationConnector var1);

    public LinFrame getFrame();

    public void setFrame(LinFrame var1);

    public Long getMessageId();

    public void setMessageId(Long var1);

    public void unsetMessageId();

    public boolean isSetMessageId();

    public PositiveIntegerDatatype getMessageIdData();

    public void setMessageIdData(PositiveIntegerDatatype var1);
}

