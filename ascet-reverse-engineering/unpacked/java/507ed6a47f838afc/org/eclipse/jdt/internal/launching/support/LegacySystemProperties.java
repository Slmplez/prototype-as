/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching.support;

public class LegacySystemProperties {
    public static void main(String[] args) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("<systemProperties>\n");
        int i = 0;
        while (i < args.length) {
            String name = args[i];
            String value = System.getProperty(name);
            if (value != null) {
                buffer.append("<property ");
                buffer.append("\n\tname= \"");
                buffer.append(name);
                buffer.append("\"\n\tvalue= \"");
                buffer.append(value);
                buffer.append("\"/>\n");
            }
            ++i;
        }
        buffer.append("</systemProperties>");
        System.out.print(buffer.toString());
    }
}

