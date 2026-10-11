/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.core.util.Util
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.util.Util;

public class SignatureExt {
    /*
     * Unable to fully structure code
     */
    public static char[][] getTypeSuperClassInterfaces(char[] typeSignature) throws IllegalArgumentException {
        try {
            block7: {
                length = typeSignature.length;
                if (length == 0) {
                    return CharOperation.NO_CHAR_CHAR;
                }
                i = 0;
                if (typeSignature[0] != '<') break block7;
                ++i;
                while (i < length && typeSignature[i] != '>') {
                    if ((i = CharOperation.indexOf((char)':', (char[])typeSignature, (int)i)) >= 0 && i < length) ** GOTO lbl14
                    throw new IllegalArgumentException();
lbl-1000:
                    // 1 sources

                    {
                        if (typeSignature[++i] == ':') continue;
                        i = Util.scanTypeSignature((char[])typeSignature, (int)i);
                        ++i;
lbl14:
                        // 3 sources

                        ** while (typeSignature[i] == ':')
                    }
lbl15:
                    // 1 sources

                }
                if (i < 0 || i >= length) {
                    throw new IllegalArgumentException();
                }
                ++i;
            }
            superList = new ArrayList<char[]>();
            while (i < length) {
                superStart = i;
                i = Util.scanTypeSignature((char[])typeSignature, (int)i);
                superList.add(CharOperation.subarray((char[])typeSignature, (int)superStart, (int)(++i)));
            }
            result = new char[superList.size()][];
            superList.toArray((T[])result);
            return result;
        }
        catch (ArrayIndexOutOfBoundsException v0) {
            throw new IllegalArgumentException();
        }
    }

    public static String[] getTypeSuperClassInterfaces(String typeSignature) throws IllegalArgumentException {
        char[][] params = SignatureExt.getTypeSuperClassInterfaces(typeSignature.toCharArray());
        return CharOperation.toStrings((char[][])params);
    }
}

