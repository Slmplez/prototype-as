/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import java.util.ArrayList;

public class CompositeId {
    private String[] fParts;

    public CompositeId(String[] parts) {
        this.fParts = parts;
    }

    public static CompositeId fromString(String idString) {
        ArrayList<String> parts = new ArrayList<String>();
        int commaIndex = idString.indexOf(44);
        while (commaIndex > 0) {
            int length = Integer.valueOf(idString.substring(0, commaIndex));
            String part = idString.substring(commaIndex + 1, commaIndex + 1 + length);
            parts.add(part);
            idString = idString.substring(commaIndex + 1 + length);
            commaIndex = idString.indexOf(44);
        }
        String[] result = parts.toArray(new String[parts.size()]);
        return new CompositeId(result);
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        int i = 0;
        while (i < this.fParts.length) {
            buf.append(this.fParts[i].length());
            buf.append(',');
            buf.append(this.fParts[i]);
            ++i;
        }
        return buf.toString();
    }

    public String get(int index) {
        return this.fParts[index];
    }

    public int getPartCount() {
        return this.fParts.length;
    }
}

