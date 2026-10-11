/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel;

import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface MixedContent1
extends ARObject,
GMixedContentForParagraph {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

