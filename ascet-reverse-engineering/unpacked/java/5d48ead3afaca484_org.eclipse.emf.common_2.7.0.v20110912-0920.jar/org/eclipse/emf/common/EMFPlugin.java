/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IPluginDescriptor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.common;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.MessageFormat;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;
import java.util.jar.Manifest;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IPluginDescriptor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.CommonPlugin;
import org.eclipse.emf.common.util.DelegatingResourceLocator;
import org.eclipse.emf.common.util.Logger;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.common.util.WrappedException;
import org.osgi.framework.Bundle;

public abstract class EMFPlugin
extends DelegatingResourceLocator
implements ResourceLocator,
Logger {
    public static final boolean IS_ECLIPSE_RUNNING;
    public static final boolean IS_RESOURCES_BUNDLE_AVAILABLE;
    protected ResourceLocator[] delegateResourceLocators;

    static {
        boolean result = false;
        try {
            result = Platform.isRunning();
        }
        catch (Throwable throwable) {
            // empty catch block
        }
        IS_ECLIPSE_RUNNING = result;
        result = false;
        if (IS_ECLIPSE_RUNNING) {
            try {
                Bundle resourcesBundle = Platform.getBundle((String)"org.eclipse.core.resources");
                result = resourcesBundle != null && (resourcesBundle.getState() & 0x2C) != 0;
            }
            catch (Throwable throwable) {
                // empty catch block
            }
        }
        IS_RESOURCES_BUNDLE_AVAILABLE = result;
    }

    public EMFPlugin(ResourceLocator[] delegateResourceLocators) {
        this.delegateResourceLocators = delegateResourceLocators;
    }

    public abstract ResourceLocator getPluginResourceLocator();

    protected final ResourceLocator getPrimaryResourceLocator() {
        return this.getPluginResourceLocator();
    }

    protected ResourceLocator[] getDelegateResourceLocators() {
        return this.delegateResourceLocators;
    }

    public Logger getPluginLogger() {
        return (Logger)((Object)this.getPluginResourceLocator());
    }

    public String getSymbolicName() {
        ResourceLocator resourceLocator = this.getPluginResourceLocator();
        if (resourceLocator instanceof InternalEclipsePlugin) {
            return ((InternalEclipsePlugin)((Object)resourceLocator)).getSymbolicName();
        }
        String result = this.getClass().getName();
        return result.substring(0, result.lastIndexOf(46));
    }

    public void log(Object logEntry) {
        Logger logger = this.getPluginLogger();
        if (logger == null) {
            if (logEntry instanceof Throwable) {
                ((Throwable)logEntry).printStackTrace(System.err);
            } else {
                System.err.println(logEntry);
            }
        } else {
            logger.log(logEntry);
        }
    }

    public static void main(String[] args) {
        try {
            Manifest manifest;
            String symbolicName;
            String[] relativePath = new String[]{"META-INF", "MANIFEST.MF"};
            Class<EMFPlugin> theClass = args.length > 0 ? Class.forName(args[0]) : EMFPlugin.class;
            String className = theClass.getName();
            int index = className.lastIndexOf(".");
            URL classURL = theClass.getResource(String.valueOf(index == -1 ? className : className.substring(index + 1)) + ".class");
            URI uri = URI.createURI(classURL.toString());
            int count = 1;
            int i = 0;
            while ((i = className.indexOf(46, i)) != -1) {
                ++count;
                ++i;
            }
            uri = uri.trimSegments(count);
            URL manifestURL = null;
            if (URI.isArchiveScheme(uri.scheme())) {
                try {
                    String manifestURI = uri.appendSegments(relativePath).toString();
                    InputStream inputStream = new URL(manifestURI).openStream();
                    inputStream.close();
                    manifestURL = new URL(manifestURI);
                }
                catch (IOException exception) {
                    uri = URI.createURI(uri.authority()).trimSegments(1);
                }
            }
            if (manifestURL == null) {
                String lastSegment = uri.lastSegment();
                if ("bin".equals(lastSegment) || "runtime".equals(lastSegment)) {
                    uri = uri.trimSegments(1);
                }
                uri = uri.appendSegments(relativePath);
                manifestURL = new URL(uri.toString());
            }
            if ((symbolicName = (manifest = new Manifest(manifestURL.openStream())).getMainAttributes().getValue("Bundle-SymbolicName")) != null) {
                int end = symbolicName.indexOf(";");
                if (end != -1) {
                    symbolicName = symbolicName.substring(0, end);
                }
                System.out.println("Bundle-SymbolicName=" + symbolicName + " Bundle-Version=" + manifest.getMainAttributes().getValue("Bundle-Version"));
                return;
            }
        }
        catch (Exception exception) {
            // empty catch block
        }
        System.err.println("No Bundle information found");
    }

    public static abstract class EclipsePlugin
    extends Plugin
    implements ResourceLocator,
    Logger,
    InternalEclipsePlugin {
        protected InternalHelper helper = new InternalHelper(this);

        public EclipsePlugin() {
        }

        @Deprecated
        public EclipsePlugin(IPluginDescriptor descriptor) {
            super(descriptor);
        }

        public String getSymbolicName() {
            return this.helper.getSymbolicName();
        }

        public URL getBaseURL() {
            return this.helper.getBaseURL();
        }

        public Object getImage(String key) {
            try {
                return this.doGetImage(key);
            }
            catch (MalformedURLException exception) {
                throw new WrappedException(exception);
            }
            catch (IOException exception) {
                throw new MissingResourceException(CommonPlugin.INSTANCE.getString("_UI_StringResourceNotFound_exception", new Object[]{key}), this.getClass().getName(), key);
            }
        }

        protected Object doGetImage(String key) throws IOException {
            return this.helper.getImage(key);
        }

        public String getString(String key) {
            return this.helper.getString(key, true);
        }

        public String getString(String key, boolean translate) {
            return this.helper.getString(key, translate);
        }

        public String getString(String key, Object[] substitutions) {
            return this.helper.getString(key, substitutions, true);
        }

        public String getString(String key, Object[] substitutions, boolean translate) {
            return this.helper.getString(key, substitutions, translate);
        }

        public void log(Object logEntry) {
            this.helper.log(logEntry);
        }
    }

    public static interface InternalEclipsePlugin {
        public String getSymbolicName();
    }

    public static class InternalHelper {
        protected Plugin plugin;
        protected ResourceBundle resourceBundle;
        protected ResourceBundle untranslatedResourceBundle;

        public InternalHelper(Plugin plugin) {
            this.plugin = plugin;
        }

        protected Bundle getBundle() {
            return this.plugin.getBundle();
        }

        protected ILog getLog() {
            return this.plugin.getLog();
        }

        public String getSymbolicName() {
            return this.getBundle().getSymbolicName();
        }

        public URL getBaseURL() {
            return this.getBundle().getEntry("/");
        }

        public Object getImage(String key) throws IOException {
            URL url = new URL(this.getBaseURL() + "icons/" + key + EMFPlugin.extensionFor(key));
            InputStream inputStream = url.openStream();
            inputStream.close();
            return url;
        }

        public String getString(String key, boolean translate) {
            ResourceBundle bundle;
            ResourceBundle resourceBundle = bundle = translate ? this.resourceBundle : this.untranslatedResourceBundle;
            if (bundle == null) {
                if (translate) {
                    bundle = this.resourceBundle = Platform.getResourceBundle((Bundle)this.getBundle());
                } else {
                    String resourceName = String.valueOf(this.getBaseURL().toString()) + "plugin.properties";
                    try {
                        InputStream inputStream = new URL(resourceName).openStream();
                        bundle = this.untranslatedResourceBundle = new PropertyResourceBundle(inputStream);
                        inputStream.close();
                    }
                    catch (IOException ioException) {
                        throw new MissingResourceException("Missing properties: " + resourceName, this.getClass().getName(), "plugin.properties");
                    }
                }
            }
            return bundle.getString(key);
        }

        public String getString(String key, Object[] substitutions, boolean translate) {
            return MessageFormat.format(this.getString(key, translate), substitutions);
        }

        public void log(Object logEntry) {
            if (logEntry instanceof IStatus) {
                IStatus status = (IStatus)logEntry;
                this.getLog().log(status);
            } else {
                if (logEntry == null) {
                    logEntry = new RuntimeException(this.getString("_UI_NullLogEntry_exception", true)).fillInStackTrace();
                }
                if (logEntry instanceof Throwable) {
                    Throwable throwable = (Throwable)logEntry;
                    String message = throwable.getLocalizedMessage();
                    if (message == null) {
                        message = "";
                    }
                    this.getLog().log((IStatus)new Status(2, this.getBundle().getSymbolicName(), 0, message, throwable));
                } else {
                    this.getLog().log((IStatus)new Status(2, this.getBundle().getSymbolicName(), 0, logEntry.toString(), null));
                }
            }
        }
    }
}

