/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Formulas;

import com.etas.amd620.core.Formulas.FormulaComplexType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignatureType;

public interface FormulasType
extends EObject {
    public EList<FormulaComplexType> getFormula();

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public String getSchemaVersion();

    public void setSchemaVersion(String var1);

    public String getToolVersion();

    public void setToolVersion(String var1);
}

