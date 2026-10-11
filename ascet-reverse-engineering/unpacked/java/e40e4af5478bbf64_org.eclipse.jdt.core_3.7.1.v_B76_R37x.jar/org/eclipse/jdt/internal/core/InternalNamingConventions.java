/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.Map;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.impl.AssistOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;
import org.eclipse.jdt.internal.core.INamingRequestor;

public class InternalNamingConventions {
    private static final char[] DEFAULT_NAME = "name".toCharArray();
    public static final int VK_STATIC_FIELD = 1;
    public static final int VK_INSTANCE_FIELD = 2;
    public static final int VK_STATIC_FINAL_FIELD = 3;
    public static final int VK_PARAMETER = 4;
    public static final int VK_LOCAL = 5;
    public static final int BK_SIMPLE_NAME = 1;
    public static final int BK_SIMPLE_TYPE_NAME = 2;

    private static Scanner getNameScanner(CompilerOptions compilerOptions) {
        return new Scanner(false, false, false, compilerOptions.sourceLevel, null, null, true);
    }

    private static void acceptName(char[] name, char[] prefix, char[] suffix, boolean isFirstPrefix, boolean isFirstSuffix, int reusedCharacters, INamingRequestor requestor) {
        if (prefix.length > 0 && suffix.length > 0) {
            requestor.acceptNameWithPrefixAndSuffix(name, isFirstPrefix, isFirstSuffix, reusedCharacters);
        } else if (prefix.length > 0) {
            requestor.acceptNameWithPrefix(name, isFirstPrefix, reusedCharacters);
        } else if (suffix.length > 0) {
            requestor.acceptNameWithSuffix(name, isFirstSuffix, reusedCharacters);
        } else {
            requestor.acceptNameWithoutPrefixAndSuffix(name, reusedCharacters);
        }
    }

    private static char[][] computeBaseTypeNames(char[] typeName, boolean isConstantField, char[][] excludedNames) {
        if (isConstantField) {
            return InternalNamingConventions.computeNonBaseTypeNames(typeName, isConstantField, false);
        }
        char[] name = InternalNamingConventions.computeBaseTypeNames(typeName[0], excludedNames);
        if (name != null) {
            return new char[][]{name};
        }
        return InternalNamingConventions.computeNonBaseTypeNames(typeName, isConstantField, false);
    }

    private static char[] computeBaseTypeNames(char firstName, char[][] excludedNames) {
        char[] name = new char[]{firstName};
        int i = 0;
        while (i < excludedNames.length) {
            if (CharOperation.equals(name, excludedNames[i], false)) {
                name[0] = (char)(name[0] + '\u0001');
                if (name[0] > 'z') {
                    name[0] = 97;
                }
                if (name[0] == firstName) {
                    return null;
                }
                i = 0;
            }
            ++i;
        }
        return name;
    }

