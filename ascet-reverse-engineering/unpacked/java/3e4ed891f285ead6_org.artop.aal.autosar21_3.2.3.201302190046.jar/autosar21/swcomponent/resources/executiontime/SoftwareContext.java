/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.genericstructure.infrastructure.ARObject;

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

