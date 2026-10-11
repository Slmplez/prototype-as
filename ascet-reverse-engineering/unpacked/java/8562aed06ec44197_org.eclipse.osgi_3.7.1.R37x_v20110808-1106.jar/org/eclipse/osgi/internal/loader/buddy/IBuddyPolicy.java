/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.loader.buddy;

import java.net.URL;
import java.util.Enumeration;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IBuddyPolicy {
    public Class<?> loadClass(String var1);

    public URL loadResource(String var1);

    public Enumeration<URL> loadResources(String var1);
}

