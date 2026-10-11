/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.amd.core.util;

import com.etas.amd.core.util.FormulaKind;
import com.etas.amd620.core.Formulas.FormulaComplexType;
import com.etas.amd620.core.Formulas.ParameterType;
import org.apache.commons.lang.StringUtils;

public final class FormulaUtil {
    private static final int C0 = 0;
    private static final int C1 = 1;
    private static final int C2 = 2;
    private static final int C3 = 3;

    private FormulaUtil() {
    }

    public static String getImplValue(FormulaComplexType f, String val) {
        if (val.equals("INF") || val.equals("-INF")) {
            return val;
        }
        if (FormulaKind.IDENTITY.isType(f)) {
            return val;
        }
        if (FormulaKind.LINEAR.isType(f)) {
            double x0 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(0)).getValue());
            double x1 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(1)).getValue());
            double res = (FormulaUtil.parseNumericLiteral(val) - x0) / x1;
            return Double.toString(res);
        }
        if (FormulaKind.MOEBIUS.isType(f)) {
            double x0 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(0)).getValue());
            double x1 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(1)).getValue());
            double x2 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(2)).getValue());
            double res = (FormulaUtil.parseNumericLiteral(val) * x2 - x0) / x1;
            return Double.toString(res);
        }
        return "";
    }

    public static String getPhysValue(FormulaComplexType f, String val) {
        if (val.equals("INF") || val.equals("-INF")) {
            return val;
        }
        if (FormulaKind.IDENTITY.isType(f)) {
            return val;
        }
        if (FormulaKind.LINEAR.isType(f)) {
            double x0 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(0)).getValue());
            double x1 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(1)).getValue());
            double res = x0 + x1 * FormulaUtil.parseNumericLiteral(val);
            return Double.toString(res);
        }
        if (FormulaKind.MOEBIUS.isType(f)) {
            double parsedVal = FormulaUtil.parseNumericLiteral(val);
            double x0 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(0)).getValue());
            double x1 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(1)).getValue());
            double x2 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(2)).getValue());
            double x3 = FormulaUtil.parseNumericLiteral((String)((ParameterType)f.getParameter().get(3)).getValue());
            double res = (x0 + x1 * parsedVal) / (x2 + x3 * parsedVal);
            return Double.toString(res);
        }
        return "";
    }

    private static double parseNumericLiteral(String val) {
        String[] tokens = StringUtils.split((String)val, (String)"/");
        if (tokens.length == 2) {
            double numerator = Double.parseDouble(tokens[0]);
            double denominator = Double.parseDouble(tokens[1]);
            return numerator / denominator;
        }
        return Double.parseDouble(val);
    }
}

