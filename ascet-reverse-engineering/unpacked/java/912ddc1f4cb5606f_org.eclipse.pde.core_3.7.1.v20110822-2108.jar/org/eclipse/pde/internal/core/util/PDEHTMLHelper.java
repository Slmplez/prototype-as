/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.util.HashMap;

public class PDEHTMLHelper {
    public static final HashMap fgEntityLookup = new HashMap(6);

    static {
        fgEntityLookup.put("lt", "<");
        fgEntityLookup.put("gt", ">");
        fgEntityLookup.put("nbsp", " ");
        fgEntityLookup.put("amp", "&");
        fgEntityLookup.put("apos", "'");
        fgEntityLookup.put("quot", "\"");
    }

    /*
     * Unable to fully structure code
     */
    public static String stripTags(String html) {
        if (html == null) {
            return null;
        }
        length = html.length();
        write = true;
        oldChar = ' ';
        sb = new StringBuffer(length);
        processingEntity = false;
        entityBuffer = null;
        i = 0;
        while (i < length) {
            block11: {
                block12: {
                    block10: {
                        curr = html.charAt(i);
                        if (curr != '&') break block10;
                        processingEntity = true;
                        entityBuffer = new StringBuffer();
                        break block11;
                    }
                    if (!processingEntity || curr != ';') break block12;
                    processingEntity = false;
                    entity = (String)PDEHTMLHelper.fgEntityLookup.get(entityBuffer.toString());
                    if (entity == null) break block11;
                    curr = entity.charAt(0);
                    ** GOTO lbl-1000
                }
                if (processingEntity) {
                    entityBuffer.append(curr);
                } else if (curr == '<') {
                    write = false;
                } else if (curr == '>') {
                    write = true;
                } else if (write && curr != '\r' && curr != '\n' && curr != '\t' && (curr != ' ' || oldChar != curr)) {
                    sb.append(curr);
                    oldChar = curr;
                }
            }
            ++i;
        }
        if (PDEHTMLHelper.isAllWhitespace(sb.toString())) {
            return null;
        }
        return sb.toString();
    }

    public static boolean isAllWhitespace(String string) {
        if (string == null) {
            return false;
        }
        char[] characters = string.toCharArray();
        int i = 0;
        while (i < characters.length) {
            if (!Character.isWhitespace(characters[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }
}

