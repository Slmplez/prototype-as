/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FootnoteText
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public EList<String> getSubs();

    public void unsetSubs();

    public boolean isSetSubs();

    public EList<String> getSups();

    public void unsetSups();

    public boolean isSetSups();

    public EList<Tt> getTts();

    public EList<EmphasisText> getEs();

    public String getMixedText();

    public void setMixedText(String var1);
}

