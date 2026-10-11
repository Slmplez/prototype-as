/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdt.internal.debug.core.breakpoints;

import org.eclipse.osgi.util.NLS;

public class JDIDebugBreakpointMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.debug.core.breakpoints.JDIDebugBreakpointMessages";
    public static String ConditionalBreakpointHandler_0;
    public static String ConditionalBreakpointHandler_1;
    public static String JavaBreakpoint___Hit_Count___0___1;
    public static String JavaBreakpoint_Exception;
    public static String JavaPatternBreakpoint_0;
    public static String JavaBreakpoint__suspend_policy__thread__1;
    public static String JavaBreakpoint__suspend_policy__VM__2;
    public static String JavaLineBreakpoint___Condition___0___2;
    public static String JavaLineBreakpoint_Unable_to_compile_conditional_breakpoint___missing_Java_project_context__1;
    public static String JavaLineBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1;
    public static String JavaLineBreakpoint___line___0___1;
    public static String JavaLineBreakpoint_Absent_Line_Number_Information_1;
    public static String JavaPatternBreakpoint_exception_source_name;
    public static String JavaPatternBreakpoint_Unable_to_add_breakpoint___VM_disconnected__1;
    public static String JavaWatchpoint_no_access_watchpoints;
    public static String JavaWatchpoint_no_modification_watchpoints;
    public static String JavaWatchpoint_Unable_to_create_breakpoint_request___VM_disconnected__1;
    public static String JavaExceptionBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1;
    public static String JavaMethodBreakpoint_0;
    public static String JavaMethodBreakpoint_Unable_to_create_breakpoint_request___VM_disconnected__1;
    public static String JavaTargetPatternBreakpoint_Unable_to_add_breakpoint___VM_disconnected__1;
    public static String JavaClassPrepareBreakpoint_2;
    public static String JavaClassPrepareBreakpoint_3;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

