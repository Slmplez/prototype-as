/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.component;

import com.etas.amd620.core.Formulas.DocumentRoot;
import com.etas.amd620.core.Formulas.FormulasFactory;
import com.etas.amd620.core.Formulas.FormulasType;

public class AmdFormulaFragment {
    private FormulasType formulae;

    public AmdFormulaFragment(FormulasType formulae) {
        this.formulae = formulae;
    }

    public DocumentRoot getDocumentRoot() {
        DocumentRoot root = FormulasFactory.eINSTANCE.createDocumentRoot();
        root.setFormulas(this.formulae);
        return root;
    }

    public boolean isDefined() {
        return this.formulae != null && !this.formulae.getFormula().isEmpty();
    }
}

