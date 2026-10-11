/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.implementation;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;

public interface XfileSo
extends Identifiable {
    public Url getUrl();

    public void setUrl(Url var1);

    public String getTool();

    public void setTool(String var1);

    public void unsetTool();

    public boolean isSetTool();

    public String getToolVersion();

    public void setToolVersion(String var1);

    public void unsetToolVersion();

    public boolean isSetToolVersion();
}

