/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.genericstructure.commonpatterns.specialdata;

import autosar3x.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface Sdx
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public SdgContents getSdgContents();

    public void setSdgContents(SdgContents var1);

    public String getGid();

    public void setGid(String var1);

    public void unsetGid();

    public boolean isSetGid();

    public String getIdClass();

    public void setIdClass(String var1);

    public void unsetIdClass();

    public boolean isSetIdClass();

    public String getMixedText();

    public void setMixedText(String var1);
}

