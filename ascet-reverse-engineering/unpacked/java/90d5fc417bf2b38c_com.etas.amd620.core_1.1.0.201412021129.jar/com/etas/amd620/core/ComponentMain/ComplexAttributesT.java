/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.AttributesBaseT;
import com.etas.amd620.core.ComponentMain.KindType;

public interface ComplexAttributesT
extends AttributesBaseT {
    public String getComponentID();

    public void setComponentID(String var1);

    public String getComponentName();

    public void setComponentName(String var1);

    public KindType getKind();

    public void setKind(KindType var1);

    public void unsetKind();

    public boolean isSetKind();

    public boolean isQueued();

    public void setQueued(boolean var1);

    public void unsetQueued();

    public boolean isSetQueued();

    public boolean isReference();

    public void setReference(boolean var1);

    public void unsetReference();

    public boolean isSetReference();
}

