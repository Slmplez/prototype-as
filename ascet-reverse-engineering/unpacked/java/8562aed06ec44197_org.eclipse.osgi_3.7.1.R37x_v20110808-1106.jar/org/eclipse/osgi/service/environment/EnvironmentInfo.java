/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.service.environment;

public interface EnvironmentInfo {
    public String[] getCommandLineArgs();

    public String[] getFrameworkArgs();

    public String[] getNonFrameworkArgs();

    public String getOSArch();

    public String getNL();

    public String getOS();

    public String getWS();

    public boolean inDebugMode();

    public boolean inDevelopmentMode();

    public String getProperty(String var1);

    public String setProperty(String var1, String var2);
}

