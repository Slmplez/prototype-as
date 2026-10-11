/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleException
 */
package org.eclipse.ui.texteditor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;

public abstract class ConfigurationElementSorter {
    public final void sort(Object[] elements) {
        Arrays.sort(elements, new ConfigurationElementComparator(elements));
    }

    public abstract IConfigurationElement getConfigurationElement(Object var1);

    private class ConfigurationElementComparator
    implements Comparator {
        private Map fDescriptorMapping;
        private Map fPrereqsMapping;

        public ConfigurationElementComparator(Object[] elements) {
            Assert.isNotNull((Object)elements);
            this.initialize(elements);
        }

        public int compare(Object object0, Object object1) {
            if (this.dependsOn(object0, object1)) {
                return -1;
            }
            if (this.dependsOn(object1, object0)) {
                return 1;
            }
            return 0;
        }

        private boolean dependsOn(Object element0, Object element1) {
            String pluginDesc1;
            if (element0 == null || element1 == null) {
                return false;
            }
            String pluginDesc0 = (String)this.fDescriptorMapping.get(element0);
            if (pluginDesc0.equals(pluginDesc1 = (String)this.fDescriptorMapping.get(element1))) {
                return false;
            }
            Set prereqUIds0 = (Set)this.fPrereqsMapping.get(pluginDesc0);
            return prereqUIds0.contains(pluginDesc1);
        }

        private void initialize(Object[] elements) {
            int length = elements.length;
            this.fDescriptorMapping = new HashMap(length);
            this.fPrereqsMapping = new HashMap(length);
            HashSet<Bundle> fBundleSet = new HashSet<Bundle>(length);
            int i = 0;
            while (i < length) {
                IConfigurationElement configElement = ConfigurationElementSorter.this.getConfigurationElement(elements[i]);
                Bundle bundle = Platform.getBundle((String)configElement.getContributor().getName());
                this.fDescriptorMapping.put(elements[i], bundle.getSymbolicName());
                fBundleSet.add(bundle);
                ++i;
            }
            Iterator iter = fBundleSet.iterator();
            while (iter.hasNext()) {
                ManifestElement[] manifestElements;
                Bundle bundle = (Bundle)iter.next();
                ArrayList toTest = new ArrayList(fBundleSet);
                toTest.remove(bundle);
                HashSet<String> prereqUIds = new HashSet<String>(Math.max(0, toTest.size() - 1));
                this.fPrereqsMapping.put(bundle.getSymbolicName(), prereqUIds);
                String requires = (String)bundle.getHeaders().get("Require-Bundle");
                try {
                    manifestElements = ManifestElement.parseHeader((String)"Require-Bundle", (String)requires);
                }
                catch (BundleException e) {
                    String uid = this.getExtensionPointUniqueIdentifier(bundle);
                    String message = "ConfigurationElementSorter for '" + uid + "': getting required plug-ins for '" + bundle.getSymbolicName() + "' failed";
                    Status status = new Status(4, "org.eclipse.ui.workbench.texteditor", 0, message, (Throwable)e);
                    TextEditorPlugin.getDefault().getLog().log((IStatus)status);
                    continue;
                }
                if (manifestElements == null) continue;
                int i2 = 0;
                while (i2 < manifestElements.length && !toTest.isEmpty()) {
                    String prereqUId = manifestElements[i2].getValue();
                    int j = 0;
                    while (j < toTest.size()) {
                        Bundle toTest_j = (Bundle)toTest.get(j);
                        if (toTest_j.getSymbolicName().equals(prereqUId)) {
                            toTest.remove(toTest_j);
                            prereqUIds.add(toTest_j.getSymbolicName());
                            continue;
                        }
                        ++j;
                    }
                    ++i2;
                }
            }
        }

        private String getExtensionPointUniqueIdentifier(Bundle bundle) {
            String bundleName;
            if (bundle != null && (bundleName = bundle.getSymbolicName()) != null) {
                Set entries = this.fDescriptorMapping.entrySet();
                Iterator iter = entries.iterator();
                while (iter.hasNext()) {
                    Map.Entry entry = iter.next();
                    if (!bundleName.equals(entry.getValue())) continue;
                    IExtension extension = ConfigurationElementSorter.this.getConfigurationElement(entry.getKey()).getDeclaringExtension();
                    return extension.getExtensionPointUniqueIdentifier();
                }
            }
            return "unknown";
        }
    }
}

