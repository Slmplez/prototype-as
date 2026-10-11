/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.build.site;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.build.Utils;
import org.osgi.framework.Bundle;

public class ProfileManager {
    public static final String PROFILE_EXTENSION = ".profile";
    public static final String SYSTEM_PACKAGES = "org.osgi.framework.system.packages";
    public static final String PROFILE_NAME = "osgi.java.profile.name";
    public static final String PROFILE_LIST = "profile.list";
    public static final String JAVA_PROFILES = "java.profiles";
    public static final String PROFILE_JAVAC_SOURCE = "org.eclipse.jdt.core.compiler.source";
    public static final String PROFILE_JAVAC_TARGET = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    private final HashMap profileMap = new HashMap();
    private String[] profileSources = null;

    public ProfileManager() {
        this.loadProfiles(true);
    }

    public ProfileManager(String[] profileSources) {
        this.profileSources = profileSources;
        this.loadProfiles(false);
    }

    public ProfileManager(String[] profileSources, boolean includeRuntime) {
        this.profileSources = profileSources;
        this.loadProfiles(includeRuntime);
    }

    public Properties getProfileProperties(String profileName) {
        return (Properties)this.profileMap.get(profileName);
    }

    public void copyEEProfileProperties(Dictionary source, Properties target) {
        String[] profiles = this.getJavaProfiles();
        int i = 0;
        while (i < profiles.length) {
            Object value = source.get(profiles[i]);
            if (value != null && value instanceof String) {
                target.put(profiles[i], value);
            }
            ++i;
        }
    }

    public String getJavacSource(String environment) {
        if (this.profileMap.containsKey(environment)) {
            Properties properties = (Properties)this.profileMap.get(environment);
            return properties.getProperty(PROFILE_JAVAC_SOURCE);
        }
        return null;
    }

    public String getJavacTarget(String environment) {
        if (this.profileMap.containsKey(environment)) {
            Properties properties = (Properties)this.profileMap.get(environment);
            return properties.getProperty(PROFILE_JAVAC_TARGET);
        }
        return null;
    }

    public String[] getJavaProfiles() {
        Set keys = this.profileMap.keySet();
        return this.sortProfiles(keys.toArray(new String[keys.size()]));
    }

    protected String[] sortProfiles(String[] profiles) {
        Arrays.sort(profiles, new Comparator(){

            public int compare(Object profile1, Object profile2) {
                String p1 = (String)profile1;
                String p2 = (String)profile2;
                if (p1.startsWith("JavaSE") && !p2.startsWith("JavaSE")) {
                    return -1;
                }
                if (!p1.startsWith("JavaSE") && p2.startsWith("JavaSE")) {
                    return 1;
                }
                if (p1.startsWith("J2SE") && !p2.startsWith("J2SE")) {
                    return -1;
                }
                if (!p1.startsWith("J2SE") && p2.startsWith("J2SE")) {
                    return 1;
                }
                return -p1.compareTo(p2);
            }
        });
        return profiles;
    }

    protected void loadProfiles(boolean includeRuntime) {
        if (includeRuntime || this.profileSources == null) {
            this.loadRuntimeJavaProfiles();
        }
        if (this.profileSources != null) {
            int i = 0;
            while (i < this.profileSources.length) {
                File source = new File(this.profileSources[i]);
                if (source.isDirectory()) {
                    this.loadJavaProfiles(source);
                } else {
                    this.loadJarJavaProfiles(source);
                }
                ++i;
            }
        }
    }

    protected void loadJarJavaProfiles(File bundleLocation) {
        block5: {
            ZipFile zipFile = null;
            try {
                try {
                    zipFile = new ZipFile(bundleLocation, 1);
                    this.loadJavaProfiles(zipFile);
                }
                catch (IOException iOException) {
                    Utils.close(zipFile);
                    break block5;
                }
            }
            catch (Throwable throwable) {
                Utils.close(zipFile);
                throw throwable;
            }
            Utils.close(zipFile);
        }
    }

    protected void loadRuntimeJavaProfiles() {
        Bundle systemBundle = Platform.getBundle((String)"org.eclipse.osgi");
        if (systemBundle != null) {
            this.loadJavaProfiles(systemBundle);
        }
    }

