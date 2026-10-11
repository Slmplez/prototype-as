/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibex4can.cantopology;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationControllerContent;

public interface AbstractCanCommunicationControllerContent
extends CommunicationControllerContent {
    public AbstractCanCommunicationControllerAttributes getCanControllerAttributes();

    public void setCanControllerAttributes(AbstractCanCommunicationControllerAttributes var1);
}

