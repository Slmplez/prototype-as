/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Formulas;

import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.ParameterType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface FormulaComplexType
extends EObject {
    public FormattedTextT getComment();

    public void setComment(FormattedTextT var1);

    public EList<ParameterType> getParameter();

    public String getName();

    public void setName(String var1);

    public String getType();

    public void setType(String var1);

    public String getUnit();

    public void setUnit(String var1);
}