    private static char[][] computeNonBaseTypeNames(char[] sourceName, boolean isConstantField, boolean onlyLongest) {
        int length = sourceName.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        if (length == 1) {
            if (isConstantField) {
                return InternalNamingConventions.generateConstantName(new char[][]{CharOperation.toLowerCase(sourceName)}, 0, onlyLongest);
            }
            return InternalNamingConventions.generateNonConstantName(new char[][]{CharOperation.toLowerCase(sourceName)}, 0, onlyLongest);
        }
        char[][] nameParts = new char[length][];
        int namePartsPtr = -1;
        int endIndex = length;
        char c = sourceName[length - 1];
        int previousCharKind = ScannerHelper.isLowerCase(c) ? 1 : (ScannerHelper.isUpperCase(c) ? 2 : (c == '_' ? 3 : 4));
        int i = length - 1;
        while (i >= 0) {
            c = sourceName[i];
            int charKind = ScannerHelper.isLowerCase(c) ? 1 : (ScannerHelper.isUpperCase(c) ? 2 : (c == '_' ? 3 : 4));
            block0 : switch (charKind) {
                case 1: {
                    if (previousCharKind == 2) {
                        nameParts[++namePartsPtr] = CharOperation.subarray(sourceName, i + 1, endIndex);
                        endIndex = i + 1;
                    }
                    previousCharKind = 1;
                    break;
                }
                case 2: {
                    char pc;
                    if (previousCharKind == 1) {
                        nameParts[++namePartsPtr] = CharOperation.subarray(sourceName, i, endIndex);
                        if (i > 0) {
                            pc = sourceName[i - 1];
                            previousCharKind = ScannerHelper.isLowerCase(pc) ? 1 : (ScannerHelper.isUpperCase(pc) ? 2 : (pc == '_' ? 3 : 4));
                        }
                        endIndex = i;
                        break;
                    }
                    previousCharKind = 2;
                    break;
                }
                case 3: {
                    char pc;
                    switch (previousCharKind) {
                        case 3: {
                            if (!isConstantField) break block0;
                            if (i > 0) {
                                pc = sourceName[i - 1];
                                previousCharKind = ScannerHelper.isLowerCase(pc) ? 1 : (ScannerHelper.isUpperCase(pc) ? 2 : (pc == '_' ? 3 : 4));
                            }
                            endIndex = i;
                            break;
                        }
                        case 1: 
                        case 2: {
                            nameParts[++namePartsPtr] = CharOperation.subarray(sourceName, i + 1, endIndex);
                            if (i > 0) {
                                pc = sourceName[i - 1];
                                previousCharKind = ScannerHelper.isLowerCase(pc) ? 1 : (ScannerHelper.isUpperCase(pc) ? 2 : (pc == '_' ? 3 : 4));
                            }
                            endIndex = i + 1;
                            break;
                        }
                        default: {
                            previousCharKind = 3;
                            break;
                        }
                    }
                    break;
                }
                default: {
                    previousCharKind = 4;
                }
            }
            --i;
        }
        if (endIndex > 0) {
            nameParts[++namePartsPtr] = CharOperation.subarray(sourceName, 0, endIndex);
        }
        if (namePartsPtr == -1) {
            return new char[][]{sourceName};
        }
        if (isConstantField) {
            return InternalNamingConventions.generateConstantName(nameParts, namePartsPtr, onlyLongest);
        }
        return InternalNamingConventions.generateNonConstantName(nameParts, namePartsPtr, onlyLongest);
    }

    private static char[] excludeNames(char[] suffixName, char[] prefixName, char[] suffix, char[][] excludedNames) {
        int count = 2;
        int m = 0;
        while (m < excludedNames.length) {
            if (CharOperation.equals(suffixName, excludedNames[m], false)) {
                suffixName = CharOperation.concat(prefixName, String.valueOf(count++).toCharArray(), suffix);
                m = 0;
                continue;
            }
            ++m;
        }
        return suffixName;
    }

    private static char[][] generateNonConstantName(char[][] nameParts, int namePartsPtr, boolean onlyLongest) {
        char[][] names = onlyLongest ? new char[1][] : new char[namePartsPtr + 1][];
        char[] namePart = nameParts[0];
        char[] name = CharOperation.toLowerCase(namePart);
        if (!onlyLongest) {
            names[namePartsPtr] = name;
        }
        char[] nameSuffix = namePart;
        int i = 1;
        while (i <= namePartsPtr) {
            namePart = nameParts[i];
            name = CharOperation.concat(CharOperation.toLowerCase(namePart), nameSuffix);
            if (!onlyLongest) {
                names[namePartsPtr - i] = name;
            }
            nameSuffix = CharOperation.concat(namePart, nameSuffix);
            ++i;
        }
        if (onlyLongest) {
            names[0] = name;
        }
        return names;
    }

    private static char[][] generateConstantName(char[][] nameParts, int namePartsPtr, boolean onlyLongest) {
        char[][] names = onlyLongest ? new char[1][] : new char[namePartsPtr + 1][];
        char[] namePart = CharOperation.toUpperCase(nameParts[0]);
        int namePartLength = namePart.length;
        System.arraycopy(namePart, 0, namePart, 0, namePartLength);
        char[] name = namePart;
        if (!onlyLongest) {
            names[namePartsPtr] = name;
        }
        int i = 1;
        while (i <= namePartsPtr) {
            namePart = CharOperation.toUpperCase(nameParts[i]);
            name = namePart[(namePartLength = namePart.length) - 1] != '_' ? CharOperation.concat(namePart, name, '_') : CharOperation.concat(namePart, name);
            if (!onlyLongest) {
                names[namePartsPtr - i] = name;
            }
            ++i;
        }
        if (onlyLongest) {
            names[0] = name;
        }
        return names;
    }

