/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.EEnumFont;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EmphasisText
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getColor();

    public void setColor(String var1);

    public void unsetColor();

    public boolean isSetColor();

    public EEnumFont getFont();

    public void setFont(EEnumFont var1);

    public void unsetFont();

    public boolean isSetFont();

    public EList<String> getSubs();

    public void unsetSubs();

    public boolean isSetSubs();

    public EList<String> getSups();

    public void unsetSups();

    public boolean isSetSups();

    public EEnum getType();

    public void setType(EEnum var1);

    public void unsetType();

    public boolean isSetType();

    public String getMixedText();

    public void setMixedText(String var1);
}

