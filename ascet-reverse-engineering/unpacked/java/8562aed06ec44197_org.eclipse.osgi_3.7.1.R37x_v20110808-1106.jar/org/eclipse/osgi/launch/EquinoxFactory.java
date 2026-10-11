/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.launch;

import java.util.Map;
import org.eclipse.osgi.launch.Equinox;
import org.osgi.framework.launch.Framework;
import org.osgi.framework.launch.FrameworkFactory;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EquinoxFactory
implements FrameworkFactory {
    @Override
    public Framework newFramework(Map<String, String> configuration) {
        return new Equinox(configuration);
    }
}

