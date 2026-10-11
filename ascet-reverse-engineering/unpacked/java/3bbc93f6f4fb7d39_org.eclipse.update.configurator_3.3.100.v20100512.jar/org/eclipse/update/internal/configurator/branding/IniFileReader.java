/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.update.internal.configurator.branding;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.PropertyResourceBundle;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.update.internal.configurator.Messages;
import org.eclipse.update.internal.configurator.Utils;
import org.osgi.framework.Bundle;

public class IniFileReader {
    private static final String PID = "org.eclipse.update.configurator";
    private static final Status OK_STATUS = new Status(0, "org.eclipse.update.configurator", 0, "", null);
    private static final String KEY_PREFIX = "%";
    private static final String KEY_DOUBLE_PREFIX = "%%";
    private static final String NLS_TAG = "$nl$";
    private String featureId;
    private String pluginId;
    private String iniFilename;
    private String propertiesFilename;
    private String mappingsFilename;
    private Properties ini = null;
    private PropertyResourceBundle properties = null;
    private String[] mappings = null;
    private Bundle bundle;

    public IniFileReader(String featureId, String pluginId, String iniFilename, String propertiesFilename, String mappingsFilename) {
        if (featureId == null || pluginId == null || iniFilename == null) {
            throw new IllegalArgumentException();
        }
        this.featureId = featureId;
        this.pluginId = pluginId;
        this.iniFilename = iniFilename;
        this.propertiesFilename = propertiesFilename;
        this.mappingsFilename = mappingsFilename;
    }

    public IStatus load() {
        if (this.ini != null) {
            return OK_STATUS;
        }
        this.bundle = Utils.getBundle(this.pluginId);
        if (this.bundle == null || this.bundle.getState() == 1 || this.bundle.getState() == 2) {
            this.bundle = null;
            String message = NLS.bind((String)Messages.IniFileReader_MissingDesc, (Object[])new String[]{this.featureId});
            return new Status(4, PID, 0, message, null);
        }
        URL iniURL = null;
        Throwable ioe = null;
        iniURL = FileLocator.find((Bundle)this.bundle, (IPath)new Path(NLS_TAG).append(this.iniFilename), null);
        if (iniURL == null) {
            String message = NLS.bind((String)Messages.IniFileReader_OpenINIError, (Object[])new String[]{this.iniFilename});
            return new Status(4, PID, 0, message, ioe);
        }
        URL propertiesURL = null;
        if (this.propertiesFilename != null & this.propertiesFilename.length() > 0) {
            propertiesURL = FileLocator.find((Bundle)this.bundle, (IPath)new Path(NLS_TAG).append(this.propertiesFilename), null);
        }
        URL mappingsURL = null;
        if (this.mappingsFilename != null && this.mappingsFilename.length() > 0) {
            mappingsURL = FileLocator.find((Bundle)this.bundle, (IPath)new Path(NLS_TAG).append(this.mappingsFilename), null);
        }
        return this.load(iniURL, propertiesURL, mappingsURL);
    }

    public String getString(String key, boolean doNls, Hashtable runtimeMappings) {
        if (this.ini == null) {
            return null;
        }
        String value = this.ini.getProperty(key);
        if (value != null && doNls) {
            return this.getResourceString(value, runtimeMappings);
        }
        return value;
    }

    public URL getURL(String key) {
        if (this.ini == null) {
            return null;
        }
        URL url = null;
        String fileName = this.ini.getProperty(key);
        if (fileName != null) {
            if (this.bundle == null) {
                return null;
            }
            url = FileLocator.find((Bundle)this.bundle, (IPath)new Path(fileName), null);
        }
        return url;
    }

    public URL[] getURLs(String key) {
        if (this.ini == null || this.bundle == null) {
            return null;
        }
        String value = this.ini.getProperty(key);
        if (value == null) {
            return null;
        }
        StringTokenizer tokens = new StringTokenizer(value, ",");
        ArrayList<URL> array = new ArrayList<URL>(10);
        while (tokens.hasMoreTokens()) {
            String str = tokens.nextToken().trim();
            array.add(FileLocator.find((Bundle)this.bundle, (IPath)new Path(str), null));
        }
        URL[] urls = new URL[array.size()];
        array.toArray(urls);
        return urls;
    }

