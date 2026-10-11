/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal;

import com.ibm.icu.text.Collator;
import com.ibm.icu.text.DateFormat;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.about.ISystemSummarySection;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public final class ConfigurationInfo {
    public static String getBuildId() {
        return System.getProperty("eclipse.buildId", null);
    }

    public static String getSystemSummary() {
        StringWriter out = new StringWriter();
        PrintWriter writer = new PrintWriter(out);
        writer.println(NLS.bind((String)WorkbenchMessages.SystemSummary_timeStamp, (Object)DateFormat.getDateTimeInstance((int)0, (int)0).format(new Date())));
        ConfigurationInfo.appendExtensions(writer);
        writer.close();
        return out.toString();
    }

    private static void appendExtensions(PrintWriter writer) {
        IConfigurationElement[] configElements = ConfigurationInfo.getSortedExtensions(Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui", "systemSummarySections"));
        int i = 0;
        while (i < configElements.length) {
            IConfigurationElement element = configElements[i];
            Object obj = null;
            try {
                obj = WorkbenchPlugin.createExtension(element, "class");
            }
            catch (CoreException e) {
                WorkbenchPlugin.log("could not create class attribute for extension", e.getStatus());
            }
            writer.println();
            writer.println(NLS.bind((String)WorkbenchMessages.SystemSummary_sectionTitle, (Object)element.getAttribute("sectionTitle")));
            if (obj instanceof ISystemSummarySection) {
                ISystemSummarySection logSection = (ISystemSummarySection)obj;
                logSection.write(writer);
            } else {
                writer.println(WorkbenchMessages.SystemSummary_sectionError);
            }
            ++i;
        }
    }

    public static IConfigurationElement[] getSortedExtensions(IConfigurationElement[] configElements) {
        Arrays.sort(configElements, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                IConfigurationElement element1 = (IConfigurationElement)a;
                IConfigurationElement element2 = (IConfigurationElement)b;
                String id1 = element1.getAttribute("id");
                String id2 = element2.getAttribute("id");
                if (id1 != null && id2 != null && !id1.equals(id2)) {
                    return this.collator.compare(id1, id2);
                }
                String title1 = element1.getAttribute("sectionTitle");
                String title2 = element2.getAttribute("sectionTitle");
                if (title1 == null) {
                    title1 = "";
                }
                if (title2 == null) {
                    title2 = "";
                }
                return this.collator.compare(title1, title2);
            }
        });
        return configElements;
    }
}

