/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching.support;

import java.util.Enumeration;

public class LibraryDetector {
    public static void main(String[] args) {
        if ("j9".equalsIgnoreCase(System.getProperty("java.vm.name"))) {
            String configuration = System.getProperty("com.ibm.oti.configuration");
            if ("found10".equals(configuration)) {
                System.out.print("1.4");
            } else if ("found11".equals(configuration)) {
                System.out.print("1.4");
            } else {
                System.out.print(System.getProperty("java.version"));
            }
            System.out.print("|");
            System.out.print(System.getProperty("com.ibm.oti.system.class.path"));
        } else {
            System.out.print(System.getProperty("java.version"));
            System.out.print("|");
            Enumeration keys = System.getProperties().keys();
            boolean found = false;
            while (keys.hasMoreElements()) {
                String key = (String)keys.nextElement();
                if (!key.endsWith(".boot.class.path")) continue;
                found = true;
                System.out.print(System.getProperty(key));
                break;
            }
            if (!found) {
                System.out.print(System.getProperty("sun.boot.class.path"));
            }
        }
        System.out.print("|");
        System.out.print(System.getProperty("java.ext.dirs"));
        System.out.print("|");
        System.out.print(System.getProperty("java.endorsed.dirs"));
    }
}

