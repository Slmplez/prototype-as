/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;

public interface SystemSignal
extends ARElement {
    public Boolean getDynamicLength();

    public void setDynamicLength(Boolean var1);

    public void unsetDynamicLength();

    public boolean isSetDynamicLength();
}

