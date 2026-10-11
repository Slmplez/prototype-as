/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar21.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface Ie
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

