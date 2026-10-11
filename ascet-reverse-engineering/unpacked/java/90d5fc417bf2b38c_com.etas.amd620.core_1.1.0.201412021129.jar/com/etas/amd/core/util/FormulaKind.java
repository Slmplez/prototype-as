/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.util;

import com.etas.amd620.core.Formulas.FormulaComplexType;
import org.apache.commons.lang.StringUtils;

public enum FormulaKind {
    IDENTITY("Identity"),
    LINEAR("Linear"),
    MOEBIUS("Moebius"),
    FIVE_PARAMETERS("5 Parameters");

    private final String amdName;

    private FormulaKind(String name) {
        this.amdName = name;
    }

    public String getAmdName() {
        return this.amdName;
    }

    public boolean isType(FormulaComplexType f) {
        return StringUtils.equals((String)this.amdName, (String)f.getType());
    }
}

