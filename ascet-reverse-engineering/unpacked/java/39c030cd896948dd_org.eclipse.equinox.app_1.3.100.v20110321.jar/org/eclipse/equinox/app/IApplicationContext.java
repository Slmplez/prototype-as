/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Bundle
 */
package org.eclipse.equinox.app;

import java.util.Map;
import org.eclipse.equinox.app.IApplication;
import org.osgi.framework.Bundle;

public interface IApplicationContext {
    public static final String EXIT_DATA_PROPERTY = "eclipse.exitdata";
    public static final String APPLICATION_ARGS = "application.args";
    public static final Object EXIT_ASYNC_RESULT = new Object();

    public Map getArguments();

    public void applicationRunning();

    public String getBrandingApplication();

    public String getBrandingName();

    public String getBrandingDescription();

    public String getBrandingId();

    public String getBrandingProperty(String var1);

    public Bundle getBrandingBundle();

    public void setResult(Object var1, IApplication var2);
}

