/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.validation.internal;

import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;

public class EMFModelValidationDebugOptions {
    public static final String DEBUG = String.valueOf(EMFModelValidationPlugin.getPluginId()) + "/debug";
    public static final String EXCEPTIONS_CATCHING = String.valueOf(DEBUG) + "/exceptions/catching";
    public static final String EXCEPTIONS_THROWING = String.valueOf(DEBUG) + "/exceptions/throwing";
    public static final String METHODS_ENTERING = String.valueOf(DEBUG) + "/methods/entering";
    public static final String METHODS_EXITING = String.valueOf(DEBUG) + "/methods/exiting";
    public static final String CACHE = String.valueOf(DEBUG) + "/cache";
    public static final String CONSTRAINTS = String.valueOf(DEBUG) + "/constraints";
    public static final String CONSTRAINTS_EVALUATION = String.valueOf(CONSTRAINTS) + "/evaluation";
    public static final String CONSTRAINTS_DISABLED = String.valueOf(CONSTRAINTS) + "/disabled";
    public static final String PARSERS = String.valueOf(DEBUG) + "/parsers";
    public static final String PROVIDERS = String.valueOf(DEBUG) + "/providers";
    public static final String LISTENERS = String.valueOf(DEBUG) + "/listeners";
    public static final String XML = String.valueOf(DEBUG) + "/xml";

    private EMFModelValidationDebugOptions() {
    }
}

