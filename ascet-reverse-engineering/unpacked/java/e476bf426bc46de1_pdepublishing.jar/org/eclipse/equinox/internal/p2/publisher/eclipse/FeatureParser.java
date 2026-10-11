/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.spi.p2.publisher.LocalizationHelper
 */
package org.eclipse.equinox.internal.p2.publisher.eclipse;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.publisher.eclipse.FeatureManifestParser;
import org.eclipse.equinox.p2.publisher.eclipse.Feature;
import org.eclipse.equinox.spi.p2.publisher.LocalizationHelper;
import org.eclipse.pde.internal.publishing.Activator;
import org.xml.sax.SAXException;

public class FeatureParser {
    private final FeatureManifestParser parser = new FeatureManifestParser();

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public Feature parse(File location) {
        JarFile jar;
        Feature feature;
        block43: {
            JarEntry entry;
            block42: {
                if (!location.exists()) {
                    return null;
                }
                feature = null;
                if (location.isDirectory()) {
                    File file = new File(location, "feature.xml");
                    InputStream input = null;
                    try {
                        input = new BufferedInputStream(new FileInputStream(file));
                        feature = this.parser.parse(input, FeatureParser.toURL(location));
                        if (feature != null) {
                            List<String> messageKeys = this.parser.getMessageKeys();
                            String[] keyStrings = messageKeys.toArray(new String[messageKeys.size()]);
                            feature.setLocalizations(LocalizationHelper.getDirPropertyLocalizations((File)location, (String)"feature", null, (String[])keyStrings));
                        }
                    }
                    catch (FileNotFoundException fileNotFoundException) {
                        if (input == null) return null;
                        try {
                            input.close();
                            return null;
                        }
                        catch (IOException iOException) {}
                        return null;
                    }
                    catch (SAXException e) {
                        FeatureParser.logWarning(location, e);
                        if (input == null) return feature;
                        try {
                            input.close();
                            return feature;
                        }
                        catch (IOException iOException) {}
                        return feature;
                    }
                    catch (IOException e) {
                        FeatureParser.logWarning(location, e);
                        if (input == null) return feature;
                        {
                            catch (Throwable throwable) {
                                if (input == null) throw throwable;
                                try {
                                    input.close();
                                    throw throwable;
                                }
                                catch (IOException iOException) {}
                                throw throwable;
                            }
                        }
                        try {
                            input.close();
                            return feature;
                        }
                        catch (IOException iOException) {}
                        return feature;
                    }
                    if (input == null) return feature;
                    try {
                        input.close();
                        return feature;
                    }
                    catch (IOException iOException) {}
                    return feature;
                }
                if (!location.getName().endsWith(".jar")) return feature;
                jar = null;
                jar = new JarFile(location);
                entry = jar.getJarEntry("feature.xml");
                if (entry != null) break block42;
                try {
                    if (jar == null) return null;
                    jar.close();
                    return null;
                }
                catch (IOException iOException) {}
                return null;
            }
            try {
                BufferedInputStream input = new BufferedInputStream(jar.getInputStream(entry));
                feature = this.parser.parse(input, FeatureParser.toURL(location));
                if (feature == null) break block43;
                List<String> messageKeys = this.parser.getMessageKeys();
                String[] keyStrings = messageKeys.toArray(new String[messageKeys.size()]);
                feature.setLocalizations(LocalizationHelper.getJarPropertyLocalizations((File)location, (String)"feature", null, (String[])keyStrings));
            }
            catch (SAXException e) {
                FeatureParser.logWarning(location, e);
                try {
                    if (jar == null) return feature;
                    jar.close();
                    return feature;
                }
                catch (IOException iOException) {}
                return feature;
            }
            catch (IOException e) {
                FeatureParser.logWarning(location, e);
                try {
                    if (jar == null) return feature;
                    jar.close();
                    return feature;
                }
                catch (IOException iOException) {}
                return feature;
            }
            catch (SecurityException e) {
                FeatureParser.logWarning(location, e);
                {
                    catch (Throwable throwable) {
                        try {
                            if (jar == null) throw throwable;
                            jar.close();
                            throw throwable;
                        }
                        catch (IOException iOException) {}
                        throw throwable;
                    }
                }
                try {
                    if (jar == null) return feature;
                    jar.close();
                    return feature;
                }
                catch (IOException iOException) {}
                return feature;
            }
        }
        try {
            if (jar == null) return feature;
            jar.close();
            return feature;
        }
        catch (IOException iOException) {}
        return feature;
    }

    private static void logWarning(File location, Exception exception) {
        LogHelper.log((IStatus)new Status(2, Activator.ID, "Exception parsing feature: " + location.getAbsolutePath(), (Throwable)exception));
    }

    private static URL toURL(File location) {
        try {
            return location.toURI().toURL();
        }
        catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }
}

