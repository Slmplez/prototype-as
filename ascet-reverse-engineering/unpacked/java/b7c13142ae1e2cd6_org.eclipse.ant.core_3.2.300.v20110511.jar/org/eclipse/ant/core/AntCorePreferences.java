/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Preferences$IPropertyChangeListener
 *  org.eclipse.core.runtime.Preferences$PropertyChangeEvent
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.osgi.service.resolver.BundleDescription
 *  org.eclipse.osgi.service.resolver.ExportPackageDescription
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleException
 *  org.osgi.service.packageadmin.ExportedPackage
 *  org.osgi.service.packageadmin.PackageAdmin
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.ant.core;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.IAntClasspathEntry;
import org.eclipse.ant.core.Property;
import org.eclipse.ant.core.Task;
import org.eclipse.ant.core.Type;
import org.eclipse.ant.internal.core.AntClasspathEntry;
import org.eclipse.ant.internal.core.AntObject;
import org.eclipse.ant.internal.core.InternalCoreAntMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleException;
import org.osgi.service.packageadmin.ExportedPackage;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.util.tracker.ServiceTracker;

public class AntCorePreferences
implements Preferences.IPropertyChangeListener {
    private List defaultTasks;
    private List defaultTypes;
    private List extraClasspathURLs;
    private List defaultProperties;
    private IAntClasspathEntry[] defaultAntHomeEntries;
    private Task[] customTasks;
    private Task[] oldCustomTasks;
    private Type[] customTypes;
    private Type[] oldCustomTypes;
    private IAntClasspathEntry[] antHomeEntries;
    private IAntClasspathEntry[] additionalEntries;
    private Property[] customProperties;
    private Property[] oldCustomProperties;
    private String[] customPropertyFiles;
    private List pluginClassLoaders;
    private ClassLoader[] orderedPluginClassLoaders;
    private String antHome;
    private boolean runningHeadless = false;
    static /* synthetic */ Class class$0;

    protected AntCorePreferences(List defaultTasks, List defaultExtraClasspath, List defaultTypes, boolean headless) {
        this(defaultTasks, defaultExtraClasspath, defaultTypes, Collections.EMPTY_LIST, headless);
    }

    protected AntCorePreferences(List defaultTasks, List defaultExtraClasspath, List defaultTypes, List defaultProperties, boolean headless) {
        this.runningHeadless = headless;
        this.initializePluginClassLoaders();
        this.extraClasspathURLs = new ArrayList(20);
        this.defaultTasks = this.computeDefaultTasks(defaultTasks);
        this.defaultTypes = this.computeDefaultTypes(defaultTypes);
        this.computeDefaultExtraClasspathEntries(defaultExtraClasspath);
        this.computeDefaultProperties(defaultProperties);
        this.restoreCustomObjects();
    }

    public void propertyChange(Preferences.PropertyChangeEvent event) {
        Preferences prefs = AntCorePlugin.getPlugin().getPluginPreferences();
        String property = event.getProperty();
        if (property.equals("tasks") || property.startsWith("task.")) {
            this.restoreTasks(prefs);
        } else if (property.equals("types") || property.startsWith("type.")) {
            this.restoreTypes(prefs);
        } else if (property.equals("ant_home_entries")) {
            this.restoreAntHomeEntries(prefs);
        } else if (property.equals("additional_entries")) {
            this.restoreAdditionalEntries(prefs);
        } else if (property.equals("ant_home")) {
            this.restoreAntHome(prefs);
        } else if (property.equals("properties") || property.startsWith("property.")) {
            this.restoreCustomProperties(prefs);
        } else if (property.equals("propertyfiles")) {
            this.restoreCustomPropertyFiles(prefs);
        }
    }

    private void restoreCustomObjects() {
        Preferences prefs = AntCorePlugin.getPlugin().getPluginPreferences();
        this.restoreAntHome(prefs);
        this.restoreTasks(prefs);
        this.restoreTypes(prefs);
        this.restoreAntHomeEntries(prefs);
        this.restoreAdditionalEntries(prefs);
        this.restoreCustomProperties(prefs);
        this.restoreCustomPropertyFiles(prefs);
        prefs.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
    }

    private void restoreTasks(Preferences prefs) {
        String tasks = prefs.getString("tasks");
        this.customTasks = tasks.equals("") ? new Task[0] : this.extractTasks(prefs, this.getArrayFromString(tasks));
    }

    private void restoreTypes(Preferences prefs) {
        String types = prefs.getString("types");
        this.customTypes = types.equals("") ? new Type[0] : this.extractTypes(prefs, this.getArrayFromString(types));
    }

    private void restoreAntHomeEntries(Preferences prefs) {
        String entries = prefs.getString("ant_urls");
        if (!entries.equals("")) {
            prefs.setToDefault("ant_urls");
            this.antHomeEntries = this.migrateURLEntries(this.getArrayFromString(entries));
            return;
        }
        entries = prefs.getString("ant_home_entries");
        this.antHomeEntries = entries.equals("") ? this.getDefaultAntHomeEntries() : this.extractEntries(this.getArrayFromString(entries));
    }

    private void restoreAdditionalEntries(Preferences prefs) {
        String entries = prefs.getString("urls");
        if (!entries.equals("")) {
            prefs.setToDefault("urls");
            this.additionalEntries = this.migrateURLEntries(this.getArrayFromString(entries));
            return;
        }
        entries = prefs.getString("additional_entries");
        if (entries.equals("")) {
            IAntClasspathEntry toolsJarEntry = this.getToolsJarEntry();
            List userLibs = this.getUserLibraries();
            if (toolsJarEntry == null) {
                this.additionalEntries = userLibs == null ? new IAntClasspathEntry[0] : userLibs.toArray(new IAntClasspathEntry[userLibs.size()]);
            } else if (userLibs == null) {
                this.additionalEntries = new IAntClasspathEntry[]{toolsJarEntry};
            } else {
                userLibs.add(toolsJarEntry);
                this.additionalEntries = userLibs.toArray(new IAntClasspathEntry[userLibs.size()]);
            }
        } else {
            this.additionalEntries = this.extractEntries(this.getArrayFromString(entries));
        }
    }

    private IAntClasspathEntry[] migrateURLEntries(String[] urlEntries) {
        ArrayList<AntClasspathEntry> result = new ArrayList<AntClasspathEntry>(urlEntries.length);
        int i = 0;
        while (i < urlEntries.length) {
            block3: {
                URL url;
                try {
                    url = new URL(urlEntries[i]);
                }
                catch (MalformedURLException malformedURLException) {
                    break block3;
                }
                result.add(new AntClasspathEntry(url));
            }
            ++i;
        }
        return result.toArray(new IAntClasspathEntry[result.size()]);
    }

    private void restoreAntHome(Preferences prefs) {
        this.antHome = prefs.getString("ant_home");
        if (this.antHome == null || this.antHome.length() == 0) {
            this.antHome = this.getDefaultAntHome();
        }
    }

    public String getDefaultAntHome() {
        IAntClasspathEntry[] entries = this.getDefaultAntHomeEntries();
        if (entries.length > 0) {
            URL antjar = entries[0].getEntryURL();
            Path antHomePath = new Path(antjar.getFile());
            antHomePath = antHomePath.removeLastSegments(2);
            return antHomePath.toFile().getAbsolutePath();
        }
        return null;
    }

    private void restoreCustomProperties(Preferences prefs) {
        String properties = prefs.getString("properties");
        this.customProperties = properties.equals("") ? new Property[0] : this.extractProperties(prefs, this.getArrayFromString(properties));
    }

    private void restoreCustomPropertyFiles(Preferences prefs) {
        String propertyFiles = prefs.getString("propertyfiles");
        this.customPropertyFiles = propertyFiles.equals("") ? new String[0] : this.getArrayFromString(propertyFiles);
    }

    protected Task[] extractTasks(Preferences prefs, String[] tasks) {
        ArrayList<Task> result = new ArrayList<Task>(tasks.length);
        int i = 0;
        while (i < tasks.length) {
            String taskName = tasks[i];
            String[] values = this.getArrayFromString(prefs.getString("task." + taskName));
            if (values.length >= 2) {
                Task task = new Task();
                task.setTaskName(taskName);
                task.setClassName(values[0]);
                String library = values[1];
                if (library.startsWith("file:")) {
                    library = library.substring(5);
                }
                task.setLibraryEntry(new AntClasspathEntry(library));
                result.add(task);
            }
            ++i;
        }
        return result.toArray(new Task[result.size()]);
    }

    protected Type[] extractTypes(Preferences prefs, String[] types) {
        ArrayList<Type> result = new ArrayList<Type>(types.length);
        int i = 0;
        while (i < types.length) {
            String typeName = types[i];
            String[] values = this.getArrayFromString(prefs.getString("type." + typeName));
            if (values.length >= 2) {
                Type type = new Type();
                type.setTypeName(typeName);
                type.setClassName(values[0]);
                String library = values[1];
                if (library.startsWith("file:")) {
                    library = library.substring(5);
                }
                type.setLibraryEntry(new AntClasspathEntry(library));
                result.add(type);
            }
            ++i;
        }
        return result.toArray(new Type[result.size()]);
    }

    protected Property[] extractProperties(Preferences prefs, String[] properties) {
        Property[] result = new Property[properties.length];
        int i = 0;
        while (i < properties.length) {
            String propertyName = properties[i];
            String[] values = this.getArrayFromString(prefs.getString("property." + propertyName));
            if (values.length >= 1) {
                Property property = new Property();
                property.setName(propertyName);
                property.setValue(values[0]);
                result[i] = property;
            }
            ++i;
        }
        return result;
    }

    private IAntClasspathEntry[] extractEntries(String[] entries) {
        IAntClasspathEntry[] result = new IAntClasspathEntry[entries.length];
        int i = 0;
        while (i < entries.length) {
            result[i] = new AntClasspathEntry(entries[i]);
            ++i;
        }
        return result;
    }

    public URL[] getDefaultAntURLs() {
        IAntClasspathEntry[] entries = this.getDefaultAntHomeEntries();
        ArrayList<URL> result = new ArrayList<URL>(3);
        int i = 0;
        while (i < entries.length) {
            IAntClasspathEntry entry = entries[i];
            result.add(entry.getEntryURL());
            ++i;
        }
        URL toolsURL = this.getToolsJarURL();
        if (toolsURL != null) {
            result.add(toolsURL);
        }
        return result.toArray(new URL[result.size()]);
    }

    public synchronized IAntClasspathEntry[] getDefaultAntHomeEntries() {
        if (this.defaultAntHomeEntries == null) {
            BundleContext bundleContext = AntCorePlugin.getPlugin().getBundle().getBundleContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.service.packageadmin.PackageAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ServiceTracker tracker = new ServiceTracker(bundleContext, clazz.getName(), null);
            tracker.open();
            try {
                ArrayList result = new ArrayList(29);
                PackageAdmin packageAdmin = (PackageAdmin)tracker.getService();
                if (packageAdmin != null) {
                    ExportedPackage[] packages = packageAdmin.getExportedPackages("org.apache.tools.ant");
                    Bundle bundle = this.findHighestAntVersion(packages);
                    if (bundle == null) {
                        int i = 0;
                        while (i < packages.length) {
                            block17: {
                                bundle = packages[i].getExportingBundle();
                                if (bundle != null) {
                                    try {
                                        this.addLibraries(bundle, result);
                                        if (result.size() <= 0) break block17;
                                        break;
                                    }
                                    catch (IOException ioe) {
                                        AntCorePlugin.log(ioe);
                                        result.clear();
                                    }
                                }
                            }
                            ++i;
                        }
                    } else {
                        try {
                            this.addLibraries(bundle, result);
                        }
                        catch (IOException ioe) {
                            AntCorePlugin.log(ioe);
                        }
                    }
                }
                this.defaultAntHomeEntries = result.toArray(new IAntClasspathEntry[result.size()]);
            }
            finally {
                tracker.close();
            }
        }
        return this.defaultAntHomeEntries;
    }

    Bundle findHighestAntVersion(ExportedPackage[] packages) {
        Bundle bundle = null;
        HashSet<Bundle> bundles = new HashSet<Bundle>();
        int i = 0;
        while (i < packages.length) {
            bundle = packages[i].getExportingBundle();
            if (bundle != null && "org.apache.ant".equals(bundle.getSymbolicName())) {
                bundles.add(bundle);
            }
            ++i;
        }
        Bundle highest = null;
        Bundle temp = null;
        Iterator iter = bundles.iterator();
        while (iter.hasNext()) {
            temp = (Bundle)iter.next();
            if (highest == null) {
                highest = temp;
                continue;
            }
            if (highest.getVersion().compareTo(temp.getVersion()) >= 0) continue;
            highest = temp;
        }
        return highest;
    }

    public URL[] getAntURLs() {
        int extra = 0;
        IAntClasspathEntry entry = this.getToolsJarEntry();
        if (entry != null) {
            ++extra;
        }
        URL[] urls = new URL[this.antHomeEntries.length + extra];
        int i = 0;
        while (i < this.antHomeEntries.length) {
            URL url = this.antHomeEntries[i].getEntryURL();
            if (url != null) {
                urls[i] = url;
            }
            ++i;
        }
        if (entry != null) {
            urls[i] = entry.getEntryURL();
        }
        return urls;
    }

    protected List computeDefaultTasks(List tasks) {
        ArrayList result = new ArrayList(tasks.size());
        Iterator iterator = tasks.iterator();
        while (iterator.hasNext()) {
            IConfigurationElement element = (IConfigurationElement)iterator.next();
            if (!this.relevantRunningHeadless(element)) continue;
            Task task = new Task();
            task.setTaskName(element.getAttribute("name"));
            task.setClassName(element.getAttribute("class"));
            this.configureAntObject(result, element, task, task.getTaskName(), InternalCoreAntMessages.AntCorePreferences_No_library_for_task);
        }
        return result;
    }

    private void addURLToExtraClasspathEntries(URL url, IConfigurationElement element) {
        IAntClasspathEntry entry;
        String eclipseRuntime = element.getAttribute("eclipseRuntime");
        boolean eclipseRuntimeRequired = true;
        if (eclipseRuntime != null) {
            eclipseRuntimeRequired = Boolean.valueOf(eclipseRuntime);
        }
        Iterator itr = this.extraClasspathURLs.iterator();
        while (itr.hasNext()) {
            entry = (IAntClasspathEntry)itr.next();
            if (!entry.getEntryURL().equals(url)) continue;
            return;
        }
        entry = new AntClasspathEntry(url);
        ((AntClasspathEntry)entry).setEclipseRuntimeRequired(eclipseRuntimeRequired);
        this.extraClasspathURLs.add(entry);
    }

    protected List computeDefaultTypes(List types) {
        ArrayList result = new ArrayList(types.size());
        Iterator iterator = types.iterator();
        while (iterator.hasNext()) {
            IConfigurationElement element = (IConfigurationElement)iterator.next();
            if (!this.relevantRunningHeadless(element)) continue;
            Type type = new Type();
            type.setTypeName(element.getAttribute("name"));
            type.setClassName(element.getAttribute("class"));
            this.configureAntObject(result, element, type, type.getTypeName(), InternalCoreAntMessages.AntCorePreferences_No_library_for_type);
        }
        return result;
    }

    private URL getClasspathEntryURL(Bundle bundle, String library) throws IOException {
        File urlFile = library.equals("/") ? FileLocator.getBundleFile((Bundle)bundle) : new File(FileLocator.toFileURL((URL)bundle.getEntry(library)).getPath());
        if (!urlFile.exists()) {
            return null;
        }
        String path = urlFile.getAbsolutePath();
        return new URL("file:" + (urlFile.isDirectory() ? String.valueOf(path) + "/" : path));
    }

    private void configureAntObject(List result, IConfigurationElement element, AntObject antObject, String objectName, String errorMessage) {
        String library;
        String uri;
        String runtime = element.getAttribute("eclipseRuntime");
        if (runtime != null) {
            antObject.setEclipseRuntimeRequired(Boolean.valueOf(runtime));
        }
        if ((uri = element.getAttribute("uri")) != null) {
            antObject.setURI(uri);
        }
        if ((library = element.getAttribute("library")) == null) {
            Status status = new Status(4, "org.eclipse.ant.core", 3, NLS.bind((String)InternalCoreAntMessages.AntCorePreferences_Library_not_specified_for___0__4, (Object[])new String[]{objectName}), null);
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            return;
        }
        try {
            IContributor contributor = element.getContributor();
            antObject.setPluginLabel(contributor.getName());
            Bundle bundle = Platform.getBundle((String)contributor.getName());
            URL url = this.getClasspathEntryURL(bundle, library);
            if (url != null) {
                this.addURLToExtraClasspathEntries(url, element);
                result.add(antObject);
                this.addPluginClassLoader(bundle);
                antObject.setLibraryEntry(new AntClasspathEntry(url));
                return;
            }
            Status status = new Status(4, "org.eclipse.ant.core", 3, NLS.bind((String)errorMessage, (Object[])new String[]{library, element.getContributor().getName()}), null);
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            return;
        }
        catch (MalformedURLException e) {
            Status status = new Status(4, "org.eclipse.ant.core", 2, InternalCoreAntMessages.AntCorePreferences_Malformed_URL__1, (Throwable)e);
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            return;
        }
        catch (Exception exception) {
            Status status = new Status(4, "org.eclipse.ant.core", 3, NLS.bind((String)InternalCoreAntMessages.AntCorePreferences_8, (Object[])new String[]{library, element.getContributor().getName()}), null);
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            return;
        }
    }

    protected void computeDefaultExtraClasspathEntries(List entries) {
        Iterator iterator = entries.iterator();
        while (iterator.hasNext()) {
            Status status;
            IConfigurationElement element = (IConfigurationElement)iterator.next();
            if (!this.relevantRunningHeadless(element)) continue;
            String library = element.getAttribute("library");
            Bundle bundle = Platform.getBundle((String)element.getContributor().getName());
            try {
                URL url = this.getClasspathEntryURL(bundle, library);
                if (url != null) {
                    this.addURLToExtraClasspathEntries(url, element);
                    this.addPluginClassLoader(bundle);
                    continue;
                }
                status = new Status(4, "org.eclipse.ant.core", 3, NLS.bind((String)InternalCoreAntMessages.AntCorePreferences_6, (Object[])new String[]{library, element.getContributor().getName()}), null);
                AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            }
            catch (MalformedURLException e) {
                status = new Status(4, "org.eclipse.ant.core", 2, InternalCoreAntMessages.AntCorePreferences_Malformed_URL__1, (Throwable)e);
                AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            }
            catch (Exception exception) {
                Status status2 = new Status(4, "org.eclipse.ant.core", 3, NLS.bind((String)InternalCoreAntMessages.AntCorePreferences_6, (Object[])new String[]{library, element.getContributor().getName()}), null);
                AntCorePlugin.getPlugin().getLog().log((IStatus)status2);
            }
        }
    }

    private boolean relevantRunningHeadless(IConfigurationElement element) {
        boolean headlessProperty;
        String headless;
        return !this.runningHeadless || (headless = element.getAttribute("headless")) == null || (headlessProperty = Boolean.valueOf(headless).booleanValue());
    }

    private void computeDefaultProperties(List properties) {
        this.defaultProperties = new ArrayList(properties.size());
        Iterator iterator = properties.iterator();
        while (iterator.hasNext()) {
            String name;
            IConfigurationElement element = (IConfigurationElement)iterator.next();
            if (!this.relevantRunningHeadless(element) || (name = element.getAttribute("name")) == null) continue;
            String value = element.getAttribute("value");
            Property property = null;
            if (value != null) {
                property = new Property(name, value);
                property.setPluginLabel(element.getContributor().getName());
            } else {
                Bundle bundle = Platform.getBundle((String)element.getContributor().getName());
                if (bundle == null) continue;
                property = new Property();
                property.setName(name);
                property.setPluginLabel(element.getContributor().getName());
                String className = element.getAttribute("class");
                property.setValueProvider(className, new WrappedClassLoader(bundle));
            }
            this.defaultProperties.add(property);
            String runtime = element.getAttribute("eclipseRuntime");
            if (runtime == null) continue;
            property.setEclipseRuntimeRequired(Boolean.valueOf(runtime));
        }
    }

    public IAntClasspathEntry getToolsJarEntry(IPath javaHomePath) {
        File tools;
        IPath newjh = javaHomePath;
        if ("jre".equalsIgnoreCase(newjh.lastSegment())) {
            newjh = newjh.removeLastSegments(1);
        }
        if (!(tools = (newjh = newjh.append("lib").append("tools.jar")).toFile()).exists()) {
            newjh = newjh.removeLastSegments(1);
            tools = (newjh = newjh.append("classes.zip")).toFile();
            if (!tools.exists()) {
                return null;
            }
        }
        return new AntClasspathEntry(tools.getAbsolutePath());
    }

    public URL getToolsJarURL() {
        Path path = new Path(System.getProperty("java.home"));
        IAntClasspathEntry entry = this.getToolsJarEntry((IPath)path);
        if (entry == null) {
            IDynamicVariable variable = VariablesPlugin.getDefault().getStringVariableManager().getDynamicVariable("env_var");
            String javaHome = null;
            try {
                if (variable != null) {
                    javaHome = variable.getValue("JAVA_HOME");
                }
                if (javaHome != null) {
                    path = new Path(javaHome);
                    entry = this.getToolsJarEntry((IPath)path);
                }
            }
            catch (CoreException coreException) {}
        }
        if (entry != null) {
            return entry.getEntryURL();
        }
        return null;
    }

    public IAntClasspathEntry getToolsJarEntry() {
        Path path = new Path(System.getProperty("java.home"));
        IAntClasspathEntry entry = this.getToolsJarEntry((IPath)path);
        if (entry == null) {
            IDynamicVariable variable = VariablesPlugin.getDefault().getStringVariableManager().getDynamicVariable("env_var");
            String javaHome = null;
            try {
                if (variable != null) {
                    javaHome = variable.getValue("JAVA_HOME");
                }
                if (javaHome != null) {
                    path = new Path(javaHome);
                    entry = this.getToolsJarEntry((IPath)path);
                }
            }
            catch (CoreException coreException) {}
        }
        return entry;
    }

    private List getUserLibraries() {
        File libDir = new File(System.getProperty("user.home"), ".ant" + File.separatorChar + "lib");
        URL[] urls = null;
        try {
            urls = this.getLocationURLs(libDir);
        }
        catch (MalformedURLException malformedURLException) {}
        if (urls == null) {
            return null;
        }
        ArrayList<AntClasspathEntry> entries = new ArrayList<AntClasspathEntry>(urls.length);
        int i = 0;
        while (i < urls.length) {
            AntClasspathEntry entry = new AntClasspathEntry(urls[i]);
            entries.add(entry);
            ++i;
        }
        return entries;
    }

    private URL[] getLocationURLs(File location) throws MalformedURLException {
        URL[] urls = null;
        if (!location.exists()) {
            return urls;
        }
        if (!location.isDirectory()) {
            urls = new URL[1];
            String path = location.getPath();
            if (path.toLowerCase().endsWith(".jar")) {
                urls[0] = location.toURL();
            }
            return urls;
        }
        File[] matches = location.listFiles(new FilenameFilter(){

            public boolean accept(File dir, String name) {
                return name.toLowerCase().endsWith(".jar");
            }
        });
        urls = new URL[matches.length];
        int i = 0;
        while (i < matches.length) {
            urls[i] = matches[i].toURL();
            ++i;
        }
        return urls;
    }

    private void addLibraries(Bundle source, List destination) throws IOException, MalformedURLException {
        ManifestElement[] libraries = null;
        try {
            libraries = ManifestElement.parseHeader((String)"Bundle-ClassPath", (String)((String)source.getHeaders("").get("Bundle-ClassPath")));
        }
        catch (BundleException e) {
            Status status = new Status(4, "org.eclipse.ant.core", 2, InternalCoreAntMessages.AntCorePreferences_0, (Throwable)e);
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            return;
        }
        if (libraries == null) {
            return;
        }
        URL url = null;
        int i = 0;
        while (i < libraries.length) {
            url = source.getEntry(libraries[i].getValue());
            if (url != null) {
                destination.add(new AntClasspathEntry(FileLocator.toFileURL((URL)url)));
            }
            ++i;
        }
    }

    protected void addPluginClassLoader(Bundle bundle) {
        WrappedClassLoader loader = new WrappedClassLoader(bundle);
        if (!this.pluginClassLoaders.contains(loader)) {
            this.pluginClassLoaders.add(loader);
        }
    }

    public URL[] getExtraClasspathURLs() {
        URL[] urls = new URL[this.extraClasspathURLs.size()];
        int i = 0;
        while (i < this.extraClasspathURLs.size()) {
            IAntClasspathEntry entry = (IAntClasspathEntry)this.extraClasspathURLs.get(i);
            urls[i] = entry.getEntryURL();
            ++i;
        }
        return urls;
    }

    public URL[] getRemoteExtraClasspathURLs() {
        ArrayList<URL> urls = new ArrayList<URL>(this.extraClasspathURLs.size());
        int i = 0;
        while (i < this.extraClasspathURLs.size()) {
            IAntClasspathEntry entry = (IAntClasspathEntry)this.extraClasspathURLs.get(i);
            if (!entry.isEclipseRuntimeRequired()) {
                urls.add(entry.getEntryURL());
            }
            ++i;
        }
        return urls.toArray(new URL[urls.size()]);
    }

    public URL[] getURLs() {
        ArrayList<URL> result = new ArrayList<URL>(60);
        if (this.antHomeEntries != null) {
            this.addEntryURLs(result, this.antHomeEntries);
        }
        if (this.additionalEntries != null && this.additionalEntries.length > 0) {
            this.addEntryURLs(result, this.additionalEntries);
        }
        int i = 0;
        while (i < this.extraClasspathURLs.size()) {
            IAntClasspathEntry entry = (IAntClasspathEntry)this.extraClasspathURLs.get(i);
            URL url = entry.getEntryURL();
            if (url != null) {
                result.add(url);
            }
            ++i;
        }
        return result.toArray(new URL[result.size()]);
    }

    private void addEntryURLs(List result, IAntClasspathEntry[] entries) {
        int i = 0;
        while (i < entries.length) {
            IAntClasspathEntry entry = entries[i];
            URL url = entry.getEntryURL();
            if (url != null) {
                result.add(url);
            }
            ++i;
        }
    }

    protected ClassLoader[] getPluginClassLoaders() {
        if (this.orderedPluginClassLoaders == null) {
            Iterator classLoaders = this.pluginClassLoaders.iterator();
            HashMap<String, WrappedClassLoader> idToLoader = new HashMap<String, WrappedClassLoader>(this.pluginClassLoaders.size());
            ArrayList<BundleDescription> bundles = new ArrayList<BundleDescription>(this.pluginClassLoaders.size());
            while (classLoaders.hasNext()) {
                WrappedClassLoader loader = (WrappedClassLoader)classLoaders.next();
                idToLoader.put(loader.bundle.getSymbolicName(), loader);
                bundles.add(Platform.getPlatformAdmin().getState(false).getBundle(loader.bundle.getBundleId()));
            }
            List descriptions = this.computePrerequisiteOrder(bundles);
            ArrayList loaders = new ArrayList(descriptions.size());
            Iterator iter = descriptions.iterator();
            while (iter.hasNext()) {
                String id = ((BundleDescription)iter.next()).getSymbolicName();
                loaders.add(idToLoader.get(id));
            }
            this.orderedPluginClassLoaders = loaders.toArray(new WrappedClassLoader[loaders.size()]);
        }
        return this.orderedPluginClassLoaders;
    }

    private List computePrerequisiteOrder(List plugins) {
        BundleDescription current;
        ArrayList<Relation> prereqs = new ArrayList<Relation>(plugins.size());
        ArrayList<BundleDescription> fragments = new ArrayList<BundleDescription>();
        Iterator iter = plugins.iterator();
        while (iter.hasNext()) {
            current = (BundleDescription)iter.next();
            if (current.getHost() != null) {
                fragments.add(current);
                continue;
            }
            boolean found = false;
            BundleDescription[] prereqList = this.getDependentBundles(current);
            int j = 0;
            while (j < prereqList.length) {
                if (plugins.contains(prereqList[j])) {
                    found = true;
                    prereqs.add(new Relation(current, prereqList[j]));
                }
                ++j;
            }
            if (found) continue;
            prereqs.add(new Relation(current, null));
        }
        iter = fragments.iterator();
        while (iter.hasNext()) {
            current = (BundleDescription)iter.next();
            if (plugins.contains(current.getHost().getBundle())) {
                prereqs.add(new Relation(current, current.getHost().getSupplier()));
            } else {
                AntCorePlugin.getPlugin().getLog().log((IStatus)new Status(4, "org.eclipse.ant.core", 2, NLS.bind((String)InternalCoreAntMessages.AntCorePreferences_1, (Object[])new String[]{current.getSymbolicName()}), null));
            }
            BundleDescription[] prereqList = this.getDependentBundles(current);
            int j = 0;
            while (j < prereqList.length) {
                if (plugins.contains(prereqList[j])) {
                    prereqs.add(new Relation(current, prereqList[j]));
                }
                ++j;
            }
        }
        return this.computeNodeOrder(prereqs);
    }

    private BundleDescription[] getDependentBundles(BundleDescription root) {
        BundleDescription[] imported = this.getImportedBundles(root);
        BundleDescription[] required = this.getRequiredBundles(root);
        BundleDescription[] dependents = new BundleDescription[imported.length + required.length];
        System.arraycopy(imported, 0, dependents, 0, imported.length);
        System.arraycopy(required, 0, dependents, imported.length, required.length);
        return dependents;
    }

    private BundleDescription[] getRequiredBundles(BundleDescription root) {
        if (root == null) {
            return new BundleDescription[0];
        }
        return root.getResolvedRequires();
    }

    private BundleDescription[] getImportedBundles(BundleDescription root) {
        if (root == null) {
            return new BundleDescription[0];
        }
        ExportPackageDescription[] packages = root.getResolvedImports();
        ArrayList<BundleDescription> resolvedImports = new ArrayList<BundleDescription>(packages.length);
        int i = 0;
        while (i < packages.length) {
            if (!root.getLocation().equals(packages[i].getExporter().getLocation()) && !resolvedImports.contains(packages[i].getExporter())) {
                resolvedImports.add(packages[i].getExporter());
            }
            ++i;
        }
        return resolvedImports.toArray(new BundleDescription[resolvedImports.size()]);
    }

    private void removeArcs(List edges, List roots, Map counts) {
        Iterator j = roots.iterator();
        while (j.hasNext()) {
            Object root = j.next();
            int i = 0;
            while (i < edges.size()) {
                Object input;
                Integer count;
                if (root.equals(((Relation)edges.get((int)i)).to) && (count = (Integer)counts.get(input = ((Relation)edges.get((int)i)).from)) != null) {
                    counts.put(input, new Integer(count - 1));
                }
                ++i;
            }
        }
    }

    private List computeNodeOrder(List edges) {
        Map counts = this.computeCounts(edges);
        ArrayList nodes = new ArrayList(counts.size());
        while (!counts.isEmpty()) {
            List roots = this.findRootNodes(counts);
            if (roots.isEmpty()) break;
            Iterator i = roots.iterator();
            while (i.hasNext()) {
                counts.remove(i.next());
            }
            nodes.addAll(roots);
            this.removeArcs(edges, roots, counts);
        }
        return nodes;
    }

    private Map computeCounts(List mappings) {
        HashMap<Object, Integer> counts = new HashMap<Object, Integer>(5);
        int i = 0;
        while (i < mappings.size()) {
            Object from = ((Relation)mappings.get((int)i)).from;
            Integer fromCount = (Integer)counts.get(from);
            Object to = ((Relation)mappings.get((int)i)).to;
            if (to == null) {
                counts.put(from, new Integer(0));
            } else {
                if ((Integer)counts.get(to) == null) {
                    counts.put(to, new Integer(0));
                }
                fromCount = fromCount == null ? new Integer(1) : new Integer(fromCount + 1);
                counts.put(from, fromCount);
            }
            ++i;
        }
        return counts;
    }

    private List findRootNodes(Map counts) {
        ArrayList result = new ArrayList(5);
        Iterator i = counts.keySet().iterator();
        while (i.hasNext()) {
            Object node = i.next();
            int count = (Integer)counts.get(node);
            if (count != 0) continue;
            result.add(node);
        }
        return result;
    }

    private void initializePluginClassLoaders() {
        this.pluginClassLoaders = new ArrayList(10);
        this.pluginClassLoaders.add(new WrappedClassLoader(AntCorePlugin.getPlugin().getBundle()));
    }

    public List getTasks() {
        ArrayList<Task> result = new ArrayList<Task>(10);
        if (this.defaultTasks != null && !this.defaultTasks.isEmpty()) {
            result.addAll(this.defaultTasks);
        }
        if (this.customTasks != null && this.customTasks.length != 0) {
            result.addAll(Arrays.asList(this.customTasks));
        }
        return result;
    }

    public List getRemoteTasks() {
        ArrayList<Task> result = new ArrayList<Task>(10);
        if (this.defaultTasks != null && !this.defaultTasks.isEmpty()) {
            Iterator iter = this.defaultTasks.iterator();
            while (iter.hasNext()) {
                Task task = (Task)iter.next();
                if (task.isEclipseRuntimeRequired()) continue;
                result.add(task);
            }
        }
        if (this.customTasks != null && this.customTasks.length != 0) {
            result.addAll(Arrays.asList(this.customTasks));
        }
        return result;
    }

    public Task[] getCustomTasks() {
        return this.customTasks;
    }

    public Type[] getCustomTypes() {
        return this.customTypes;
    }

    public Property[] getCustomProperties() {
        return this.customProperties;
    }

    public List getProperties() {
        ArrayList<Property> result = new ArrayList<Property>(10);
        if (this.defaultProperties != null && !this.defaultProperties.isEmpty()) {
            result.addAll(this.defaultProperties);
        }
        if (this.customProperties != null && this.customProperties.length != 0) {
            result.addAll(Arrays.asList(this.customProperties));
        }
        return result;
    }

    public List getRemoteAntProperties() {
        ArrayList<Property> result = new ArrayList<Property>(10);
        if (this.defaultProperties != null && !this.defaultProperties.isEmpty()) {
            Iterator iter = this.defaultProperties.iterator();
            while (iter.hasNext()) {
                Property property = (Property)iter.next();
                if (property.isEclipseRuntimeRequired()) continue;
                result.add(property);
            }
        }
        if (this.customProperties != null && this.customProperties.length != 0) {
            result.addAll(Arrays.asList(this.customProperties));
        }
        return result;
    }

    public String[] getCustomPropertyFiles(boolean performStringSubstition) {
        if (!performStringSubstition || this.customPropertyFiles == null || this.customPropertyFiles.length == 0) {
            return this.customPropertyFiles;
        }
        ArrayList<String> files = new ArrayList<String>(this.customPropertyFiles.length);
        int i = 0;
        while (i < this.customPropertyFiles.length) {
            String filename = this.customPropertyFiles[i];
            try {
                filename = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(filename);
                files.add(filename);
            }
            catch (CoreException coreException) {
                files.add(filename);
            }
            ++i;
        }
        return files.toArray(new String[files.size()]);
    }

    public String[] getCustomPropertyFiles() {
        return this.getCustomPropertyFiles(true);
    }

    public URL[] getCustomURLs() {
        URL[] urls = new URL[this.additionalEntries.length];
        int i = 0;
        while (i < this.additionalEntries.length) {
            URL url = this.additionalEntries[i].getEntryURL();
            if (url != null) {
                urls[i] = url;
            }
            ++i;
        }
        return urls;
    }

    public void setCustomTasks(Task[] tasks) {
        this.oldCustomTasks = this.customTasks;
        this.customTasks = tasks;
    }

    public void setCustomTypes(Type[] types) {
        this.oldCustomTypes = this.customTypes;
        this.customTypes = types;
    }

    public void setCustomURLs(URL[] urls) {
        this.additionalEntries = new IAntClasspathEntry[urls.length];
        int i = 0;
        while (i < urls.length) {
            URL url = urls[i];
            AntClasspathEntry entry = new AntClasspathEntry(url);
            this.additionalEntries[i] = entry;
            ++i;
        }
    }

    public void setAntURLs(URL[] urls) {
        this.antHomeEntries = new IAntClasspathEntry[urls.length];
        int i = 0;
        while (i < urls.length) {
            URL url = urls[i];
            AntClasspathEntry entry = new AntClasspathEntry(url);
            this.antHomeEntries[i] = entry;
            ++i;
        }
    }

    public void setCustomPropertyFiles(String[] paths) {
        this.customPropertyFiles = paths;
    }

    public void setCustomProperties(Property[] properties) {
        this.oldCustomProperties = this.customProperties;
        this.customProperties = properties;
    }

    public List getTypes() {
        ArrayList<Type> result = new ArrayList<Type>(10);
        if (this.defaultTypes != null && !this.defaultTypes.isEmpty()) {
            result.addAll(this.defaultTypes);
        }
        if (this.customTypes != null && this.customTypes.length != 0) {
            result.addAll(Arrays.asList(this.customTypes));
        }
        return result;
    }

    public List getRemoteTypes() {
        ArrayList<Type> result = new ArrayList<Type>(10);
        if (this.defaultTypes != null && !this.defaultTypes.isEmpty()) {
            Iterator iter = this.defaultTypes.iterator();
            while (iter.hasNext()) {
                Type type = (Type)iter.next();
                if (type.isEclipseRuntimeRequired()) continue;
                result.add(type);
            }
        }
        if (this.customTypes != null && this.customTypes.length != 0) {
            result.addAll(Arrays.asList(this.customTypes));
        }
        return result;
    }

    public List getDefaultTypes() {
        ArrayList result = new ArrayList(10);
        if (this.defaultTypes != null && !this.defaultTypes.isEmpty()) {
            result.addAll(this.defaultTypes);
        }
        return result;
    }

    public List getDefaultTasks() {
        ArrayList result = new ArrayList(10);
        if (this.defaultTasks != null && !this.defaultTasks.isEmpty()) {
            result.addAll(this.defaultTasks);
        }
        return result;
    }

    public List getDefaultProperties() {
        ArrayList result = new ArrayList(10);
        if (this.defaultProperties != null && !this.defaultProperties.isEmpty()) {
            result.addAll(this.defaultProperties);
        }
        return result;
    }

    protected String[] getArrayFromString(String list) {
        String separator = ",";
        if (list == null || list.trim().equals("")) {
            return new String[0];
        }
        ArrayList<String> result = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(list, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            result.add(token);
        }
        return result.toArray(new String[result.size()]);
    }

    public void updatePluginPreferences() {
        Preferences prefs = AntCorePlugin.getPlugin().getPluginPreferences();
        prefs.removePropertyChangeListener((Preferences.IPropertyChangeListener)this);
        this.updateTasks(prefs);
        this.updateTypes(prefs);
        this.updateAntHomeEntries(prefs);
        this.updateAdditionalEntries(prefs);
        this.updateProperties(prefs);
        this.updatePropertyFiles(prefs);
        boolean classpathChanged = AntCorePlugin.getPlugin().getPluginPreferences().needsSaving();
        AntCorePlugin.getPlugin().savePluginPreferences();
        if (classpathChanged) {
            prefs.setValue("classpath_changed", true);
        }
        prefs.setValue("classpath_changed", false);
        prefs.addPropertyChangeListener((Preferences.IPropertyChangeListener)this);
    }

    protected void updateTasks(Preferences prefs) {
        if (this.oldCustomTasks != null) {
            int i = 0;
            while (i < this.oldCustomTasks.length) {
                Task oldTask = this.oldCustomTasks[i];
                prefs.setToDefault("task." + oldTask.getTaskName());
                ++i;
            }
            this.oldCustomTasks = null;
        }
        if (this.customTasks.length == 0) {
            prefs.setValue("tasks", "");
            return;
        }
        StringBuffer tasks = new StringBuffer();
        int i = 0;
        while (i < this.customTasks.length) {
            tasks.append(this.customTasks[i].getTaskName());
            tasks.append(',');
            prefs.setValue("task." + this.customTasks[i].getTaskName(), String.valueOf(this.customTasks[i].getClassName()) + "," + this.customTasks[i].getLibraryEntry().getLabel());
            ++i;
        }
        prefs.setValue("tasks", tasks.toString());
    }

    protected void updateTypes(Preferences prefs) {
        if (this.oldCustomTypes != null) {
            int i = 0;
            while (i < this.oldCustomTypes.length) {
                Type oldType = this.oldCustomTypes[i];
                prefs.setToDefault("type." + oldType.getTypeName());
                ++i;
            }
            this.oldCustomTypes = null;
        }
        if (this.customTypes.length == 0) {
            prefs.setValue("types", "");
            return;
        }
        StringBuffer types = new StringBuffer();
        int i = 0;
        while (i < this.customTypes.length) {
            types.append(this.customTypes[i].getTypeName());
            types.append(',');
            prefs.setValue("type." + this.customTypes[i].getTypeName(), String.valueOf(this.customTypes[i].getClassName()) + "," + this.customTypes[i].getLibraryEntry().getLabel());
            ++i;
        }
        prefs.setValue("types", types.toString());
    }

    protected void updateProperties(Preferences prefs) {
        if (this.oldCustomProperties != null) {
            int i = 0;
            while (i < this.oldCustomProperties.length) {
                Property oldProperty = this.oldCustomProperties[i];
                prefs.setToDefault("property." + oldProperty.getName());
                ++i;
            }
            this.oldCustomProperties = null;
        }
        if (this.customProperties.length == 0) {
            prefs.setValue("properties", "");
            return;
        }
        StringBuffer properties = new StringBuffer();
        int i = 0;
        while (i < this.customProperties.length) {
            properties.append(this.customProperties[i].getName());
            properties.append(',');
            prefs.setValue("property." + this.customProperties[i].getName(), this.customProperties[i].getValue(false));
            ++i;
        }
        prefs.setValue("properties", properties.toString());
    }

    protected void updateAdditionalEntries(Preferences prefs) {
        prefs.setValue("urls", "");
        String serialized = "";
        IAntClasspathEntry toolsJarEntry = this.getToolsJarEntry();
        ArrayList<IAntClasspathEntry> userLibs = this.getUserLibraries();
        if (userLibs == null) {
            userLibs = new ArrayList<IAntClasspathEntry>();
        }
        if (toolsJarEntry != null) {
            userLibs.add(toolsJarEntry);
        }
        boolean changed = true;
        if (this.additionalEntries.length == userLibs.size()) {
            changed = false;
            int i = 0;
            while (i < this.additionalEntries.length) {
                if (!this.additionalEntries[i].equals(userLibs.get(i))) {
                    changed = true;
                    break;
                }
                ++i;
            }
        }
        if (changed) {
            StringBuffer entries = new StringBuffer();
            int i = 0;
            while (i < this.additionalEntries.length) {
                entries.append(this.additionalEntries[i].getLabel());
                entries.append(',');
                ++i;
            }
            serialized = entries.toString();
        }
        prefs.setValue("additional_entries", serialized);
        String prefAntHome = "";
        if (this.antHome != null && !this.antHome.equals(this.getDefaultAntHome())) {
            prefAntHome = this.antHome;
        }
        prefs.setValue("ant_home", prefAntHome);
    }

    protected void updateAntHomeEntries(Preferences prefs) {
        prefs.setValue("ant_urls", "");
        IAntClasspathEntry[] defaultEntries = this.getDefaultAntHomeEntries();
        boolean dflt = false;
        if (defaultEntries.length == this.antHomeEntries.length) {
            dflt = true;
            int i = 0;
            while (i < this.antHomeEntries.length) {
                if (!this.antHomeEntries[i].equals(defaultEntries[i])) {
                    dflt = false;
                    break;
                }
                ++i;
            }
        }
        if (dflt) {
            prefs.setValue("ant_home_entries", "");
            return;
        }
        StringBuffer entries = new StringBuffer();
        int i = 0;
        while (i < this.antHomeEntries.length) {
            entries.append(this.antHomeEntries[i].getLabel());
            entries.append(',');
            ++i;
        }
        prefs.setValue("ant_home_entries", entries.toString());
    }

    protected void updatePropertyFiles(Preferences prefs) {
        StringBuffer files = new StringBuffer();
        int i = 0;
        while (i < this.customPropertyFiles.length) {
            files.append(this.customPropertyFiles[i]);
            files.append(',');
            ++i;
        }
        prefs.setValue("propertyfiles", files.toString());
    }

    public void setAntHome(String antHome) {
        this.antHome = antHome;
    }

    public String getAntHome() {
        return this.antHome;
    }

    public IAntClasspathEntry[] getAntHomeClasspathEntries() {
        return this.antHomeEntries;
    }

    public IAntClasspathEntry[] getAdditionalClasspathEntries() {
        return this.additionalEntries;
    }

    public void setAntHomeClasspathEntries(IAntClasspathEntry[] entries) {
        this.antHomeEntries = entries;
    }

    public void setAdditionalClasspathEntries(IAntClasspathEntry[] entries) {
        this.additionalEntries = entries;
    }

    public URL[] getRemoteAntURLs() {
        IAntClasspathEntry entry;
        int i;
        ArrayList<URL> result = new ArrayList<URL>(40);
        if (this.antHomeEntries != null) {
            i = 0;
            while (i < this.antHomeEntries.length) {
                entry = this.antHomeEntries[i];
                result.add(entry.getEntryURL());
                ++i;
            }
        }
        if (this.additionalEntries != null && this.additionalEntries.length > 0) {
            i = 0;
            while (i < this.additionalEntries.length) {
                entry = this.additionalEntries[i];
                result.add(entry.getEntryURL());
                ++i;
            }
        }
        if (this.extraClasspathURLs != null) {
            i = 0;
            while (i < this.extraClasspathURLs.size()) {
                entry = (IAntClasspathEntry)this.extraClasspathURLs.get(i);
                if (!entry.isEclipseRuntimeRequired()) {
                    result.add(entry.getEntryURL());
                }
                ++i;
            }
        }
        return result.toArray(new URL[result.size()]);
    }

    public IAntClasspathEntry[] getContributedClasspathEntries() {
        return this.extraClasspathURLs.toArray(new IAntClasspathEntry[this.extraClasspathURLs.size()]);
    }

    private static class Relation {
        Object from;
        Object to;

        Relation(Object from, Object to) {
            this.from = from;
            this.to = to;
        }

        public String toString() {
            return String.valueOf(this.from.toString()) + "->" + (this.to == null ? "" : this.to.toString());
        }
    }

    class WrappedClassLoader
    extends ClassLoader {
        private Bundle bundle;

        public WrappedClassLoader(Bundle bundle) {
            this.bundle = bundle;
        }

        public Class findClass(String name) throws ClassNotFoundException {
            return this.bundle.loadClass(name);
        }

        public URL findResource(String name) {
            return this.bundle.getResource(name);
        }

        protected Enumeration findResources(String name) throws IOException {
            return this.bundle.getResources(name);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof WrappedClassLoader)) {
                return false;
            }
            return this.bundle == ((WrappedClassLoader)obj).bundle;
        }

        public int hashCode() {
            return this.bundle.hashCode();
        }

        public String toString() {
            return "WrappedClassLoader(" + this.bundle.toString() + ")";
        }
    }
}