    public static char[] getBaseName(int variableKind, IJavaProject javaProject, char[] name, boolean updateFirstCharacter) {
        AssistOptions assistOptions = javaProject != null ? new AssistOptions(javaProject.getOptions(true)) : new AssistOptions(JavaCore.getOptions());
        char[][] prefixes = null;
        char[][] suffixes = null;
        switch (variableKind) {
            case 2: {
                prefixes = assistOptions.fieldPrefixes;
                suffixes = assistOptions.fieldSuffixes;
                break;
            }
            case 1: {
                prefixes = assistOptions.staticFieldPrefixes;
                suffixes = assistOptions.staticFieldSuffixes;
                break;
            }
            case 3: {
                prefixes = assistOptions.staticFinalFieldPrefixes;
                suffixes = assistOptions.staticFinalFieldSuffixes;
                break;
            }
            case 5: {
                prefixes = assistOptions.localPrefixes;
                suffixes = assistOptions.localSuffixes;
                break;
            }
            case 4: {
                prefixes = assistOptions.argumentPrefixes;
                suffixes = assistOptions.argumentSuffixes;
            }
        }
        return InternalNamingConventions.getBaseName(name, prefixes, suffixes, variableKind == 3, updateFirstCharacter);
    }

    private static char[] getBaseName(char[] name, char[][] prefixes, char[][] suffixes, boolean isConstant, boolean updateFirstCharacter) {
        char[] baseName;
        char[] nameWithoutPrefixAndSiffix = InternalNamingConventions.removeVariablePrefixAndSuffix(name, prefixes, suffixes, updateFirstCharacter);
        if (isConstant) {
            int length = nameWithoutPrefixAndSiffix.length;
            baseName = new char[length];
            int baseNamePtr = -1;
            boolean previousIsUnderscore = false;
            int i = 0;
            while (i < length) {
                char c = nameWithoutPrefixAndSiffix[i];
                if (c != '_') {
                    if (previousIsUnderscore) {
                        baseName[++baseNamePtr] = ScannerHelper.toUpperCase(c);
                        previousIsUnderscore = false;
                    } else {
                        baseName[++baseNamePtr] = ScannerHelper.toLowerCase(c);
                    }
                } else {
                    previousIsUnderscore = true;
                }
                ++i;
            }
            char[] cArray = baseName;
            baseName = new char[baseNamePtr + 1];
            System.arraycopy(cArray, 0, baseName, 0, baseNamePtr + 1);
        } else {
            baseName = nameWithoutPrefixAndSiffix;
        }
        return baseName;
    }

    public static char[] removeVariablePrefixAndSuffix(int variableKind, IJavaProject javaProject, char[] name) {
        AssistOptions assistOptions = javaProject != null ? new AssistOptions(javaProject.getOptions(true)) : new AssistOptions(JavaCore.getOptions());
        char[][] prefixes = null;
        char[][] suffixes = null;
        switch (variableKind) {
            case 2: {
                prefixes = assistOptions.fieldPrefixes;
                suffixes = assistOptions.fieldSuffixes;
                break;
            }
            case 1: {
                prefixes = assistOptions.staticFieldPrefixes;
                suffixes = assistOptions.staticFieldSuffixes;
                break;
            }
            case 3: {
                prefixes = assistOptions.staticFinalFieldPrefixes;
                suffixes = assistOptions.staticFinalFieldSuffixes;
                break;
            }
            case 5: {
                prefixes = assistOptions.localPrefixes;
                suffixes = assistOptions.localSuffixes;
                break;
            }
            case 4: {
                prefixes = assistOptions.argumentPrefixes;
                suffixes = assistOptions.argumentSuffixes;
            }
        }
        return InternalNamingConventions.removeVariablePrefixAndSuffix(name, prefixes, suffixes, true);
    }

