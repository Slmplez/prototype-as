/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package com.etas.ascet.importer.a2a.logger;

import com.etas.ascet.importer.a2a.logger.LogMsgKind;
import java.util.Arrays;
import java.util.HashMap;
import java.util.regex.Matcher;
import org.eclipse.core.runtime.Assert;

public enum LogMsg {
    Fatal(1, LogMsgKind.Fatal, "%1%"),
    Error(2, LogMsgKind.Error, "%1%"),
    Warning(3, LogMsgKind.Warning, "%1%"),
    Info(4, LogMsgKind.Info, "%1%"),
    Success(10, LogMsgKind.Info, "Conversion completed successfully!"),
    Abort(11, LogMsgKind.Error, "CONVERSION ABORTED BECAUSE OF ERRORS!"),
    INVALID_TYPE(1001, LogMsgKind.Fatal, "%1%"),
    NULL_TYPE(1002, LogMsgKind.Error, "Element %1% has no type."),
    UNRESOLVED_PORT_REF(1003, LogMsgKind.Error, "Cannot resolve port reference %1%."),
    UNRESOLVED_MODEDECL_REF(1004, LogMsgKind.Error, "Cannot resolve mode declaration reference %1%."),
    UNRESOLVED_MODEDECLGROUP_REF(1005, LogMsgKind.Error, "Cannot resolve mode declaration group reference %1%."),
    INVALID_LIMIT(1006, LogMsgKind.Error, "Limit value '%2%' of type %1% has an unexpected format."),
    UNRESOLVED_TYPE(1007, LogMsgKind.Error, "Could not process type %1%. %2%."),
    INVALID_ARRAY_SIZE(1008, LogMsgKind.Error, "Array type %1% has dubious maxNumberOfElements definition (%2%)."),
    INVALID_ARRAY_ELEM(1009, LogMsgKind.Error, "Array type %1% has dubious element type (%2%). Only scalar types are expected."),
    INVALID_ARRAY_ELEM_ARRAY(1010, LogMsgKind.Error, "Array type %1% looks like a dimensional type with more than one dimension (see element type (%2%))."),
    INVALID_BOOLEAN_INIT(1011, LogMsgKind.Error, "Element %1% is of type boolean, but init value %2% does not fit to it."),
    INVALID_ARRAY_INIT(1012, LogMsgKind.Error, "Array element %1% has an invalid init value. %2%."),
    INVALID_ENUM_INIT(1013, LogMsgKind.Error, "Element %1% is of type enumeration, but init value is invalid (%2%)."),
    INVALID_NUMERIC_VALUE_SPEC(1014, LogMsgKind.Error, "Value specification of element %1% is invalid (%2%)."),
    UNRESOLVED_INTERFACE_REF(1015, LogMsgKind.Error, "Cannot resolve interface reference %1% on port %2% in %3%."),
    INVALID_TYPE_REFERENCE(1016, LogMsgKind.Error, "Could not resolve type reference %1%."),
    NOT_PLATFORM_TYPE(1017, LogMsgKind.Warning, "Type '%1%' is not an AUTOSAR platform type. So standard real implementation will be used in ASCET instead."),
    CM_INVALID_LIMITS(1100, LogMsgKind.Info, "CompuMethod %1% contains COMPU-SCALE with different lower and upper limits. If this CompuMethod shall be converted to an ASCET enumeration type lower and upper limits shall be the same."),
    CM_INVALID_ENUM(1101, LogMsgKind.Warning, "CompuMethod %1% contains COMPU-SCALE %2%, which cannot be converted to an integer."),
    CM_TEXTTABLE_CAT(1102, LogMsgKind.Warning, "CompuMethod %1% looks like a candidate for an enumeration type. But attribute 'Category' %2% != TEXTTABLE."),
    CM_WRONG_CATEGORY(1103, LogMsgKind.Warning, "CompuMethod %1% has dubiuos category attribute %2%. Expected is %3%. Continue conversion assuming %3%"),
    CM_CONVERSION_FAILED(1104, LogMsgKind.Warning, "CompuMethod %1% could not be imported. %2%."),
    CM_INVALID_COMPU_CONST(1105, LogMsgKind.Warning, "CompuMethod %1% contains COMPU-SCALE with invalid COMPU-CONST definition. ASCET will use %2% as enumeration label."),
    UNSUPORTED(1200, LogMsgKind.Warning, "%1%."),
    UNSUPORTED_VARIATIONS(1201, LogMsgKind.Error, "%1%. More than one variation point is not supported yet."),
    UNSUPORTED_TYPE_STRING(1202, LogMsgKind.Warning, "Type %1% is string or char, which is unsupported in ASCET data model."),
    UNSUPORTED_TYPE(1203, LogMsgKind.Warning, "Type %1% of category %2% is unsupported in ASCET data model."),
    INVALID_MODE_SWITCH_EVENT(1300, LogMsgKind.Warning, "Mode Switch Event %1% is incomplete. %2%."),
    INVALID_OP_INVOKED_EVENT(1301, LogMsgKind.Warning, "Operation Invoked Event %1% is incomplete. %2%."),
    INVALID_MS_TRANSITION(1302, LogMsgKind.Error, "Mode Switch Event %1% defines an activation on transion."),
    INVALID_OUTDIR(2001, LogMsgKind.Error, "Output directory %1% already exists, but is a file."),
    INVALID_OUTDIR_NE(2002, LogMsgKind.Error, "Output directory %1% is not empty."),
    INFO_ARRAY_TYPE(9000, LogMsgKind.Info, "ASCET supports only 1-D arrays."),
    INFO_MISSING_ELEMENTS(9001, LogMsgKind.Info, "Corresponding elements will be ommited."),
    INFO_MS_TRANSITION(9002, LogMsgKind.Info, "ASCET does not support yet Mode Switch Event with activations on transions."),
    Last(9999, LogMsgKind.Info, "");

