/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.impl;

import java.util.logging.ConsoleHandler;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ICULogger
extends Logger {
    private static final String GLOBAL_FLAG_TURN_ON_LOGGING = "all";
    private static final String SYSTEM_PROP_LOGGER = "icu4j.debug.logging";
    private LOGGER_STATUS currentStatus;

    private ICULogger(String name, String resourceBundleName) {
        super(name, resourceBundleName);
    }

    private void setStatus(LOGGER_STATUS newStatus) {
        if (this.currentStatus != newStatus) {
            if (this.currentStatus == LOGGER_STATUS.OFF && newStatus == LOGGER_STATUS.ON) {
                this.setLevel(Level.INFO);
            }
            this.currentStatus = newStatus;
            if (this.currentStatus == LOGGER_STATUS.OFF) {
                this.setLevel(Level.OFF);
            }
        }
    }

    private static LOGGER_STATUS checkGlobalLoggingFlag() {
        try {
            String prop = System.getProperty(SYSTEM_PROP_LOGGER);
            if (prop != null) {
                if (prop.equals(GLOBAL_FLAG_TURN_ON_LOGGING)) {
                    return LOGGER_STATUS.ON;
                }
                return LOGGER_STATUS.OFF;
            }
        }
        catch (SecurityException securityException) {}
        return LOGGER_STATUS.NULL;
    }

    public static ICULogger getICULogger(String name) {
        return ICULogger.getICULogger(name, null);
    }

    public static ICULogger getICULogger(String name, String resourceBundleName) {
        LOGGER_STATUS flag = ICULogger.checkGlobalLoggingFlag();
        if (flag != LOGGER_STATUS.NULL) {
            ICULogger logger = new ICULogger(name, resourceBundleName);
            logger.addHandler(new ConsoleHandler());
            if (flag == LOGGER_STATUS.ON) {
                logger.turnOnLogging();
            } else {
                logger.turnOffLogging();
            }
            return logger;
        }
        return null;
    }

    public boolean isLoggingOn() {
        return this.currentStatus == LOGGER_STATUS.ON;
    }

    public void turnOnLogging() {
        this.setStatus(LOGGER_STATUS.ON);
    }

    public void turnOffLogging() {
        this.setStatus(LOGGER_STATUS.OFF);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static enum LOGGER_STATUS {
        ON,
        OFF,
        NULL;

    }
}

