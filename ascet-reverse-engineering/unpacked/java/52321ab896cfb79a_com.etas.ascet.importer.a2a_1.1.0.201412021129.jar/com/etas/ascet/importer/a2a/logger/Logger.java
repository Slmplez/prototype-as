/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.importer.a2a.logger;

import com.etas.ascet.importer.a2a.logger.LogMsg;
import com.etas.ascet.importer.a2a.logger.LogMsgKind;

public class Logger {
    private int errorCount = 0;

    private void convertLogMsgKind(String tokensText, LogMsgKind toKind) {
        if (tokensText != null && !tokensText.isEmpty()) {
            String[] tokens;
            String[] stringArray = tokens = tokensText.split("(\\s|,|;)+");
            int n = tokens.length;
            int n2 = 0;
            while (n2 < n) {
                String t = stringArray[n2];
                if (!t.isEmpty()) {
                    try {
                        int number = Integer.parseInt(t);
                        LogMsg msg = LogMsg.getLogMsgForID(number);
                        if (msg != null) {
                            msg.setKind(toKind);
                        } else {
                            this.warn("Invalid Error-Code ID " + t + ". Check your preferences 'Consider as Warning' or 'Consider as Error'.");
                        }
                    }
                    catch (NumberFormatException e) {
                        this.warn("Could not process Error-Code ID " + t + ".Check your preferences 'Consider as Warning' or 'Consider as Error'. (" + tokensText + "): " + e.getMessage());
                    }
                }
                ++n2;
            }
        }
    }

    public Logger(String asError, String asWarning) {
        LogMsg.validate();
        this.convertLogMsgKind(asWarning, LogMsgKind.Warning);
        this.convertLogMsgKind(asError, LogMsgKind.Error);
    }

    private void log(LogMsg lm, String ... text) {
        LogMsgKind kind = lm.kind;
        if (kind == LogMsgKind.Error || kind == LogMsgKind.Fatal) {
            ++this.errorCount;
        }
        String formatedString = lm.getString(text);
        System.out.println(formatedString);
    }

    public void fatal(String text) {
        this.log(LogMsg.Fatal, text);
    }

    public void error(String text) {
        this.log(LogMsg.Error, text);
    }

    public void warn(String text) {
        this.log(LogMsg.Warning, text);
    }

    public void info(String text) {
        this.log(LogMsg.Info, text);
    }

    public boolean hasErrors() {
        return this.errorCount > 0;
    }

    public void reportInvalidEnum(String name) {
        this.log(LogMsg.CM_INVALID_LIMITS, name);
    }

    public void reportInvalidCompuConst(String name, String label) {
        this.log(LogMsg.CM_INVALID_COMPU_CONST, name, label);
    }

    public void reportInvalidEnumLabel(String name, String label) {
        this.log(LogMsg.CM_INVALID_ENUM, name, label);
    }

    public void reportFatal(String text) {
        this.log(LogMsg.Fatal, text);
    }

    public void reportExpectingCategory(String cat, String name) {
        this.log(LogMsg.CM_TEXTTABLE_CAT, name, cat);
    }

    public void reportUnsupportedStringType(String shortName) {
        this.log(LogMsg.UNSUPORTED_TYPE_STRING, shortName);
    }

    public void reportUnsupportedType(String shortName, String category) {
        this.log(LogMsg.UNSUPORTED_TYPE, shortName, category);
        this.log(LogMsg.INFO_MISSING_ELEMENTS, new String[0]);
    }

    public void reportUnsupportedUseCase(String text) {
        this.log(LogMsg.UNSUPORTED, text);
    }

    public void reportUnsupportedVariations(String text) {
        this.log(LogMsg.UNSUPORTED_VARIATIONS, text);
    }

    public void reportDubiousCategory(String shortName, String isCategory, String expectedCategory) {
        this.log(LogMsg.CM_WRONG_CATEGORY, shortName, isCategory, expectedCategory);
    }

