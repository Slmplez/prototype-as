/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MixedContent1
extends ARObject,
GMixedContentForParagraph {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public EList<Xfile> getXfiles();

    public String getMixedText();

    public void setMixedText(String var1);
}