    private static char[] removeVariablePrefixAndSuffix(char[] name, char[][] prefixes, char[][] suffixes, boolean updateFirstCharacter) {
        char[] withoutPrefixName = name;
        if (prefixes != null) {
            int bestLength = 0;
            int i = 0;
            while (i < prefixes.length) {
                int currLen;
                boolean lastCharIsLetter;
                char[] prefix = prefixes[i];
                if (CharOperation.prefixEquals(prefix, name) && (!(lastCharIsLetter = ScannerHelper.isLetter(prefix[(currLen = prefix.length) - 1])) || lastCharIsLetter && name.length > currLen && ScannerHelper.isUpperCase(name[currLen])) && bestLength < currLen && name.length != currLen) {
                    withoutPrefixName = CharOperation.subarray(name, currLen, name.length);
                    bestLength = currLen;
                }
                ++i;
            }
        }
        char[] withoutSuffixName = withoutPrefixName;
        if (suffixes != null) {
            int bestLength = 0;
            int i = 0;
            while (i < suffixes.length) {
                int currLen;
                char[] suffix = suffixes[i];
                if (CharOperation.endsWith(withoutPrefixName, suffix) && bestLength < (currLen = suffix.length) && withoutPrefixName.length != currLen) {
                    withoutSuffixName = CharOperation.subarray(withoutPrefixName, 0, withoutPrefixName.length - currLen);
                    bestLength = currLen;
                }
                ++i;
            }
        }
        if (updateFirstCharacter) {
            withoutSuffixName[0] = ScannerHelper.toLowerCase(withoutSuffixName[0]);
        }
        return withoutSuffixName;
    }

    private static char[] removePrefix(char[] name, char[][] prefixes) {
        char[] withoutPrefixName = name;
        if (prefixes != null) {
            int bestLength = 0;
            int nameLength = name.length;
            int i = 0;
            while (i < prefixes.length) {
                char[] prefix = prefixes[i];
                int prefixLength = prefix.length;
                if (prefixLength <= nameLength) {
                    if (CharOperation.prefixEquals(prefix, name, false) && prefixLength > bestLength) {
                        bestLength = prefixLength;
                    }
                } else {
                    int currLen = 0;
                    while (currLen < nameLength) {
                        if (ScannerHelper.toLowerCase(prefix[currLen]) != ScannerHelper.toLowerCase(name[currLen])) {
                            if (currLen <= bestLength) break;
                            bestLength = currLen;
                            break;
                        }
                        ++currLen;
                    }
                    if (currLen == nameLength && currLen > bestLength) {
                        bestLength = currLen;
                    }
                }
                ++i;
            }
            if (bestLength > 0) {
                withoutPrefixName = bestLength == nameLength ? CharOperation.NO_CHAR : CharOperation.subarray(name, bestLength, nameLength);
            }
        }
        return withoutPrefixName;
    }

