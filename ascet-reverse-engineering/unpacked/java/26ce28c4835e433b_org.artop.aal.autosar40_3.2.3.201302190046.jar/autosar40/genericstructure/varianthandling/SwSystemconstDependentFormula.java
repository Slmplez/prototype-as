/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.varianthandling;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwSystemconstDependentFormula
extends FormulaExpression,
GSwSystemconstDependentFormula {
    public EList<SwSystemconst> getSyscStrings();

    public EList<SwSystemconst> getSyscs();
}

