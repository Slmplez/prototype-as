/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.ascet.importer.a2a.util;

import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import org.apache.commons.lang.StringUtils;

public final class LimitUtil {
    private LimitUtil() {
    }

    public static String getValue(GLimit obj) {
        if (obj == null) {
            return "";
        }
        String mixedText = obj.gGetMixedText();
        if (StringUtils.isEmpty((String)mixedText)) {
            return "";
        }
        return mixedText;
    }
}

