/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.swcomponent.datatype.units;

import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface DisplayName
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