    public String getFeaturePluginLabel() {
        if (this.bundle == null) {
            return null;
        }
        return (String)this.bundle.getHeaders().get("Bundle-Name");
    }

    public String getProviderName() {
        if (this.bundle == null) {
            return null;
        }
        return (String)this.bundle.getHeaders().get("Bundle-Vendor");
    }

    public String getResourceString(String value, Hashtable runtimeMappings) {
        String dflt;
        if (value == null) {
            return null;
        }
        String s = value.trim();
        if (!s.startsWith(KEY_PREFIX)) {
            return s;
        }
        if (s.startsWith(KEY_DOUBLE_PREFIX)) {
            return s.substring(1);
        }
        int ix = s.indexOf(" ");
        String key = ix == -1 ? s : s.substring(0, ix);
        String string = dflt = ix == -1 ? s : s.substring(ix + 1);
        if (this.properties == null) {
            return dflt;
        }
        String result = null;
        try {
            result = this.properties.getString(key.substring(1));
        }
        catch (MissingResourceException missingResourceException) {
            return dflt;
        }
        if (runtimeMappings != null) {
            Enumeration e = runtimeMappings.keys();
            while (e.hasMoreElements()) {
                String keyValue = (String)e.nextElement();
                int i = result.indexOf(keyValue);
                if (i == -1) continue;
                String s1 = result.substring(0, i);
                String s2 = (String)runtimeMappings.get(keyValue);
                String s3 = result.substring(i + keyValue.length());
                result = String.valueOf(s1) + s2 + s3;
            }
        }
        if (result.indexOf(123) != -1) {
            try {
                result = MessageFormat.format(result, this.mappings);
            }
            catch (IllegalArgumentException illegalArgumentException) {}
        }
        return result;
    }

    private IStatus load(URL iniURL, URL propertiesURL, URL mappingsURL) {
        InputStream is = null;
        try {
            try {
                is = iniURL.openStream();
                this.ini = new Properties();
                this.ini.load(is);
            }
            catch (IOException e) {
                this.ini = null;
                String message = NLS.bind((String)Messages.IniFileReader_ReadIniError, (Object[])new String[]{iniURL.toExternalForm()});
                Status status = new Status(4, PID, 0, message, (Throwable)e);
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                return status;
            }
        }
        catch (Throwable throwable) {
            try {
                if (is != null) {
                    is.close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (is != null) {
                is.close();
            }
        }
        catch (IOException iOException) {}
        if (propertiesURL != null) {
            is = null;
            try {
                try {
                    is = propertiesURL.openStream();
                    this.properties = new PropertyResourceBundle(is);
                }
                catch (IOException e) {
                    this.properties = null;
                    String message = NLS.bind((String)Messages.IniFileReader_ReadPropError, (Object[])new String[]{propertiesURL.toExternalForm()});
                    Status status = new Status(4, PID, 0, message, (Throwable)e);
                    try {
                        if (is != null) {
                            is.close();
                        }
                    }
                    catch (IOException iOException) {}
                    return status;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (is != null) {
                    is.close();
                }
            }
            catch (IOException iOException) {}
        }
        PropertyResourceBundle bundle = null;
        if (mappingsURL != null) {
            is = null;
            try {
                try {
                    is = mappingsURL.openStream();
                    bundle = new PropertyResourceBundle(is);
                }
                catch (IOException e) {
                    bundle = null;
                    String message = NLS.bind((String)Messages.IniFileReader_ReadMapError, (Object[])new String[]{mappingsURL.toExternalForm()});
                    Status status = new Status(4, PID, 0, message, (Throwable)e);
                    try {
                        if (is != null) {
                            is.close();
                        }
                    }
                    catch (IOException iOException) {}
                    return status;
                }
            }
            catch (Throwable throwable) {
                try {
                    if (is != null) {
                        is.close();
                    }
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                if (is != null) {
                    is.close();
                }
            }
            catch (IOException iOException) {}
        }
        ArrayList<String> mappingsList = new ArrayList<String>();
        if (bundle != null) {
            boolean found = true;
            int i = 0;
            while (found) {
                try {
                    mappingsList.add(bundle.getString(Integer.toString(i)));
                }
                catch (MissingResourceException missingResourceException) {
                    found = false;
                }
                ++i;
            }
        }
        this.mappings = mappingsList.toArray(new String[mappingsList.size()]);
        return OK_STATUS;
    }
}

