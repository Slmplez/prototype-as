/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface Xref
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

