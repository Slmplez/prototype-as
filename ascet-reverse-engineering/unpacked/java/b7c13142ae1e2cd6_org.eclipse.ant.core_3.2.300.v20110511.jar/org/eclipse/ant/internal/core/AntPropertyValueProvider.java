/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 */
package org.eclipse.ant.internal.core;

import java.io.File;
import java.net.URL;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.IAntPropertyValueProvider;
import org.eclipse.core.runtime.FileLocator;

public class AntPropertyValueProvider
implements IAntPropertyValueProvider {
    public String getAntPropertyValue(String propertyName) {
        String value = null;
        if ("eclipse.running".equals(propertyName)) {
            return "true";
        }
        if ("eclipse.home".equals(propertyName)) {
            try {
                value = new File(FileLocator.resolve((URL)new URL("platform:/base/")).getPath()).getAbsolutePath();
                if (value.endsWith("/")) {
                    value = value.substring(0, value.length() - 1);
                }
            }
            catch (Exception e) {
                AntCorePlugin.log(e);
            }
        }
        return value;
    }
}

