/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;

public interface Xfile
extends ARObject,
GAutosarEngineeringObject {
    public MixedContent1 getMixedContent1();

    public void setMixedContent1(MixedContent1 var1);

    public String getShortName();

    public void setShortName(String var1);

    public void unsetShortName();

    public boolean isSetShortName();

    public SlData4 getLongName1();

    public void setLongName1(SlData4 var1);

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

