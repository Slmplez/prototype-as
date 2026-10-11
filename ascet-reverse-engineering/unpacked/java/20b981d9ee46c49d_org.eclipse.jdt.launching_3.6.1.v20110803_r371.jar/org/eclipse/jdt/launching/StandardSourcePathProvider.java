/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.launching;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.jar.Attributes;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.StandardClasspathProvider;

public class StandardSourcePathProvider
extends StandardClasspathProvider {
    public IRuntimeClasspathEntry[] computeUnresolvedClasspath(ILaunchConfiguration configuration) throws CoreException {
        boolean useDefault = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_DEFAULT_SOURCE_PATH, true);
        IRuntimeClasspathEntry[] entries = null;
        entries = useDefault ? super.computeUnresolvedClasspath(configuration) : this.recoverRuntimePath(configuration, IJavaLaunchConfigurationConstants.ATTR_SOURCE_PATH);
        return entries;
    }

    public IRuntimeClasspathEntry[] resolveClasspath(IRuntimeClasspathEntry[] entries, ILaunchConfiguration configuration) throws CoreException {
        UniqueList all = new UniqueList(entries.length);
        int i = 0;
        while (i < entries.length) {
            switch (entries[i].getType()) {
                case 1: {
                    all.add(entries[i]);
                    break;
                }
                case 5: {
                    IRuntimeClasspathEntry2 entry = (IRuntimeClasspathEntry2)entries[i];
                    String typeId = entry.getTypeId();
                    IRuntimeClasspathEntry[] res = null;
                    if (typeId.equals("org.eclipse.jdt.launching.classpathentry.defaultClasspath")) {
                        IRuntimeClasspathEntry[] children = entry.getRuntimeClasspathEntries(configuration);
                        res = JavaRuntime.resolveSourceLookupPath(children, configuration);
                    } else {
                        res = typeId.equals("org.eclipse.jdt.launching.classpathentry.variableClasspathEntry") ? JavaRuntime.resolveRuntimeClasspathEntry((IRuntimeClasspathEntry)entry, configuration) : JavaRuntime.resolveRuntimeClasspathEntry((IRuntimeClasspathEntry)entry, configuration);
                    }
                    if (res == null) break;
                    int j = 0;
                    while (j < res.length) {
                        all.add(res[j]);
                        this.addManifestReferences(res[j], all);
                        ++j;
                    }
                    break;
                }
                default: {
                    IRuntimeClasspathEntry[] resolved = JavaRuntime.resolveRuntimeClasspathEntry(entries[i], configuration);
                    int j = 0;
                    while (j < resolved.length) {
                        all.add(resolved[j]);
                        this.addManifestReferences(resolved[j], all);
                        ++j;
                    }
                    break block0;
                }
            }
            ++i;
        }
        return all.toArray(new IRuntimeClasspathEntry[all.size()]);
    }

    protected void addManifestReferences(IRuntimeClasspathEntry entry, List all) {
        block18: {
            String location;
            if (entry.getType() == 2 && (location = entry.getLocation()) != null) {
                JarFile jar = null;
                try {
                    try {
                        String value;
                        Attributes mainAttributes;
                        jar = new JarFile(location, false);
                        Manifest manifest = jar.getManifest();
                        if (manifest != null && (mainAttributes = manifest.getMainAttributes()) != null && (value = mainAttributes.getValue(Attributes.Name.CLASS_PATH)) != null) {
                            String[] entries = value.split("\\s+");
                            Path base = new Path(location);
                            base = base.removeLastSegments(1);
                            int i = 0;
                            while (i < entries.length) {
                                IRuntimeClasspathEntry ref;
                                IPath path = base.append(entries[i]);
                                if (path.toFile().exists() && !all.contains(ref = JavaRuntime.newArchiveRuntimeClasspathEntry(path))) {
                                    all.add(ref);
                                }
                                ++i;
                            }
                        }
                    }
                    catch (IOException iOException) {
                        if (jar != null) {
                            try {
                                jar.close();
                            }
                            catch (IOException iOException2) {}
                        }
                        break block18;
                    }
                }
                catch (Throwable throwable) {
                    if (jar != null) {
                        try {
                            jar.close();
                        }
                        catch (IOException iOException) {}
                    }
                    throw throwable;
                }
                if (jar != null) {
                    try {
                        jar.close();
                    }
                    catch (IOException iOException) {}
                }
            }
        }
    }

    class UniqueList
    extends ArrayList {
        private static final long serialVersionUID = -7402160651027036270L;
        HashSet set;

        public UniqueList(int length) {
            super(length);
            this.set = new HashSet(length);
        }

        public void add(int index, Object element) {
            if (this.set.add(element)) {
                super.add(index, element);
            }
        }

        public boolean add(Object o) {
            if (this.set.add(o)) {
                return super.add(o);
            }
            return false;
        }

        public boolean addAll(Collection c) {
            if (this.set.addAll(c)) {
                return super.addAll(c);
            }
            return false;
        }

        public boolean addAll(int index, Collection c) {
            if (this.set.addAll(c)) {
                return super.addAll(index, c);
            }
            return false;
        }

        public void clear() {
            this.set.clear();
            super.clear();
        }

        public boolean contains(Object elem) {
            return this.set.contains(elem);
        }

        public void ensureCapacity(int minCapacity) {
            super.ensureCapacity(minCapacity);
        }

        public Object remove(int index) {
            Object object = super.remove(index);
            this.set.remove(object);
            return object;
        }

        protected void removeRange(int fromIndex, int toIndex) {
            int index = fromIndex;
            while (index <= toIndex) {
                this.remove(index);
                ++index;
            }
        }

        public Object set(int index, Object element) {
            this.set.remove(element);
            if (this.set.add(element)) {
                return super.set(index, element);
            }
            return null;
        }
    }
}

