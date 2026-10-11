/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.expressions;

import org.eclipse.osgi.util.NLS;

public class Messages {
    public static String format(String message, Object object) {
        return NLS.bind((String)message, (Object)object);
    }

    public static String format(String message, Object[] objects) {
        return NLS.bind((String)message, (Object[])objects);
    }

    private Messages() {
    }
}