    public void reportNotConvertCompuMethod(String shortName, String message) {
        this.log(LogMsg.CM_CONVERSION_FAILED, shortName, message);
    }

    public void reportOutputFolderInvalid(String absolutePath) {
        this.log(LogMsg.INVALID_OUTDIR, absolutePath);
    }

    public void reportOutputFolderNotEmpty(String absolutePath) {
        this.log(LogMsg.INVALID_OUTDIR_NE, absolutePath);
    }

    public void reportUnresolvedPortRef(String arPath) {
        this.log(LogMsg.UNRESOLVED_PORT_REF, arPath);
    }

    public void reportUnresolvedModeDeclRef(String arPath) {
        this.log(LogMsg.UNRESOLVED_MODEDECL_REF, arPath);
    }

    public void reportUnresolvedModeDeclGroupRef(String arPath) {
        this.log(LogMsg.UNRESOLVED_MODEDECLGROUP_REF, arPath);
    }

    public void reportElementWithOutType(String name) {
        this.log(LogMsg.NULL_TYPE, name);
    }

    public void reportInvalidLimitValue(String typeRef, String value) {
        this.log(LogMsg.INVALID_LIMIT, typeRef, value);
    }

    public void reportIncompleteTypeDefinition(String arPath, String msg) {
        this.log(LogMsg.UNRESOLVED_TYPE, arPath, msg);
    }

    public void reportInvalidTypereference(String arPath) {
        this.log(LogMsg.INVALID_TYPE_REFERENCE, arPath);
    }

    public void reportNotPlatfromType(String arPath) {
        this.log(LogMsg.NOT_PLATFORM_TYPE, arPath);
    }

    public void reportDubiousArraySize(String arPath, String maxNumberOfElements) {
        this.log(LogMsg.INVALID_ARRAY_SIZE, arPath, maxNumberOfElements);
    }

    public void reportArrayElementTypeMismatch(String arrayType, String elemType) {
        this.log(LogMsg.INVALID_ARRAY_ELEM, arrayType, elemType);
        this.log(LogMsg.INFO_MISSING_ELEMENTS, new String[0]);
    }

    public void reportArrayElementArrayType(String arrayType, String elemType) {
        this.log(LogMsg.INVALID_ARRAY_ELEM_ARRAY, arrayType, elemType);
        this.log(LogMsg.INFO_ARRAY_TYPE, new String[0]);
        this.log(LogMsg.INFO_MISSING_ELEMENTS, new String[0]);
    }

    public void reportInvalidModeSwitchEvent(String event, String text) {
        this.log(LogMsg.INVALID_MODE_SWITCH_EVENT, event, text);
    }

    public void reportInvalidOperationInvikedEvent(String event, String text) {
        this.log(LogMsg.INVALID_OP_INVOKED_EVENT, event, text);
    }

    public void reportUnsupportedTransitionSwitch(String event) {
        this.log(LogMsg.INVALID_MS_TRANSITION, event);
        this.log(LogMsg.INFO_MS_TRANSITION, new String[0]);
    }

    public void reportDubiousInitValueForBoolean(String variable, String value) {
        this.log(LogMsg.INVALID_BOOLEAN_INIT, variable, value);
    }

    public void reportDubiousInitValueForArray(String variable, String msg) {
        this.log(LogMsg.INVALID_ARRAY_INIT, variable, msg);
    }

    public void reportDubiousInitValueForEnum(String variable, String msg) {
        this.log(LogMsg.INVALID_ENUM_INIT, variable, msg);
    }

    public void reportUnknownInterface(String interfaceRef, String portName, String SWCRef) {
        this.log(LogMsg.UNRESOLVED_INTERFACE_REF, interfaceRef, portName, SWCRef);
    }

    public void reportInvalidNumericValue(String variable, String msg) {
        this.log(LogMsg.INVALID_NUMERIC_VALUE_SPEC, variable, msg);
    }
}

