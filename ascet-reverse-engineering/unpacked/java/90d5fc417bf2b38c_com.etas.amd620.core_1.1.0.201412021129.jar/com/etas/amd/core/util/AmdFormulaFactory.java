/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.FormulaKind;
import com.etas.amd620.core.Formulas.FormattedTextT;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.FormulasFactory;
import com.etas.amd620.core.Formulas.FormulasType;
import com.etas.amd620.core.Formulas.ParameterType;

public final class AmdFormulaFactory {
    private AmdFormulaFactory() {
    }

    private static FormulaComplexType createFormula(String name, String unit, String unitRef, String kind) {
        FormulaComplexType f = FormulasFactory.eINSTANCE.createFormulaComplexType();
        f.setName(name);
        f.setUnit(unit);
        f.setType(kind);
        if (unitRef != null) {
            String comment = unitRef.isEmpty() ? "" : "[arxmlconfig]\nAR-UnitName=\"" + unitRef + "\"";
            FormattedTextT text = FormulasFactory.eINSTANCE.createFormattedTextT();
            text.setValue(comment);
            f.setComment(text);
        } else {
            FormattedTextT text = FormulasFactory.eINSTANCE.createFormattedTextT();
            f.setComment(text);
        }
        return f;
    }

    public static FormulasType createFormulas() {
        FormulasType f = FormulasFactory.eINSTANCE.createFormulasType();
        f.setSchemaVersion("5.1.4.0");
        f.setToolVersion("V6.2.0");
        return f;
    }

    public static FormulaComplexType createIdentFormula(String name, String unit, String unitRef) {
        FormulaComplexType f = AmdFormulaFactory.createFormula(name, unit, unitRef, FormulaKind.IDENTITY.getAmdName());
        return f;
    }

    public static FormulaComplexType createIdentFormula() {
        return AmdFormulaFactory.createIdentFormula("ident", "", null);
    }

    public static FormulaComplexType createLinearFormula(String name, String unit, String unitRef, String v1, String v2) {
        FormulaComplexType f = AmdFormulaFactory.createFormula(name, unit, unitRef, FormulaKind.LINEAR.getAmdName());
        ParameterType p = FormulasFactory.eINSTANCE.createParameterType();
        p.setValue(v1);
        f.getParameter().add((Object)p);
        p = FormulasFactory.eINSTANCE.createParameterType();
        p.setValue(v2);
        f.getParameter().add((Object)p);
        return f;
    }

    public static FormulaComplexType createMoebiusFormula(String name, String unit, String unitRef, String v1, String v2, String v3, String v4) {
        FormulaComplexType f = AmdFormulaFactory.createFormula(name, unit, unitRef, FormulaKind.MOEBIUS.getAmdName());
        FormulasFactory factory = FormulasFactory.eINSTANCE;
        ParameterType p = factory.createParameterType();
        p.setValue(v1);
        f.getParameter().add((Object)p);
        p = factory.createParameterType();
        p.setValue(v2);
        f.getParameter().add((Object)p);
        p = factory.createParameterType();
        p.setValue(v3);
        f.getParameter().add((Object)p);
        p = factory.createParameterType();
        p.setValue(v4);
        f.getParameter().add((Object)p);
        return f;
    }
}

