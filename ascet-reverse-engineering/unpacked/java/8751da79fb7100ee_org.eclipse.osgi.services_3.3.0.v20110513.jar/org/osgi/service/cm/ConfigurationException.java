/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.cm;

public class ConfigurationException
extends Exception {
    static final long serialVersionUID = -1690090413441769377L;
    private final String property;
    private final String reason;

    public ConfigurationException(String property, String reason) {
        super(property + " : " + reason);
        this.property = property;
        this.reason = reason;
    }

    public ConfigurationException(String property, String reason, Throwable cause) {
        super(property + " : " + reason, cause);
        this.property = property;
        this.reason = reason;
    }

    public String getProperty() {
        return this.property;
    }

    public String getReason() {
        return this.reason;
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable initCause(Throwable cause) {
        return super.initCause(cause);
    }
}

