/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.index;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractIndexProvider;
import org.eclipse.help.IIndexContribution;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.index.IndexContribution;
import org.eclipse.help.internal.index.IndexFile;
import org.eclipse.help.internal.index.IndexFileParser;
import org.eclipse.help.internal.util.ResourceLocator;
import org.xml.sax.SAXParseException;

public class IndexFileProvider
extends AbstractIndexProvider {
    private static final String ERROR_READING_HELP_KEYWORD_INDEX_FILE = "Error reading help keyword index file /\"";
    public static final String EXTENSION_POINT_ID_INDEX = "org.eclipse.help.index";
    public static final String ELEMENT_NAME_INDEX = "index";
    public static final String ATTRIBUTE_NAME_FILE = "file";

    public IIndexContribution[] getIndexContributions(String locale) {
        ArrayList<IndexContribution> contributions = new ArrayList<IndexContribution>();
        IndexFile[] indexFiles = this.getIndexFiles(locale);
        IndexFileParser parser = new IndexFileParser();
        int i = 0;
        while (i < indexFiles.length) {
            IndexFile indexFile = indexFiles[i];
            try {
                IndexContribution toc = parser.parse(indexFile);
                contributions.add(toc);
            }
            catch (SAXParseException spe) {
                StringBuffer buffer = new StringBuffer(ERROR_READING_HELP_KEYWORD_INDEX_FILE);
                buffer.append(this.getIndexFilePath(indexFile));
                buffer.append("\" at line ");
                buffer.append(spe.getLineNumber());
                buffer.append(". ");
                buffer.append(spe.getMessage());
                Exception x = spe;
                if (spe.getException() != null) {
                    x = spe.getException();
                }
                HelpPlugin.logError(buffer.toString(), x);
            }
            catch (Throwable t) {
                String msg = ERROR_READING_HELP_KEYWORD_INDEX_FILE + this.getIndexFilePath(indexFile) + "\" (skipping file)";
                HelpPlugin.logError(msg, t);
            }
            ++i;
        }
        return contributions.toArray(new IIndexContribution[contributions.size()]);
    }

    private String getIndexFilePath(IndexFile indexFile) {
        String pluginId = indexFile.getPluginId();
        String file = indexFile.getFile();
        return ResourceLocator.getErrorPath(pluginId, file, indexFile.getLocale());
    }

    private IndexFile[] getIndexFiles(String locale) {
        ArrayList<IndexFile> indexFiles = new ArrayList<IndexFile>();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_INDEX);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement elem = elements[i];
            String pluginId = elem.getContributor().getName();
            if (elem.getName().equals(ELEMENT_NAME_INDEX)) {
                String file = elem.getAttribute(ATTRIBUTE_NAME_FILE);
                IndexFile indexFile = new IndexFile(pluginId, file, locale);
                indexFiles.add(indexFile);
            }
            ++i;
        }
        return indexFiles.toArray(new IndexFile[indexFiles.size()]);
    }
}

