/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.log4j.Level
 *  org.apache.log4j.Logger
 *  org.apache.log4j.Priority
 */
package org.apache.commons.logging.impl;

import java.io.Serializable;
import org.apache.commons.logging.Log;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.Priority;

public class Log4JLogger
implements Log,
Serializable {
    private static final String FQCN = (class$org$apache$commons$logging$impl$Log4JLogger == null ? (class$org$apache$commons$logging$impl$Log4JLogger = Log4JLogger.class$("org.apache.commons.logging.impl.Log4JLogger")) : class$org$apache$commons$logging$impl$Log4JLogger).getName();
    private static final boolean is12 = (class$org$apache$log4j$Priority == null ? (class$org$apache$log4j$Priority = Log4JLogger.class$("org.apache.log4j.Priority")) : class$org$apache$log4j$Priority).isAssignableFrom(class$org$apache$log4j$Level == null ? (class$org$apache$log4j$Level = Log4JLogger.class$("org.apache.log4j.Level")) : class$org$apache$log4j$Level);
    private transient Logger logger = null;
    private String name = null;
    static /* synthetic */ Class class$org$apache$commons$logging$impl$Log4JLogger;
    static /* synthetic */ Class class$org$apache$log4j$Level;
    static /* synthetic */ Class class$org$apache$log4j$Priority;

    public Log4JLogger() {
    }

    public Log4JLogger(String name) {
        this.name = name;
        this.logger = this.getLogger();
    }

    public Log4JLogger(Logger logger) {
        this.name = logger.getName();
        this.logger = logger;
    }

    public void trace(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.DEBUG, message, null);
        } else {
            this.getLogger().log(FQCN, Level.DEBUG, message, null);
        }
    }

    public void trace(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.DEBUG, message, t);
        } else {
            this.getLogger().log(FQCN, Level.DEBUG, message, t);
        }
    }

    public void debug(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.DEBUG, message, null);
        } else {
            this.getLogger().log(FQCN, Level.DEBUG, message, null);
        }
    }

    public void debug(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.DEBUG, message, t);
        } else {
            this.getLogger().log(FQCN, Level.DEBUG, message, t);
        }
    }

    public void info(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.INFO, message, null);
        } else {
            this.getLogger().log(FQCN, Level.INFO, message, null);
        }
    }

    public void info(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.INFO, message, t);
        } else {
            this.getLogger().log(FQCN, Level.INFO, message, t);
        }
    }

    public void warn(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.WARN, message, null);
        } else {
            this.getLogger().log(FQCN, Level.WARN, message, null);
        }
    }

    public void warn(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.WARN, message, t);
        } else {
            this.getLogger().log(FQCN, Level.WARN, message, t);
        }
    }

    public void error(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.ERROR, message, null);
        } else {
            this.getLogger().log(FQCN, Level.ERROR, message, null);
        }
    }

    public void error(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.ERROR, message, t);
        } else {
            this.getLogger().log(FQCN, Level.ERROR, message, t);
        }
    }

    public void fatal(Object message) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.FATAL, message, null);
        } else {
            this.getLogger().log(FQCN, Level.FATAL, message, null);
        }
    }

    public void fatal(Object message, Throwable t) {
        if (is12) {
            this.getLogger().log(FQCN, (Priority)Level.FATAL, message, t);
        } else {
            this.getLogger().log(FQCN, Level.FATAL, message, t);
        }
    }

    public Logger getLogger() {
        if (this.logger == null) {
            this.logger = Logger.getLogger((String)this.name);
        }
        return this.logger;
    }

    public boolean isDebugEnabled() {
        return this.getLogger().isDebugEnabled();
    }

    public boolean isErrorEnabled() {
        if (is12) {
            return this.getLogger().isEnabledFor((Priority)Level.ERROR);
        }
        return this.getLogger().isEnabledFor(Level.ERROR);
    }

    public boolean isFatalEnabled() {
        if (is12) {
            return this.getLogger().isEnabledFor((Priority)Level.FATAL);
        }
        return this.getLogger().isEnabledFor(Level.FATAL);
    }

    public boolean isInfoEnabled() {
        return this.getLogger().isInfoEnabled();
    }

    public boolean isTraceEnabled() {
        return this.getLogger().isDebugEnabled();
    }

    public boolean isWarnEnabled() {
        if (is12) {
            return this.getLogger().isEnabledFor((Priority)Level.WARN);
        }
        return this.getLogger().isEnabledFor(Level.WARN);
    }

    static /* synthetic */ Class class$(String x0) {
        try {
            return Class.forName(x0);
        }
        catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}

