/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel;

import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface MixedContent2
extends ARObject,
GMixedContentForOverviewParagraph {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