    public static void suggestVariableNames(int variableKind, int baseNameKind, char[] baseName, IJavaProject javaProject, int dim, char[] internalPrefix, char[][] excluded, boolean evaluateDefault, INamingRequestor requestor) {
        int length;
        if (baseName == null || baseName.length == 0) {
            return;
        }
        Map options = javaProject != null ? javaProject.getOptions(true) : JavaCore.getOptions();
        CompilerOptions compilerOptions = new CompilerOptions(options);
        AssistOptions assistOptions = new AssistOptions(options);
        boolean isConstantField = false;
        Object prefixes = null;
        Object suffixes = null;
        switch (variableKind) {
            case 2: {
                prefixes = assistOptions.fieldPrefixes;
                suffixes = assistOptions.fieldSuffixes;
                break;
            }
            case 1: {
                prefixes = assistOptions.staticFieldPrefixes;
                suffixes = assistOptions.staticFieldSuffixes;
                break;
            }
            case 3: {
                isConstantField = true;
                prefixes = assistOptions.staticFinalFieldPrefixes;
                suffixes = assistOptions.staticFinalFieldSuffixes;
                break;
            }
            case 5: {
                prefixes = assistOptions.localPrefixes;
                suffixes = assistOptions.localSuffixes;
                break;
            }
            case 4: {
                prefixes = assistOptions.argumentPrefixes;
                suffixes = assistOptions.argumentSuffixes;
            }
        }
        if (prefixes == null || ((char[][])prefixes).length == 0) {
            prefixes = new char[1][0];
        } else {
            length = ((char[][])prefixes).length;
            char[][] cArray = prefixes;
            char[][] cArrayArray = new char[length + 1][];
            prefixes = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, length);
            prefixes[length] = CharOperation.NO_CHAR;
        }
        if (suffixes == null || ((char[][])suffixes).length == 0) {
            suffixes = new char[1][0];
        } else {
            length = ((char[][])suffixes).length;
            char[][] cArray = suffixes;
            char[][] cArrayArray = new char[length + 1][];
            suffixes = cArrayArray;
            System.arraycopy(cArray, 0, cArrayArray, 0, length);
            suffixes[length] = CharOperation.NO_CHAR;
        }
        internalPrefix = internalPrefix == null ? CharOperation.NO_CHAR : InternalNamingConventions.removePrefix(internalPrefix, prefixes);
        char[][] tempNames = null;
        Scanner nameScanner = InternalNamingConventions.getNameScanner(compilerOptions);
        if (baseNameKind == 2) {
            boolean isBaseType = false;
            try {
                nameScanner.setSource(baseName);
                switch (nameScanner.getNextToken()) {
                    case 32: 
                    case 33: 
                    case 34: 
                    case 35: 
                    case 36: 
                    case 37: 
                    case 38: 
                    case 39: {
                        isBaseType = true;
                    }
                }
            }
            catch (InvalidInputException invalidInputException) {}
            if (isBaseType) {
                if (internalPrefix.length > 0) {
                    return;
                }
                tempNames = InternalNamingConventions.computeBaseTypeNames(baseName, isConstantField, excluded);
            } else {
                tempNames = InternalNamingConventions.computeNonBaseTypeNames(baseName, isConstantField, false);
            }
        } else {
            tempNames = InternalNamingConventions.computeNonBaseTypeNames(baseName, isConstantField, true);
        }
        boolean acceptDefaultName = true;
        SimpleSetOfCharArray foundNames = new SimpleSetOfCharArray();
        int i = 0;
        while (i < tempNames.length) {
            int j;
            char[] tempName = tempNames[i];
            if (dim > 0) {
                boolean precededByAVowel;
                int length2 = tempName.length;
                if (isConstantField) {
                    if (tempName[length2 - 1] == 'S') {
                        if (tempName.length > 1 && tempName[length2 - 2] == 'S') {
                            char[] cArray = tempName;
                            tempName = new char[length2 + 2];
                            System.arraycopy(cArray, 0, tempName, 0, length2);
                            tempName[length2] = 69;
                            tempName[length2 + 1] = 83;
                        }
                    } else if (tempName[length2 - 1] == 'Y') {
                        precededByAVowel = false;
                        if (tempName.length > 1) {
                            switch (tempName[length2 - 2]) {
                                case 'A': 
                                case 'E': 
                                case 'I': 
                                case 'O': 
                                case 'U': {
                                    precededByAVowel = true;
                                }
                            }
                        }
                        if (precededByAVowel) {
                            char[] cArray = tempName;
                            tempName = new char[length2 + 1];
                            System.arraycopy(cArray, 0, tempName, 0, length2);
                            tempName[length2] = 83;
                        } else {
                            char[] cArray = tempName;
                            tempName = new char[length2 + 2];
                            System.arraycopy(cArray, 0, tempName, 0, length2);
                            tempName[length2 - 1] = 73;
                            tempName[length2] = 69;
                            tempName[length2 + 1] = 83;
                        }
                    } else {
                        char[] cArray = tempName;
                        tempName = new char[length2 + 1];
                        System.arraycopy(cArray, 0, tempName, 0, length2);
                        tempName[length2] = 83;
                    }
                } else if (tempName[length2 - 1] == 's') {
                    if (tempName.length > 1 && tempName[length2 - 2] == 's') {
                        char[] cArray = tempName;
                        tempName = new char[length2 + 2];
                        System.arraycopy(cArray, 0, tempName, 0, length2);
                        tempName[length2] = 101;
                        tempName[length2 + 1] = 115;
                    }
                } else if (tempName[length2 - 1] == 'y') {
                    precededByAVowel = false;
                    if (tempName.length > 1) {
                        switch (tempName[length2 - 2]) {
                            case 'a': 
                            case 'e': 
                            case 'i': 
                            case 'o': 
                            case 'u': {
                                precededByAVowel = true;
                            }
                        }
                    }
                    if (precededByAVowel) {
                        char[] cArray = tempName;
                        tempName = new char[length2 + 1];
                        System.arraycopy(cArray, 0, tempName, 0, length2);
                        tempName[length2] = 115;
                    } else {
                        char[] cArray = tempName;
                        tempName = new char[length2 + 2];
                        System.arraycopy(cArray, 0, tempName, 0, length2);
                        tempName[length2 - 1] = 105;
                        tempName[length2] = 101;
                        tempName[length2 + 1] = 115;
                    }
                } else {
                    char[] cArray = tempName;
                    tempName = new char[length2 + 1];
                    System.arraycopy(cArray, 0, tempName, 0, length2);
                    tempName[length2] = 115;
                }
            }
            char[] unprefixedName = tempName;
            int matchingIndex = -1;
            if (!isConstantField) {
                unprefixedName[0] = ScannerHelper.toUpperCase(unprefixedName[0]);
                j = 0;
                while (j <= internalPrefix.length) {
                    if (j == internalPrefix.length || CharOperation.prefixEquals(CharOperation.subarray(internalPrefix, j, -1), unprefixedName, j != 0)) {
                        matchingIndex = j;
                        break;
                    }
                    ++j;
                }
            } else {
                j = 0;
                while (j <= internalPrefix.length) {
                    if (j == internalPrefix.length) {
                        matchingIndex = j;
                        break;
                    }
                    if (CharOperation.prefixEquals(CharOperation.subarray(internalPrefix, j, -1), unprefixedName, j != 0) && (j == 0 || internalPrefix[j - 1] == '_')) {
                        matchingIndex = j;
                        break;
                    }
                    ++j;
                }
            }
            if (matchingIndex > -1) {
                if (!isConstantField) {
                    tempName = CharOperation.concat(CharOperation.subarray(internalPrefix, 0, matchingIndex), unprefixedName);
                    if (matchingIndex == 0) {
                        tempName[0] = ScannerHelper.toLowerCase(tempName[0]);
                    }
                } else {
                    tempName = matchingIndex != 0 && tempName[0] != '_' && internalPrefix[matchingIndex - 1] != '_' ? CharOperation.concat(CharOperation.subarray(CharOperation.toUpperCase(internalPrefix), 0, matchingIndex), unprefixedName, '_') : CharOperation.concat(CharOperation.subarray(CharOperation.toUpperCase(internalPrefix), 0, matchingIndex), unprefixedName);
                }
                int k = 0;
                while (k < ((char[][])prefixes).length) {
                    if (!isConstantField) {
                        tempName[0] = prefixes[k].length > 0 && ScannerHelper.isLetterOrDigit(prefixes[k][prefixes[k].length - 1]) ? ScannerHelper.toUpperCase(tempName[0]) : ScannerHelper.toLowerCase(tempName[0]);
                    }
                    char[] prefixName = CharOperation.concat(prefixes[k], tempName);
                    int l = 0;
                    while (l < ((char[][])suffixes).length) {
                        block75: {
                            char[] suffixName = CharOperation.concat(prefixName, suffixes[l]);
                            suffixName = InternalNamingConventions.excludeNames(suffixName, prefixName, suffixes[l], excluded);
                            try {
                                nameScanner.setSource(suffixName);
                                block18 : switch (nameScanner.getNextToken()) {
                                    case 26: {
                                        int token = nameScanner.getNextToken();
                                        if (token == 69 && nameScanner.startPosition == suffixName.length && !foundNames.includes(suffixName)) {
                                            InternalNamingConventions.acceptName(suffixName, prefixes[k], suffixes[l], k == 0, l == 0, internalPrefix.length - matchingIndex, requestor);
                                            foundNames.add(suffixName);
                                            acceptDefaultName = false;
                                        }
                                        break;
                                    }
                                    default: {
                                        int token;
                                        suffixName = CharOperation.concat(prefixName, String.valueOf(1).toCharArray(), suffixes[l]);
                                        suffixName = InternalNamingConventions.excludeNames(suffixName, prefixName, suffixes[l], excluded);
                                        nameScanner.setSource(suffixName);
                                        switch (nameScanner.getNextToken()) {
                                            case 26: {
                                                token = nameScanner.getNextToken();
                                                if (token != 69 || nameScanner.startPosition != suffixName.length || foundNames.includes(suffixName)) break block75;
                                                InternalNamingConventions.acceptName(suffixName, prefixes[k], suffixes[l], k == 0, l == 0, internalPrefix.length - matchingIndex, requestor);
                                                foundNames.add(suffixName);
                                                acceptDefaultName = false;
                                            }
                                            default: {
                                                break block18;
                                            }
                                        }
                                    }
                                }
                            }
                            catch (InvalidInputException invalidInputException) {}
                        }
                        ++l;
                    }
                    ++k;
                }
            }
            ++i;
        }
        if (evaluateDefault && acceptDefaultName) {
            char[] name = InternalNamingConventions.excludeNames(DEFAULT_NAME, DEFAULT_NAME, CharOperation.NO_CHAR, excluded);
            requestor.acceptNameWithoutPrefixAndSuffix(name, 0);
        }
    }
}

