/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.criteria;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractCriteriaDefinitionProvider;
import org.eclipse.help.ICriteriaDefinitionContribution;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.criteria.CriteriaDefinitionContribution;
import org.eclipse.help.internal.criteria.CriteriaDefinitionFile;
import org.eclipse.help.internal.criteria.CriteriaDefinitionFileParser;
import org.eclipse.help.internal.util.ResourceLocator;
import org.xml.sax.SAXParseException;

public class CriteriaDefinitionFileProvider
extends AbstractCriteriaDefinitionProvider {
    private static final String ERROR_READING_HELP_CRITERIA_DEFINITION_FILE = "Error reading criteria definition file /\"";
    public static final String EXTENSION_POINT_ID_CRITERIA_DEFINITION = "org.eclipse.help.criteriaDefinition";
    public static final String ELEMENT_NAME_CRITERIA = "criteriaDefinition";
    public static final String ATTRIBUTE_NAME_FILE = "file";

    public ICriteriaDefinitionContribution[] getCriteriaDefinitionContributions(String locale) {
        ArrayList<CriteriaDefinitionContribution> contributions = new ArrayList<CriteriaDefinitionContribution>();
        CriteriaDefinitionFile[] criteriaDefinitionFiles = this.getCriteriaDefinitionFiles(locale);
        CriteriaDefinitionFileParser parser = new CriteriaDefinitionFileParser();
        int i = 0;
        while (i < criteriaDefinitionFiles.length) {
            CriteriaDefinitionFile criteriaDefinitionFile = criteriaDefinitionFiles[i];
            try {
                CriteriaDefinitionContribution criteria = parser.parse(criteriaDefinitionFile);
                contributions.add(criteria);
            }
            catch (SAXParseException spe) {
                StringBuffer buffer = new StringBuffer(ERROR_READING_HELP_CRITERIA_DEFINITION_FILE);
                buffer.append(this.getCriteriaDefinitionFilePath(criteriaDefinitionFile));
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
                String msg = ERROR_READING_HELP_CRITERIA_DEFINITION_FILE + this.getCriteriaDefinitionFilePath(criteriaDefinitionFile) + "\" (skipping file)";
                HelpPlugin.logError(msg, t);
            }
            ++i;
        }
        return contributions.toArray(new ICriteriaDefinitionContribution[contributions.size()]);
    }

    private String getCriteriaDefinitionFilePath(CriteriaDefinitionFile criteriaDefinitionFile) {
        String pluginId = criteriaDefinitionFile.getPluginId();
        String file = criteriaDefinitionFile.getFile();
        return ResourceLocator.getErrorPath(pluginId, file, criteriaDefinitionFile.getLocale());
    }

    private CriteriaDefinitionFile[] getCriteriaDefinitionFiles(String locale) {
        ArrayList<CriteriaDefinitionFile> criteriaDefinitionFiles = new ArrayList<CriteriaDefinitionFile>();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_CRITERIA_DEFINITION);
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement elem = elements[i];
            String pluginId = elem.getContributor().getName();
            if (elem.getName().equals(ELEMENT_NAME_CRITERIA)) {
                String file = elem.getAttribute(ATTRIBUTE_NAME_FILE);
                CriteriaDefinitionFile criteriaDefinitionFile = new CriteriaDefinitionFile(pluginId, file, locale);
                criteriaDefinitionFiles.add(criteriaDefinitionFile);
            }
            ++i;
        }
        return criteriaDefinitionFiles.toArray(new CriteriaDefinitionFile[criteriaDefinitionFiles.size()]);
    }
}

