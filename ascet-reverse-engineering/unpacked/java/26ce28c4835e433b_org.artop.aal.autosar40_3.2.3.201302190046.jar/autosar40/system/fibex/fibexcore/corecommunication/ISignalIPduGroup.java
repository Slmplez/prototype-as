/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPduRefConditional;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISignalIPduGroup
extends FibexElement {
    public CommunicationDirectionType getCommunicationDirection();

    public void setCommunicationDirection(CommunicationDirectionType var1);

    public void unsetCommunicationDirection();

    public boolean isSetCommunicationDirection();

    public String getCommunicationMode();

    public void setCommunicationMode(String var1);

    public void unsetCommunicationMode();

    public boolean isSetCommunicationMode();

    public EList<ISignalIPduGroup> getContainedISignalIPduGroups();

    public EList<ISignalIPduRefConditional> getISignalIPdus();
}

