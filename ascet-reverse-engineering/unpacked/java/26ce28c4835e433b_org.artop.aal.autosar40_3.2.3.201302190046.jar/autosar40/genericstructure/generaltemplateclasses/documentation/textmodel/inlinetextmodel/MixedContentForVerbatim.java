/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MixedContentForVerbatim
extends WhitespaceControlled {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public EList<Tt> getTts();

    public EList<EmphasisText> getEs();

    public EList<Xref> getXrefs();

    public EList<Br> getBrs();

    public String getMixedText();

    public void setMixedText(String var1);
}

