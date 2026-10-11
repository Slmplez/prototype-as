/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.pluginconversion;

public class PluginConversionException
extends Exception {
    private static final long serialVersionUID = 3258130258472284472L;
    private transient Throwable cause;

    public PluginConversionException() {
    }

    public PluginConversionException(String message) {
        super(message);
    }

    public PluginConversionException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public PluginConversionException(Throwable cause) {
        this.cause = cause;
    }

    public Throwable getCause() {
        return this.cause;
    }
}

