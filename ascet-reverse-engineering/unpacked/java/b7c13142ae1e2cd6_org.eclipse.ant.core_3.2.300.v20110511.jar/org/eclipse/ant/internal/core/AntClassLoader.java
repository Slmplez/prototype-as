/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.internal.core;

import java.io.IOException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;

public class AntClassLoader
extends URLClassLoader {
    private static final String ANT_PACKAGES_PREFIX = "org.apache.tools";
    private static final String ANT_URL_PREFIX = "org/apache/tools";
    private boolean fAllowPluginLoading = false;
    protected ClassLoader[] fPluginLoaders;
    private ClassLoader fContextClassloader = null;

    public AntClassLoader(URL[] urls, ClassLoader[] pluginLoaders) {
        super(urls, ClassLoader.getSystemClassLoader());
        this.fPluginLoaders = pluginLoaders;
    }

    protected Class findClass(String name) throws ClassNotFoundException {
        Class result = null;
        if (this.fAllowPluginLoading || !name.startsWith(ANT_PACKAGES_PREFIX)) {
            result = this.loadClassPlugins(name);
        }
        if (result != null) {
            return result;
        }
        return super.findClass(name);
    }

    protected Class loadClassPlugins(String name) {
        ClassLoader originalClassLoader = Thread.currentThread().getContextClassLoader();
        if (this.fContextClassloader != null) {
            Thread.currentThread().setContextClassLoader(this.fContextClassloader);
        }
        try {
            Class<?> result = null;
            if (this.fPluginLoaders != null) {
                int i = 0;
                while (i < this.fPluginLoaders.length && result == null) {
                    try {
                        result = this.fPluginLoaders[i].loadClass(name);
                    }
                    catch (ClassNotFoundException classNotFoundException) {}
                    ++i;
                }
            }
            Class<?> clazz = result;
            return clazz;
        }
        finally {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
        }
    }

    public URL findResource(String name) {
        URL result;
        if ((this.fAllowPluginLoading || !name.startsWith(ANT_URL_PREFIX)) && (result = this.findResourcePlugins(name)) != null) {
            return result;
        }
        return super.findResource(name);
    }

    private URL findResourcePlugins(String name) {
        ClassLoader originalClassLoader = Thread.currentThread().getContextClassLoader();
        if (this.fContextClassloader != null) {
            Thread.currentThread().setContextClassLoader(this.fContextClassloader);
        }
        try {
            URL result = null;
            if (this.fPluginLoaders != null) {
                int i = 0;
                while (i < this.fPluginLoaders.length) {
                    result = this.fPluginLoaders[i].getResource(name);
                    if (result != null) {
                        URL uRL = result;
                        return uRL;
                    }
                    ++i;
                }
            }
        }
        finally {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Enumeration findResources(String name) throws IOException {
        originalClassLoader = Thread.currentThread().getContextClassLoader();
        if (this.fContextClassloader != null) {
            Thread.currentThread().setContextClassLoader(this.fContextClassloader);
        }
        all = new ArrayList<URL>();
        try {
            if (!this.fAllowPluginLoading && (name.startsWith("org/apache/tools") || name.startsWith("org/apache/tools", 1)) || this.fPluginLoaders == null) ** GOTO lbl13
            result = null;
            i = 0;
lbl9:
            // 2 sources

            while (true) {
                block8: {
                    if (i >= this.fPluginLoaders.length) break block8;
                    result = this.fPluginLoaders[i].getResources(name);
                    if (true) ** GOTO lbl26
                }
                superResources = super.findResources(name);
                if (all.isEmpty()) {
                    var7_6 = superResources;
                    Thread.currentThread().setContextClassLoader(originalClassLoader);
                    return var7_6;
                }
                ** GOTO lbl31
                break;
            }
        }
        catch (Throwable var6_8) {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
            throw var6_8;
        }
        do {
            all.add(result.nextElement());
lbl26:
            // 2 sources

        } while (result.hasMoreElements());
        ++i;
        ** while (true)
lbl-1000:
        // 1 sources

        {
            all.add(superResources.nextElement());
lbl31:
            // 2 sources

            ** while (superResources.hasMoreElements())
        }
lbl32:
        // 1 sources

        var7_7 = Collections.enumeration(all);
        Thread.currentThread().setContextClassLoader(originalClassLoader);
        return var7_7;
    }

    public void allowPluginClassLoadersToLoadAnt(boolean allowLoading) {
        this.fAllowPluginLoading = allowLoading;
    }

    public void setPluginContextClassloader(ClassLoader classLoader) {
        this.fContextClassloader = classLoader;
    }
}

