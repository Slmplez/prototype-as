/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.CommunicationDirectionType;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalIPdu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPduGroup
extends FibexElement {
    public CommunicationDirectionType getCommunicationDirection();

    public void setCommunicationDirection(CommunicationDirectionType var1);

    public void unsetCommunicationDirection();

    public boolean isSetCommunicationDirection();

    public String getCommunicationMode();

    public void setCommunicationMode(String var1);

    public void unsetCommunicationMode();

    public boolean isSetCommunicationMode();

    public EList<IPduGroup> getContainedIPduGroups();

    public EList<SignalIPdu> getIPdus();
}

