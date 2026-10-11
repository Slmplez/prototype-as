/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework.launch;

import java.util.Map;
import org.osgi.framework.launch.Framework;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FrameworkFactory {
    public Framework newFramework(Map<String, String> var1);
}

