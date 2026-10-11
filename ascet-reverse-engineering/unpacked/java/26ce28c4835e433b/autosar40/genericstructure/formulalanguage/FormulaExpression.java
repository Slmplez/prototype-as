/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar40.genericstructure.formulalanguage;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface FormulaExpression
extends ARObject,
GFormulaExpression {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public String getMixedText();

    public void setMixedText(String var1);
}