    private InputStream getProfileListInputStream(Object container) {
        Bundle systemBundle;
        URL url;
        if (container instanceof File) {
            File listFile = new File((File)container, PROFILE_LIST);
            if (listFile.exists()) {
                try {
                    return new BufferedInputStream(new FileInputStream(listFile));
                }
                catch (FileNotFoundException fileNotFoundException) {
                    return null;
                }
            }
        } else if (container instanceof ZipFile) {
            ZipFile zipFile = (ZipFile)container;
            ZipEntry listEntry = ((ZipFile)container).getEntry(PROFILE_LIST);
            if (listEntry != null) {
                try {
                    return new BufferedInputStream(zipFile.getInputStream(listEntry));
                }
                catch (IOException iOException) {
                    return null;
                }
            }
        } else if (container instanceof Bundle && (url = (systemBundle = (Bundle)container).getEntry(PROFILE_LIST)) != null) {
            try {
                return new BufferedInputStream(url.openStream());
            }
            catch (IOException iOException) {
                return null;
            }
        }
        return null;
    }

    private Enumeration getProfilesEnum(Object container, String[] profiles) {
        if (profiles != null) {
            return Utils.getArrayEnumerator(profiles);
        }
        if (container instanceof File) {
            Object[] files = ((File)container).listFiles(new FilenameFilter(){

                public boolean accept(File dir, String name) {
                    return name.endsWith(ProfileManager.PROFILE_EXTENSION);
                }
            });
            return Utils.getArrayEnumerator(files);
        }
        if (container instanceof ZipFile) {
            return ((ZipFile)container).entries();
        }
        if (container instanceof Bundle) {
            return ((Bundle)container).findEntries("/", "*.profile", false);
        }
        return null;
    }

    private InputStream getEntryInputStream(Object container, Object entry) {
        try {
            if (entry instanceof String) {
                if (container instanceof File) {
                    entry = new File((File)container, (String)entry);
                } else if (container instanceof ZipFile) {
                    entry = ((ZipFile)container).getEntry((String)entry);
                } else if (container instanceof Bundle) {
                    entry = ((Bundle)container).getEntry((String)entry);
                }
            }
            if (entry instanceof File) {
                return new BufferedInputStream(new FileInputStream((File)entry));
            }
            if (entry instanceof ZipEntry) {
                return new BufferedInputStream(((ZipFile)container).getInputStream((ZipEntry)entry));
            }
            if (entry instanceof URL) {
                return new BufferedInputStream(((URL)entry).openStream());
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    private boolean isProfileEntry(Object entry) {
        if (entry instanceof String || entry instanceof URL || entry instanceof File) {
            return true;
        }
        if (entry instanceof ZipEntry) {
            String entryName = ((ZipEntry)entry).getName();
            return entryName.indexOf(47) < 0 && entryName.endsWith(PROFILE_EXTENSION);
        }
        return false;
    }

    private void loadJavaProfiles(Object container) {
        InputStream is = this.getProfileListInputStream(container);
        String[] profiles = this.getJavaProfiles(is);
        Utils.close(is);
        Enumeration entries = this.getProfilesEnum(container, profiles);
        while (entries != null && entries.hasMoreElements()) {
            Object item = entries.nextElement();
            if (!this.isProfileEntry(item) || (is = this.getEntryInputStream(container, item)) == null) continue;
            Properties props = new Properties();
            try {
                try {
                    props.load(is);
                    if (props.containsKey(PROFILE_NAME)) {
                        this.profileMap.put(props.get(PROFILE_NAME), props);
                    }
                }
                catch (IOException iOException) {
                    Utils.close(is);
                    continue;
                }
            }
            catch (Throwable throwable) {
                Utils.close(is);
                throw throwable;
            }
            Utils.close(is);
        }
    }

    private String[] getJavaProfiles(InputStream is) {
        if (is == null) {
            return null;
        }
        Properties props = new Properties();
        try {
            props.load(is);
        }
        catch (IOException iOException) {
            return null;
        }
        return ManifestElement.getArrayFromList((String)props.getProperty(JAVA_PROFILES), (String)",");
    }
}

