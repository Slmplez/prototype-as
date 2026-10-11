/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent
 *  autosar3x.swcomponent.datatype.valuemodel.Vt
 *  autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales
 *  org.apache.commons.lang.StringUtils
 */
package com.etas.ascet.importer.a2a.util;

import autosar3x.swcomponent.datatype.valuemodel.Vt;
import autosar40.swcomponent.datatype.computationmethod.CompuConstTextContent;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.util.LimitUtil;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import org.apache.commons.lang.StringUtils;

public final class CompuScaleUtil {
    private CompuScaleUtil() {
    }

    public static String getEnumLabel(GCompuScale cs) {
        GCompuScaleContents compuScaleContents = cs.gGetCompuScaleContents();
        if (compuScaleContents != null && compuScaleContents instanceof GCompuScaleConstantContents) {
            GCompuConst compuConst = ((GCompuScaleConstantContents)compuScaleContents).gGetCompuConst();
            if (compuConst == null) {
                return cs.gGetShortLabel();
            }
            GCompuConstContent compuConstContentType = compuConst.gGetCompuConstContentType();
            if (compuConstContentType instanceof CompuConstTextContent) {
                return ((CompuConstTextContent)compuConstContentType).getVt();
            }
            if (compuConstContentType instanceof autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent) {
                Vt vt = ((autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent)compuConstContentType).getVt();
                return vt.getMixedText();
            }
        }
        return cs.gGetShortLabel();
    }

    public static Long getEnumValue(GCompuScale cs, Logger lg) {
        String max;
        String min = LimitUtil.getValue(cs.gGetLowerLimit());
        if (!StringUtils.equals((String)min, (String)(max = LimitUtil.getValue(cs.gGetUpperLimit())))) {
            lg.reportInvalidEnum(cs.gGetShortLabel());
        }
        try {
            return Long.parseLong(min);
        }
        catch (NumberFormatException numberFormatException) {
            lg.reportInvalidEnumLabel(cs.gGetShortLabel(), min);
            return -1L;
        }
    }

    public static String getEnumLabel(GCompuScales compuScales, String val, Logger lg) {
        long intValue = Long.parseLong(val);
        for (GCompuScale cs : compuScales.gGetCompuScales()) {
            if (intValue != CompuScaleUtil.getEnumValue(cs, lg)) continue;
            String enumLabel = CompuScaleUtil.getEnumLabel(cs);
            if (StringUtils.isEmpty((String)enumLabel)) {
                return "_" + val;
            }
            return enumLabel;
        }
        return "unknown";
    }
}

