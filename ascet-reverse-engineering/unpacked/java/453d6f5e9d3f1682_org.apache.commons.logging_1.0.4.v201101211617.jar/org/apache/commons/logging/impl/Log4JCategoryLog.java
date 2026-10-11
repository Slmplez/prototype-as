/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.log4j.Category
 *  org.apache.log4j.Level
 */
package org.apache.commons.logging.impl;

import org.apache.commons.logging.Log;
import org.apache.log4j.Category;
import org.apache.log4j.Level;

public final class Log4JCategoryLog
implements Log {
    private static final String FQCN = (class$org$apache$commons$logging$impl$Log4JCategoryLog == null ? (class$org$apache$commons$logging$impl$Log4JCategoryLog = Log4JCategoryLog.class$("org.apache.commons.logging.impl.Log4JCategoryLog")) : class$org$apache$commons$logging$impl$Log4JCategoryLog).getName();
    private Category category = null;
    static /* synthetic */ Class class$org$apache$commons$logging$impl$Log4JCategoryLog;

    public Log4JCategoryLog() {
    }

    public Log4JCategoryLog(String name) {
        this.category = Category.getInstance((String)name);
    }

    public Log4JCategoryLog(Category category) {
        this.category = category;
    }

    public void trace(Object message) {
        this.category.log(FQCN, Level.DEBUG, message, null);
    }

    public void trace(Object message, Throwable t) {
        this.category.log(FQCN, Level.DEBUG, message, t);
    }

    public void debug(Object message) {
        this.category.log(FQCN, Level.DEBUG, message, null);
    }

    public void debug(Object message, Throwable t) {
        this.category.log(FQCN, Level.DEBUG, message, t);
    }

    public void info(Object message) {
        this.category.log(FQCN, Level.INFO, message, null);
    }

    public void info(Object message, Throwable t) {
        this.category.log(FQCN, Level.INFO, message, t);
    }

    public void warn(Object message) {
        this.category.log(FQCN, Level.WARN, message, null);
    }

    public void warn(Object message, Throwable t) {
        this.category.log(FQCN, Level.WARN, message, t);
    }

    public void error(Object message) {
        this.category.log(FQCN, Level.ERROR, message, null);
    }

    public void error(Object message, Throwable t) {
        this.category.log(FQCN, Level.ERROR, message, t);
    }

    public void fatal(Object message) {
        this.category.log(FQCN, Level.FATAL, message, null);
    }

    public void fatal(Object message, Throwable t) {
        this.category.log(FQCN, Level.FATAL, message, t);
    }

    public Category getCategory() {
        return this.category;
    }

    public boolean isDebugEnabled() {
        return this.category.isDebugEnabled();
    }

    public boolean isErrorEnabled() {
        return this.category.isEnabledFor(Level.ERROR);
    }

    public boolean isFatalEnabled() {
        return this.category.isEnabledFor(Level.FATAL);
    }

    public boolean isInfoEnabled() {
        return this.category.isInfoEnabled();
    }

    public boolean isTraceEnabled() {
        return this.category.isDebugEnabled();
    }

    public boolean isWarnEnabled() {
        return this.category.isEnabledFor(Level.WARN);
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

