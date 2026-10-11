/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.criteria;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.AbstractCriteriaDefinitionProvider;
import org.eclipse.help.ICriteriaDefinition;
import org.eclipse.help.ICriteriaDefinitionContribution;
import org.eclipse.help.ICriterionDefinition;
import org.eclipse.help.ICriterionValueDefinition;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.criteria.CriteriaDefinition;
import org.eclipse.help.internal.criteria.CriteriaDefinitionAssembler;
import org.eclipse.help.internal.criteria.CriteriaDefinitionContribution;
import org.eclipse.help.internal.criteria.CriterionDefinition;
import org.eclipse.help.internal.criteria.CriterionValueDefinition;

public class CriteriaDefinitionManager {
    private static final String EXTENSION_POINT_ID_CRITERIA_DEFINITION = "org.eclipse.help.criteriaDefinition";
    private static final String ELEMENT_NAME_CRITERIA_DEFINITION_PROVIDER = "criteriaDefinitionProvider";
    private static final String ATTRIBUTE_NAME_CLASS = "class";
    private Map criteriaDefinitionContributionsByLocale = new HashMap();
    private Map criteriaDefinitionsByLocale = new HashMap();
    private AbstractCriteriaDefinitionProvider[] criteriaDefinitionProviders;

    public synchronized ICriteriaDefinition getCriteriaDefinition(String locale) {
        CriteriaDefinition criteriaDefinition = (CriteriaDefinition)this.criteriaDefinitionsByLocale.get(locale);
        if (criteriaDefinition == null) {
            HelpPlugin.getTocManager().getTocs(locale);
            long start = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_CRITERIA) {
                System.out.println("Start to update criteria definition for locale " + locale);
            }
            ArrayList<CriteriaDefinitionContribution> contributions = new ArrayList<CriteriaDefinitionContribution>(Arrays.asList(this.readCriteriaDefinitionContributions(locale)));
            CriteriaDefinitionAssembler assembler = new CriteriaDefinitionAssembler();
            criteriaDefinition = assembler.assemble(contributions);
            this.criteriaDefinitionsByLocale.put(locale, criteriaDefinition);
            long stop = System.currentTimeMillis();
            if (HelpPlugin.DEBUG_CRITERIA) {
                System.out.println("Milliseconds to update criteria definition for locale " + locale + " = " + (stop - start));
            }
        }
        return criteriaDefinition;
    }

    public synchronized CriteriaDefinitionContribution[] getCriteriaDefinitionContributions(String locale) {
        CriteriaDefinitionContribution[] contributions = (CriteriaDefinitionContribution[])this.criteriaDefinitionContributionsByLocale.get(locale);
        if (contributions == null) {
            contributions = this.readCriteriaDefinitionContributions(locale);
            this.criteriaDefinitionContributionsByLocale.put(locale, contributions);
        }
        return contributions;
    }

    private CriteriaDefinitionContribution[] readCriteriaDefinitionContributions(String locale) {
        ArrayList<CriteriaDefinitionContribution> contributions = new ArrayList<CriteriaDefinitionContribution>();
        AbstractCriteriaDefinitionProvider[] providers = this.getCriteriaDefinitionProviders();
        int i = 0;
        while (i < providers.length) {
            block8: {
                String msg;
                ICriteriaDefinitionContribution[] contrib;
                try {
                    contrib = providers[i].getCriteriaDefinitionContributions(locale);
                }
                catch (Throwable t) {
                    msg = "Error getting help criteria definition data from provider: " + providers[i].getClass().getName() + " (skipping provider)";
                    HelpPlugin.logError(msg, t);
                    break block8;
                }
                int j = 0;
                while (j < contrib.length) {
                    if (contrib[j] == null) {
                        msg = "Help criteria definition provider \"" + providers[i].getClass().getName() + "\" returned a null contribution (skipping)";
                        HelpPlugin.logError(msg);
                    } else if (contrib[j].getCriteriaDefinition() == null) {
                        msg = "Help criteria definition provider \"" + providers[i].getClass().getName() + "\" returned a contribution with a null root element (expected a \"" + "criteriaDefinition" + "\" element; skipping)";
                        HelpPlugin.logError(msg);
                    } else {
                        CriteriaDefinitionContribution contribution = new CriteriaDefinitionContribution();
                        contribution.setId(contrib[j].getId());
                        contribution.setLocale(contrib[j].getLocale());
                        ICriteriaDefinition criteria = contrib[j].getCriteriaDefinition();
                        contribution.setCriteriaDefinition(criteria instanceof CriteriaDefinition ? (CriteriaDefinition)criteria : (CriteriaDefinition)UAElementFactory.newElement(criteria));
                        contributions.add(contribution);
                    }
                    ++j;
                }
            }
            ++i;
        }
        CriteriaDefinitionContribution[] cached = contributions.toArray(new CriteriaDefinitionContribution[contributions.size()]);
        return cached;
    }

    public void clearCache() {
        this.criteriaDefinitionContributionsByLocale.clear();
        this.criteriaDefinitionsByLocale.clear();
    }

    public AbstractCriteriaDefinitionProvider[] getCriteriaDefinitionProviders() {
        if (this.criteriaDefinitionProviders == null) {
            ArrayList<AbstractCriteriaDefinitionProvider> providers = new ArrayList<AbstractCriteriaDefinitionProvider>();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            IConfigurationElement[] elements = registry.getConfigurationElementsFor(EXTENSION_POINT_ID_CRITERIA_DEFINITION);
            int i = 0;
            while (i < elements.length) {
                IConfigurationElement elem = elements[i];
                if (elem.getName().equals(ELEMENT_NAME_CRITERIA_DEFINITION_PROVIDER)) {
                    try {
                        AbstractCriteriaDefinitionProvider provider = (AbstractCriteriaDefinitionProvider)elem.createExecutableExtension(ATTRIBUTE_NAME_CLASS);
                        providers.add(provider);
                    }
                    catch (CoreException e) {
                        String msg = "Error instantiating help keyword index provider class \"" + elem.getAttribute(ATTRIBUTE_NAME_CLASS) + '\"';
                        HelpPlugin.logError(msg, e);
                    }
                }
                ++i;
            }
            this.criteriaDefinitionProviders = providers.toArray(new AbstractCriteriaDefinitionProvider[providers.size()]);
        }
        return this.criteriaDefinitionProviders;
    }

    public boolean isCriteriaDefinitionLoaded(String locale) {
        return this.criteriaDefinitionsByLocale.get(locale) != null;
    }

    public void setCriteriaDefinitionProviders(AbstractCriteriaDefinitionProvider[] criteriaDefinitionProviders) {
        this.criteriaDefinitionProviders = criteriaDefinitionProviders;
    }

    public String getCriterionName(String id, String locale) {
        ICriteriaDefinition definition = this.getCriteriaDefinition(locale);
        ICriterionDefinition[] criterionDefinitions = definition.getCriterionDefinitions();
        int i = 0;
        while (i < criterionDefinitions.length) {
            String name;
            CriterionDefinition criterionDefinition = (CriterionDefinition)criterionDefinitions[i];
            if (criterionDefinition.getId() != null && criterionDefinition.getId().equalsIgnoreCase(id) && (name = criterionDefinition.getName()) != null && name.length() != 0) {
                return name;
            }
            ++i;
        }
        return id;
    }

    public String getCriterionValueName(String criterionId, String criterionValueId, String locale) {
        ICriteriaDefinition definition = this.getCriteriaDefinition(locale);
        ICriterionDefinition[] criterionDefinitions = definition.getCriterionDefinitions();
        int i = 0;
        while (i < criterionDefinitions.length) {
            CriterionDefinition criterionDefinition = (CriterionDefinition)criterionDefinitions[i];
            if (criterionDefinition.getId() != null && criterionDefinition.getId().equalsIgnoreCase(criterionId)) {
                ICriterionValueDefinition[] valueDefinitions = criterionDefinition.getCriterionValueDefinitions();
                int j = 0;
                while (j < valueDefinitions.length) {
                    String name;
                    CriterionValueDefinition valueDefinition = (CriterionValueDefinition)valueDefinitions[j];
                    if (valueDefinition.getId() != null && valueDefinition.getId().equals(criterionValueId) && (name = valueDefinition.getName()) != null && name.length() != 0) {
                        return name;
                    }
                    ++j;
                }
            }
            ++i;
        }
        return criterionValueId;
    }
}

