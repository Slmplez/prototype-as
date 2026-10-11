/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinCommunicationConnector;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface LinOrderedConfigurableFrame
extends ARObject {
    public LinCommunicationConnector getLinCommunicationConnector();

    public void setLinCommunicationConnector(LinCommunicationConnector var1);

    public LinFrame getFrame();

    public void setFrame(LinFrame var1);

    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public IntegerDatatype getIndexData();

    public void setIndexData(IntegerDatatype var1);
}

