/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 */
package org.eclipse.equinox.spi.p2.publisher;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class LocalizationHelper {
    private static final String PROPERTIES_FILE_EXTENSION = ".properties";
    private static final Locale DEFAULT_LOCALE = new Locale("df", "LT");
    private static LocalizationHelper instance = new LocalizationHelper();

    public static String getLocaleString(String filename, String prefix) {
        String localeString = null;
        if (filename.startsWith(prefix) && filename.endsWith(PROPERTIES_FILE_EXTENSION)) {
            localeString = filename.length() > prefix.length() + PROPERTIES_FILE_EXTENSION.length() ? filename.substring(prefix.length() + 1, filename.length() - PROPERTIES_FILE_EXTENSION.length()) : "";
        }
        return localeString;
    }

    public static Locale getLocale(String localeString) {
        Locale locale = DEFAULT_LOCALE;
        if (localeString.length() == 5 && localeString.indexOf(95) == 2) {
            locale = new Locale(localeString.substring(0, 2), localeString.substring(3, 5));
        } else if (localeString.length() == 2) {
            locale = new Locale(localeString.substring(0, 2));
        }
        return locale;
    }

    public static Map<Locale, Map<String, String>> getDirPropertyLocalizations(File root, String localizationPath, Locale defaultLocale, String[] propertyKeys) {
        File fullPath = new File(root, localizationPath);
        File localizationDir = fullPath.getParentFile();
        String localizationFile = fullPath.getName();
        String[] localizationFiles = LocalizationHelper.getLocalizationFiles(localizationDir, localizationFile);
        HashMap<Locale, Map<String, String>> localizations = null;
        if (localizationFiles != null && localizationFiles.length > 0) {
            localizations = new HashMap<Locale, Map<String, String>>(localizationFiles.length);
            int i = 0;
            while (i < localizationFiles.length) {
                String nextFile = localizationFiles[i];
                Locale nextLocale = LocalizationHelper.getLocale(LocalizationHelper.getLocaleString(nextFile, localizationFile));
                try {
                    Map<String, String> properties = LocalizationHelper.loadProperties(localizationDir, nextFile);
                    Map<String, String> localizedStrings = LocalizationHelper.getLocalizedProperties(propertyKeys, properties);
                    if (localizedStrings.size() > 0) {
                        localizations.put(nextLocale, localizedStrings);
                        if (DEFAULT_LOCALE.equals(nextLocale) && defaultLocale != null) {
                            localizations.put(nextLocale, localizedStrings);
                        }
                    }
                }
                catch (IOException ioe) {
                    ioe.printStackTrace();
                }
                ++i;
            }
        }
        return localizations;
    }

    public static Map<Locale, Map<String, String>> getJarPropertyLocalizations(File root, String localizationPath, Locale defaultLocale, String[] propertyKeys) {
        HashMap<Locale, Map<String, String>> localizations;
        block19: {
            ZipFile jarFile = null;
            localizations = new HashMap<Locale, Map<String, String>>(4);
            try {
                try {
                    jarFile = new ZipFile(root, 1);
                    Enumeration<? extends ZipEntry> entries = jarFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextEntry = entries.nextElement();
                        String nextName = nextEntry.getName();
                        String localeString = LocalizationHelper.getLocaleString(nextName, localizationPath);
                        if (nextEntry.isDirectory() || localeString == null) continue;
                        Locale nextLocale = LocalizationHelper.getLocale(localeString);
                        InputStream stream = null;
                        try {
                            stream = jarFile.getInputStream(nextEntry);
                            Map properties = CollectionUtils.loadProperties((InputStream)stream);
                            Map<String, String> localizedStrings = LocalizationHelper.getLocalizedProperties(propertyKeys, properties);
                            if (localizedStrings.size() <= 0) continue;
                            localizations.put(nextLocale, localizedStrings);
                            if (!DEFAULT_LOCALE.equals(nextLocale) || defaultLocale == null) continue;
                            localizations.put(nextLocale, localizedStrings);
                        }
                        finally {
                            if (stream != null) {
                                stream.close();
                            }
                        }
                    }
                }
                catch (IOException ioe) {
                    ioe.printStackTrace();
                    if (jarFile != null) {
                        try {
                            jarFile.close();
                        }
                        catch (IOException iOException) {}
                    }
                    break block19;
                }
            }
            catch (Throwable throwable) {
                if (jarFile != null) {
                    try {
                        jarFile.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (jarFile != null) {
                try {
                    jarFile.close();
                }
                catch (IOException iOException) {}
            }
        }
        return localizations;
    }

    private static Map<String, String> loadProperties(File root, String propertyFilename) throws IOException {
        InputStream propertyStream = null;
        try {
            try {
                if (root.isDirectory()) {
                    propertyStream = new FileInputStream(new File(root, propertyFilename));
                } else {
                    URLConnection connection = new URL(new StringBuffer("jar:").append(root.toURL().toExternalForm()).append("!/").append(propertyFilename).toString()).openConnection();
                    connection.setUseCaches(false);
                    propertyStream = connection.getInputStream();
                }
            }
            catch (FileNotFoundException fileNotFoundException) {
                Map map = CollectionUtils.emptyMap();
                if (propertyStream != null) {
                    propertyStream.close();
                }
                return map;
            }
            Map map = CollectionUtils.loadProperties((InputStream)propertyStream);
            return map;
        }
        finally {
            if (propertyStream != null) {
                propertyStream.close();
            }
        }
    }

    public static Map<String, String> getLocalizedProperties(String[] propertyKeys, Map<String, String> properties) {
        HashMap<String, String> localizedProperties = new HashMap<String, String>();
        int i = 0;
        while (i < propertyKeys.length) {
            String localizedValue;
            String key = propertyKeys[i];
            if (key != null && (localizedValue = properties.get(key)) != null) {
                localizedProperties.put(key, localizedValue);
            }
            ++i;
        }
        return localizedProperties;
    }

    public static String[] getLocalizationFiles(File localizationDir, final String filenamePrefix) {
        LocalizationHelper localizationHelper = instance;
        localizationHelper.getClass();
        return localizationDir.list(new FileFilter(localizationHelper){

            public boolean accept(File directory, String filename) {
                return LocalizationHelper.getLocaleString(filename, filenamePrefix) != null;
            }
        });
    }

    private LocalizationHelper() {
    }

    private abstract class FileFilter
    implements FilenameFilter {
        public abstract boolean accept(File var1, String var2);
    }
}

