/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.resourceconsumption;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface SoftwareContext
extends ARObject {
    public String getInput();

    public void setInput(String var1);

    public void unsetInput();

    public boolean isSetInput();

    public String getState();

    public void setState(String var1);

    public void unsetState();

    public boolean isSetState();
}

