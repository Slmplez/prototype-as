/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.validation.internal.modeled;

import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ClassProvider {
    public Class<?> loadClass(String var1) throws ClassNotFoundException;

    public String bind(String var1, Object[] var2);

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class BundleProvider
    implements ClassProvider {
        private final Bundle bundle;

        public BundleProvider(Bundle bundle) {
            this.bundle = bundle;
        }

        @Override
        public Class<?> loadClass(String name) throws ClassNotFoundException {
            return this.bundle.loadClass(name);
        }

        public ResourceBundle getResourceBundle(String name) {
            return Platform.getResourceBundle((Bundle)this.bundle);
        }

        @Override
        public String bind(String string, Object[] args) {
            if (string == null) {
                return null;
            }
            return NLS.bind((String)Platform.getResourceString((Bundle)this.bundle, (String)string), (Object[])args);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ClassLoaderProvider
    implements ClassProvider {
        private final ResourceLocator locator;

        public ClassLoaderProvider(ResourceLocator locator) {
            this.locator = locator;
        }

        @Override
        public Class<?> loadClass(String name) throws ClassNotFoundException {
            return this.locator.getClass().getClassLoader().loadClass(name);
        }

        @Override
        public String bind(String string, Object[] args) {
            if (string == null) {
                return null;
            }
            try {
                if (string.startsWith("%")) {
                    return this.locator.getString(string.substring(1), args, true);
                }
                return this.locator.getString(string, args, true);
            }
            catch (MissingResourceException missingResourceException) {
                return string;
            }
        }
    }
}

