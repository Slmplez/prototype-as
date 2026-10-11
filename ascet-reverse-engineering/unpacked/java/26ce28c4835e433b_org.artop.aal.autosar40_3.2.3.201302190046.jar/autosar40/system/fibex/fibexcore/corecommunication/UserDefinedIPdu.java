/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.corecommunication.IPdu;

public interface UserDefinedIPdu
extends IPdu {
    public String getCddType();

    public void setCddType(String var1);

    public void unsetCddType();

    public boolean isSetCddType();
}