    private final String pattern;
    public final int id;
    public LogMsgKind kind;
    public final int USER_LEVEL = 1000;

    private LogMsg(int id, LogMsgKind kind, String text) {
        this.kind = kind;
        this.id = id;
        this.pattern = text;
    }

    public void setKind(LogMsgKind newVal) {
        this.kind = newVal;
    }

    public String getString(String ... text) {
        String template = this.pattern;
        if (template.equals("%1%")) {
            return String.valueOf(this.kind.getString()) + this.getIdDeco() + text[0];
        }
        Integer i = 1;
        String searchPattern = "%" + i.toString() + "%";
        while (template.indexOf(searchPattern) != -1) {
            String replacementStr;
            if (i <= text.length) {
                replacementStr = text[i - 1];
                if (replacementStr == null) {
                    replacementStr = "unknown";
                }
            } else {
                String outStr = Arrays.toString(text);
                throw new IllegalArgumentException("Illegal count of arguments: " + outStr);
            }
            String quoteReplacement = Matcher.quoteReplacement(replacementStr);
            template = template.replaceAll(searchPattern, quoteReplacement);
            i = i + 1;
            searchPattern = "%" + i.toString() + "%";
        }
        return String.valueOf(this.kind.getString()) + this.getIdDeco() + template;
    }

    public String getString() {
        return String.valueOf(this.kind.getString()) + this.getIdDeco() + this.pattern;
    }

    private String getIdDeco() {
        if (this.id < 1000) {
            return " ";
        }
        return " [" + Integer.toString(this.id) + "] ";
    }

    public static LogMsg getLogMsgForID(int id) {
        LogMsg[] logMsgArray = LogMsg.values();
        int n = logMsgArray.length;
        int n2 = 0;
        while (n2 < n) {
            LogMsg msg = logMsgArray[n2];
            if (msg.id == id) {
                return msg;
            }
            ++n2;
        }
        return null;
    }

    public static void validate() {
        HashMap<Integer, LogMsg> msgMap = new HashMap<Integer, LogMsg>(100);
        LogMsg[] logMsgArray = LogMsg.values();
        int n = logMsgArray.length;
        int n2 = 0;
        while (n2 < n) {
            LogMsg msg = logMsgArray[n2];
            Assert.isTrue((msgMap.get(msg.id) == null ? 1 : 0) != 0);
            msgMap.put(msg.id, msg);
            ++n2;
        }
    }
}

