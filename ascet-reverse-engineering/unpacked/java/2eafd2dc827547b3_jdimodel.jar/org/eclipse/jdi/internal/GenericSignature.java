/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class GenericSignature {
    private static final char C_CLASS_TYPE = 'L';
    private static final char C_TYPE_VARIABLE = 'T';
    private static final char C_ARRAY = '[';
    private static final char C_WILDCARD_PLUS = '+';
    private static final char C_WILDCARD_MINUS = '-';
    private static final char C_TYPE_END = ';';
    private static final char C_PARAMETERS_START = '(';
    private static final char C_PARAMETERS_END = ')';
    private static final char C_TYPE_ARGUMENTS_START = '<';
    private static final char C_TYPE_ARGUMENTS_END = '>';

    public static List getParameterTypes(String methodSignature) {
        int parameterStart = methodSignature.indexOf(40);
        int parametersEnd = methodSignature.lastIndexOf(41);
        if (parameterStart == -1 || parametersEnd == -1) {
            return Collections.EMPTY_LIST;
        }
        return GenericSignature.getTypeSignatureList(methodSignature.substring(parameterStart + 1, parametersEnd));
    }

    private static List getTypeSignatureList(String typeSignatureList) {
        ArrayList<String> list = new ArrayList<String>();
        int pos = 0;
        while (pos < typeSignatureList.length()) {
            int signatureLength = GenericSignature.nextTypeSignatureLength(typeSignatureList, pos);
            list.add(typeSignatureList.substring(pos, pos += signatureLength));
        }
        return list;
    }

    private static int nextTypeSignatureLength(String signature, int startPos) {
        int inclusionLevel = 0;
        int i = startPos;
        int length = signature.length();
        while (i < length) {
            block11: {
                block10: {
                    if (inclusionLevel != 0) break block10;
                    switch (signature.charAt(i)) {
                        case '+': 
                        case '-': 
                        case 'L': 
                        case 'T': {
                            inclusionLevel = 1;
                            break block11;
                        }
                        case '[': {
                            break block11;
                        }
                        default: {
                            return i - startPos + 1;
                        }
                    }
                }
                switch (signature.charAt(i)) {
                    case ';': {
                        if (inclusionLevel != 1) break;
                        return i - startPos + 1;
                    }
                    case '<': {
                        ++inclusionLevel;
                        break;
                    }
                    case '>': {
                        --inclusionLevel;
                    }
                }
            }
            ++i;
        }
        throw new IllegalArgumentException();
    }
}

