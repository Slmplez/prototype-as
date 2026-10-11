/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.SimpleDateFormat
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.jdt.internal.debug.core;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import org.eclipse.core.runtime.Platform;

public class JDIDebugOptions {
    public static boolean DEBUG = false;
    public static boolean DEBUG_JDI_EVENTS = false;
    public static boolean DEBUG_JDI_REQUEST_TIMES = false;
    public static boolean DEBUG_AST_EVAL = false;
    public static boolean DEBUG_AST_EVAL_THREAD_TRACE = false;
    public static final DateFormat FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    public static void initDebugOptions() {
        DEBUG = "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.debug/debug"));
        DEBUG_JDI_EVENTS = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.debug/debug/jdiEvents"));
        DEBUG_JDI_REQUEST_TIMES = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.debug/debug/jdiRequestTimes"));
        DEBUG_AST_EVAL = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.debug/debug/astEvaluations"));
        DEBUG_AST_EVAL_THREAD_TRACE = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.debug/debug/astEvaluations/callingThreads"));
    }
}

