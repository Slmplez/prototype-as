/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IBundleGroup
 *  org.eclipse.core.runtime.IBundleGroupProvider
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.about;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Properties;
import java.util.TreeSet;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IBundleGroup;
import org.eclipse.core.runtime.IBundleGroupProvider;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.about.ISystemSummarySection;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.about.AboutBundleData;
import org.eclipse.ui.internal.about.AboutBundleGroupData;
import org.eclipse.ui.internal.about.AboutData;
import org.eclipse.ui.internal.util.Util;
import org.osgi.framework.Bundle;

public class ConfigurationLogDefaultSection
implements ISystemSummarySection {
    private static final String ECLIPSE_PROPERTY_PREFIX = "eclipse.";

    public void write(PrintWriter writer) {
        this.appendProperties(writer);
        this.appendFeatures(writer);
        this.appendRegistry(writer);
        this.appendUserPreferences(writer);
    }

    private void appendProperties(PrintWriter writer) {
        writer.println();
        writer.println(WorkbenchMessages.SystemSummary_systemProperties);
        Properties properties = System.getProperties();
        TreeSet set = new TreeSet(new Comparator(){

            public int compare(Object o1, Object o2) {
                String s1 = (String)o1;
                String s2 = (String)o2;
                return s1.compareTo(s2);
            }
        });
        set.addAll(properties.keySet());
        Iterator i = set.iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            String value = properties.getProperty(key);
            writer.print(key);
            writer.print('=');
            if (key.startsWith(ECLIPSE_PROPERTY_PREFIX)) {
                ConfigurationLogDefaultSection.printEclipseProperty(writer, value);
                continue;
            }
            if (key.toUpperCase().indexOf("PASSWORD") != -1) {
                int j = 0;
                while (j < value.length()) {
                    writer.print('*');
                    ++j;
                }
                writer.println();
                continue;
            }
            writer.println(value);
        }
    }

    private static void printEclipseProperty(PrintWriter writer, String value) {
        String[] lines = Util.getArrayFromList(value, "\n");
        int i = 0;
        while (i < lines.length) {
            writer.println(lines[i]);
            ++i;
        }
    }

    private void appendFeatures(PrintWriter writer) {
        writer.println();
        writer.println(WorkbenchMessages.SystemSummary_features);
        IBundleGroupProvider[] providers = Platform.getBundleGroupProviders();
        LinkedList<AboutBundleGroupData> groups = new LinkedList<AboutBundleGroupData>();
        if (providers != null) {
            int i = 0;
            while (i < providers.length) {
                IBundleGroup[] bundleGroups = providers[i].getBundleGroups();
                int j = 0;
                while (j < bundleGroups.length) {
                    groups.add(new AboutBundleGroupData(bundleGroups[j]));
                    ++j;
                }
                ++i;
            }
        }
        AboutData[] bundleGroupInfos = groups.toArray(new AboutBundleGroupData[0]);
        AboutData.sortById(false, bundleGroupInfos);
        int i = 0;
        while (i < bundleGroupInfos.length) {
            AboutData info = bundleGroupInfos[i];
            Object[] args = new String[]{info.getId(), info.getVersion(), info.getName()};
            writer.println(NLS.bind((String)WorkbenchMessages.SystemSummary_featureVersion, (Object[])args));
            ++i;
        }
    }

    private void appendRegistry(PrintWriter writer) {
        writer.println();
        writer.println(WorkbenchMessages.SystemSummary_pluginRegistry);
        Bundle[] bundles = WorkbenchPlugin.getDefault().getBundles();
        AboutData[] bundleInfos = new AboutBundleData[bundles.length];
        int i = 0;
        while (i < bundles.length) {
            bundleInfos[i] = new AboutBundleData(bundles[i]);
            ++i;
        }
        AboutData.sortById(false, bundleInfos);
        i = 0;
        while (i < bundleInfos.length) {
            AboutData info = bundleInfos[i];
            Object[] args = new String[]{info.getId(), info.getVersion(), info.getName(), ((AboutBundleData)info).getStateName()};
            writer.println(NLS.bind((String)WorkbenchMessages.SystemSummary_descriptorIdVersionState, (Object[])args));
            ++i;
        }
    }

    private void appendUserPreferences(PrintWriter writer) {
        IPreferencesService service = Platform.getPreferencesService();
        IEclipsePreferences node = service.getRootNode();
        ByteArrayOutputStream stm = new ByteArrayOutputStream();
        try {
            service.exportPreferences(node, (OutputStream)stm, null);
        }
        catch (CoreException e) {
            writer.println("Error reading preferences " + e.toString());
        }
        writer.println();
        writer.println(WorkbenchMessages.SystemSummary_userPreferences);
        BufferedReader reader = null;
        try {
            int read;
            ByteArrayInputStream in = new ByteArrayInputStream(stm.toByteArray());
            reader = new BufferedReader(new InputStreamReader((InputStream)in, "8859_1"));
            char[] chars = new char[8192];
            while ((read = reader.read(chars)) > 0) {
                writer.write(chars, 0, read);
            }
        }
        catch (IOException e) {
            writer.println("Error reading preferences " + e.toString());
        }
    }
}

