/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal.util;

import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Trace {
    public static boolean shouldTraceEntering() {
        return Trace.shouldTrace(EMFModelValidationDebugOptions.METHODS_ENTERING);
    }

    public static boolean shouldTraceEntering(String option) {
        return Trace.shouldTraceEntering() && Trace.shouldTrace(option);
    }

    public static boolean shouldTraceExiting() {
        return Trace.shouldTrace(EMFModelValidationDebugOptions.METHODS_EXITING);
    }

    public static boolean shouldTraceExiting(String option) {
        return Trace.shouldTraceExiting() && Trace.shouldTrace(option);
    }

    public static boolean shouldTraceCatching() {
        return Trace.shouldTrace(EMFModelValidationDebugOptions.EXCEPTIONS_CATCHING);
    }

    public static boolean shouldTraceThrowing() {
        return Trace.shouldTrace(EMFModelValidationDebugOptions.EXCEPTIONS_THROWING);
    }

    public static boolean shouldTrace(String option) {
        return EMFModelValidationPlugin.Tracing.shouldTrace(option);
    }

    public static void trace(String message) {
        EMFModelValidationPlugin.Tracing.trace(message);
    }

    public static void trace(String option, String message) {
        EMFModelValidationPlugin.Tracing.trace(option, message);
    }

    public static void entering(Class<?> clazz, String methodName) {
        EMFModelValidationPlugin.Tracing.entering(EMFModelValidationDebugOptions.METHODS_ENTERING, clazz, methodName, new Object[0]);
    }

    public static void entering(Class<?> clazz, String methodName, Object parameter) {
        EMFModelValidationPlugin.Tracing.entering(EMFModelValidationDebugOptions.METHODS_ENTERING, clazz, methodName, parameter);
    }

    public static void entering(Class<?> clazz, String methodName, Object[] parameters) {
        EMFModelValidationPlugin.Tracing.entering(EMFModelValidationDebugOptions.METHODS_ENTERING, clazz, methodName, parameters);
    }

    public static void entering(String option, Class<?> clazz, String methodName) {
        if (Trace.shouldTraceEntering()) {
            EMFModelValidationPlugin.Tracing.entering(option, clazz, methodName, new Object[0]);
        }
    }

    public static void entering(String option, Class<?> clazz, String methodName, Object parameter) {
        if (Trace.shouldTraceEntering()) {
            EMFModelValidationPlugin.Tracing.entering(option, clazz, methodName, parameter);
        }
    }

    public static void entering(String option, Class<?> clazz, String methodName, Object[] parameters) {
        if (Trace.shouldTraceEntering()) {
            EMFModelValidationPlugin.Tracing.entering(option, clazz, methodName, parameters);
        }
    }

    public static void exiting(Class<?> clazz, String methodName) {
        EMFModelValidationPlugin.Tracing.exiting(EMFModelValidationDebugOptions.METHODS_EXITING, clazz, methodName);
    }

    public static void exiting(Class<?> clazz, String methodName, Object returnValue) {
        EMFModelValidationPlugin.Tracing.exiting(EMFModelValidationDebugOptions.METHODS_EXITING, clazz, methodName, returnValue);
    }

    public static void exiting(String option, Class<?> clazz, String methodName) {
        if (Trace.shouldTraceExiting()) {
            EMFModelValidationPlugin.Tracing.exiting(option, clazz, methodName);
        }
    }

    public static void exiting(String option, Class<?> clazz, String methodName, Object returnValue) {
        if (Trace.shouldTraceExiting()) {
            EMFModelValidationPlugin.Tracing.exiting(option, clazz, methodName, returnValue);
        }
    }

    public static void catching(Class<?> clazz, String methodName, Throwable throwable) {
        EMFModelValidationPlugin.Tracing.catching(EMFModelValidationDebugOptions.EXCEPTIONS_CATCHING, clazz, methodName, throwable);
    }

    public static void throwing(Class<?> clazz, String methodName, Throwable throwable) {
        EMFModelValidationPlugin.Tracing.throwing(EMFModelValidationDebugOptions.EXCEPTIONS_THROWING, clazz, methodName, throwable);
    }

    public static String toString(Object[] array) {
        StringBuffer result = new StringBuffer(64);
        result.append('[');
        int i = 0;
        while (i < array.length) {
            if (i > 0) {
                result.append(", ");
            }
            result.append(array[i]);
            ++i;
        }
        result.append(']');
        return result.toString();
    }
}

