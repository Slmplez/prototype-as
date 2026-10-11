/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.genericstructure.commonpatterns.specialdata;

import autosar21.genericstructure.commonpatterns.specialdata.SdgContents;
import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Sd
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

    public EList<String> getIdClass();

    public void unsetIdClass();

    public boolean isSetIdClass();

    public String getMixedText();

    public void setMixedText(String var1);
}

