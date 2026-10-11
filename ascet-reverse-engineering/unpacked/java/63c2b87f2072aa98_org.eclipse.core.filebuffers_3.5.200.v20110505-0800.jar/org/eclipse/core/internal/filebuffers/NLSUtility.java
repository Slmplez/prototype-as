/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 */
package org.eclipse.core.internal.filebuffers;

import com.ibm.icu.text.MessageFormat;

public class NLSUtility {
    public static String format(String message, Object argument) {
        return MessageFormat.format((String)message, (Object[])new Object[]{argument});
    }

    public static String format(String message, Object[] arguments) {
        return MessageFormat.format((String)message, (Object[])arguments);
    }

    private NLSUtility() {
    }
}

