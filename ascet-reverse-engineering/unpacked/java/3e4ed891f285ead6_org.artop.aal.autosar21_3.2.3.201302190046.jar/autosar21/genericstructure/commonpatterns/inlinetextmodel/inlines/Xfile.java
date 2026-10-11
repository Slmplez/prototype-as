/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;

public interface Xfile
extends Identifiable,
GAutosarEngineeringObject {
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

