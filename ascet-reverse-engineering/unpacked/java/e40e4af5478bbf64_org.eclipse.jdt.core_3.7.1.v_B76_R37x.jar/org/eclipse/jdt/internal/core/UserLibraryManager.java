/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.jdt.internal.core;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.UserLibrary;
import org.eclipse.jdt.internal.core.UserLibraryClasspathContainer;
import org.eclipse.jdt.internal.core.util.Util;
import org.osgi.service.prefs.BackingStoreException;

public class UserLibraryManager {
    public static final String CP_USERLIBRARY_PREFERENCES_PREFIX = "org.eclipse.jdt.core.userLibrary.";
    private Map userLibraries;

    public UserLibraryManager() {
        this.initialize();
    }

    public synchronized UserLibrary getUserLibrary(String libName) {
        return (UserLibrary)this.userLibraries.get(libName);
    }

    public synchronized String[] getUserLibraryNames() {
        Set set = this.userLibraries.keySet();
        return set.toArray(new String[set.size()]);
    }

    private void initialize() {
        String[] propertyNames;
        this.userLibraries = new HashMap();
        IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
        try {
            propertyNames = instancePreferences.keys();
        }
        catch (BackingStoreException e) {
            Util.log(e, "Exception while initializing user libraries");
            return;
        }
        boolean preferencesNeedFlush = false;
        int i = 0;
        int length = propertyNames.length;
        while (i < length) {
            block10: {
                String propertyValue;
                String propertyName = propertyNames[i];
                if (propertyName.startsWith(CP_USERLIBRARY_PREFERENCES_PREFIX) && (propertyValue = instancePreferences.get(propertyName, null)) != null) {
                    UserLibrary library;
                    String libName = propertyName.substring(CP_USERLIBRARY_PREFERENCES_PREFIX.length());
                    StringReader reader = new StringReader(propertyValue);
                    try {
                        library = UserLibrary.createFromString(reader);
                    }
                    catch (IOException e) {
                        Util.log(e, "Exception while initializing user library " + libName);
                        instancePreferences.remove(propertyName);
                        preferencesNeedFlush = true;
                        break block10;
                    }
                    catch (ClasspathEntry.AssertionFailedException e) {
                        Util.log(e, "Exception while initializing user library " + libName);
                        instancePreferences.remove(propertyName);
                        preferencesNeedFlush = true;
                        break block10;
                    }
                    this.userLibraries.put(libName, library);
                }
            }
            ++i;
        }
        if (preferencesNeedFlush) {
            try {
                instancePreferences.flush();
            }
            catch (BackingStoreException e) {
                Util.log(e, "Exception while flusing instance preferences");
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void updateUserLibrary(String libName, String encodedUserLibrary) {
        try {
            Object javaProject;
            IPath containerPath = new Path("org.eclipse.jdt.USER_LIBRARY").append(libName);
            IJavaProject[] allJavaProjects = JavaCore.create(ResourcesPlugin.getWorkspace().getRoot()).getJavaProjects();
            ArrayList<Object> affectedProjects = new ArrayList<Object>();
            int i = 0;
            while (i < allJavaProjects.length) {
                javaProject = allJavaProjects[i];
                IClasspathEntry[] entries = javaProject.getRawClasspath();
                int j = 0;
                while (j < entries.length) {
                    IClasspathEntry entry = entries[j];
                    if (entry.getEntryKind() == 5 && containerPath.equals((Object)entry.getPath())) {
                        affectedProjects.add(javaProject);
                        break;
                    }
                    ++j;
                }
                ++i;
            }
            UserLibrary userLibrary = encodedUserLibrary == null ? null : UserLibrary.createFromString(new StringReader(encodedUserLibrary));
            javaProject = this;
            synchronized (javaProject) {
                if (userLibrary != null) {
                    this.userLibraries.put(libName, userLibrary);
                } else {
                    this.userLibraries.remove(libName);
                }
            }
            int length = affectedProjects.size();
            if (length == 0) {
                return;
            }
            IJavaProject[] projects = new IJavaProject[length];
            affectedProjects.toArray(projects);
            IClasspathContainer[] containers = new IClasspathContainer[length];
            if (userLibrary != null) {
                UserLibraryClasspathContainer container = new UserLibraryClasspathContainer(libName);
                int i2 = 0;
                while (i2 < length) {
                    containers[i2] = container;
                    ++i2;
                }
            }
            JavaCore.setClasspathContainer(containerPath, projects, containers, null);
        }
        catch (IOException e) {
            Util.log(e, "Exception while decoding user library '" + libName + "'.");
        }
        catch (JavaModelException e) {
            Util.log((Throwable)((Object)e), "Exception while setting user library '" + libName + "'.");
        }
        catch (ClasspathEntry.AssertionFailedException ase) {
            Util.log(ase, "Exception while decoding user library '" + libName + "'.");
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeUserLibrary(String libName) {
        Map map = this.userLibraries;
        synchronized (map) {
            IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
            String propertyName = CP_USERLIBRARY_PREFERENCES_PREFIX + libName;
            instancePreferences.remove(propertyName);
            try {
                instancePreferences.flush();
            }
            catch (BackingStoreException e) {
                Util.log(e, "Exception while removing user library " + libName);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setUserLibrary(String libName, IClasspathEntry[] entries, boolean isSystemLibrary) {
        Map map = this.userLibraries;
        synchronized (map) {
            IEclipsePreferences instancePreferences = JavaModelManager.getJavaModelManager().getInstancePreferences();
            String propertyName = CP_USERLIBRARY_PREFERENCES_PREFIX + libName;
            try {
                String propertyValue = UserLibrary.serialize(entries, isSystemLibrary);
                instancePreferences.put(propertyName, propertyValue);
            }
            catch (IOException e) {
                Util.log(e, "Exception while serializing user library " + libName);
                return;
            }
            try {
                instancePreferences.flush();
            }
            catch (BackingStoreException e) {
                Util.log(e, "Exception while saving user library " + libName);
            }
        }
    }
}

