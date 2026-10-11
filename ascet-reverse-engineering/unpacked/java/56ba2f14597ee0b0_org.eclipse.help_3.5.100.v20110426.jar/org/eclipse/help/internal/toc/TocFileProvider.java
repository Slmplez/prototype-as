/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.toc;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractTocProvider;
import org.eclipse.help.ITocContribution;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.toc.TocContribution;
import org.eclipse.help.internal.toc.TocFile;
import org.eclipse.help.internal.toc.TocFileParser;
import org.eclipse.help.internal.util.ResourceLocator;
import org.xml.sax.SAXParseException;

public class TocFileProvider
extends AbstractTocProvider {
    public static final String EXTENSION_POINT_ID_TOC = "org.eclipse.help.toc";
    public static final String ELEMENT_NAME_TOC = "toc";
    public static final String ATTRIBUTE_NAME_FILE = "file";
    public static final String ATTRIBUTE_NAME_PRIMARY = "primary";
    public static final String ATTRIBUTE_NAME_EXTRADIR = "extradir";
    public static final String ATTRIBUTE_NAME_CATEGORY = "category";

    public ITocContribution[] getTocContributions(String locale) {
        ArrayList<TocContribution> contributions = new ArrayList<TocContribution>();
        TocFile[] tocFiles = this.getTocFiles(locale);
        TocFileParser parser = new TocFileParser();
        int i = 0;
        while (i < tocFiles.length) {
            try {
                TocContribution toc = parser.parse(tocFiles[i]);
                contributions.add(toc);
            }
            catch (Throwable t) {
                String locationInfo = "";
                if (t instanceof SAXParseException) {
                    SAXParseException spe = (SAXParseException)t;
                    locationInfo = " at line " + spe.getLineNumber() + ", column " + spe.getColumnNumber();
                }
                String pluginId = tocFiles[i].getPluginId();
                String file = tocFiles[i].getFile();
                String msg = "Error reading help table of contents file /\"" + ResourceLocator.getErrorPath(pluginId, file, locale) + locationInfo + "\" (skipping file)";
                HelpPlugin.logError(msg, t);
            }
            ++i;
        }
        return contributions.toArray(new ITocContribution[contributions.size()]);
    }

    protected TocFile[] getTocFiles(String locale) {
        ArrayList<TocFile> tocFiles = new ArrayList<TocFile>();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_TOC);
        int i = 0;
        while (i < elements.length) {
            block4: {
                String pluginId;
                IConfigurationElement elem = elements[i];
                try {
                    pluginId = elem.getNamespaceIdentifier();
                }
                catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                    break block4;
                }
                if (elem.getName().equals(ELEMENT_NAME_TOC)) {
                    String file = elem.getAttribute(ATTRIBUTE_NAME_FILE);
                    boolean primary = "true".equalsIgnoreCase(elem.getAttribute(ATTRIBUTE_NAME_PRIMARY));
                    String extradir = elem.getAttribute(ATTRIBUTE_NAME_EXTRADIR);
                    String category = elem.getAttribute(ATTRIBUTE_NAME_CATEGORY);
                    TocFile tocFile = new TocFile(pluginId, file, primary, locale, extradir, category);
                    tocFiles.add(tocFile);
                }
            }
            ++i;
        }
        return tocFiles.toArray(new TocFile[tocFiles.size()]);
    }

    public int getPriority() {
        return 20;
    }
}

