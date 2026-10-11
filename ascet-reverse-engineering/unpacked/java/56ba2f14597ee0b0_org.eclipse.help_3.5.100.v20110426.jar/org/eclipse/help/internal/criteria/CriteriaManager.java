/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.help.internal.criteria;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Platform;
import org.eclipse.help.ICriteria;
import org.eclipse.help.internal.criteria.CriteriaDefinitionManager;
import org.eclipse.help.internal.criteria.CriterionResource;

public class CriteriaManager {
    private static final String SUPPORTED_CRITERIA = "supportedCriteria";
    private static final String ENABLE_CRITERIA = "enableCriteria";
    private List supportedCriteria;
    private boolean criteriaEnabled = Platform.getPreferencesService().getBoolean("org.eclipse.help", "enableCriteria", false, null);
    private Map allCriteriaValues;
    private CriteriaDefinitionManager criteriaDefinitionManager;

    public CriteriaManager() {
        this.supportedCriteria = new ArrayList();
        StringTokenizer criteria = new StringTokenizer(Platform.getPreferencesService().getString("org.eclipse.help", SUPPORTED_CRITERIA, "", null), ",;");
        while (criteria.hasMoreTokens()) {
            this.supportedCriteria.add(criteria.nextToken().toLowerCase().trim());
        }
        this.allCriteriaValues = new HashMap();
        if (this.criteriaDefinitionManager == null) {
            this.criteriaDefinitionManager = new CriteriaDefinitionManager();
        }
    }

    public boolean isSupportedCriterion(String criterion) {
        return criterion != null && this.supportedCriteria.contains(criterion.toLowerCase());
    }

    public boolean isCriteriaEnabled() {
        return this.criteriaEnabled;
    }

    public void addCriteriaValues(ICriteria[] criteria, String locale) {
        HashMap criteriaInLocale = (HashMap)this.allCriteriaValues.get(locale);
        if (criteriaInLocale == null) {
            criteriaInLocale = new HashMap();
        }
        CriterionResource[] resources = CriterionResource.toCriterionResource(criteria);
        int i = 0;
        while (i < resources.length) {
            CriterionResource criterion = resources[i];
            String criterionName = criterion.getCriterionName();
            List criterionValues = criterion.getCriterionValues();
            HashSet existedValues = (HashSet)criteriaInLocale.get(criterionName);
            if (existedValues == null) {
                existedValues = new HashSet();
            }
            existedValues.addAll(criterionValues);
            criteriaInLocale.put(criterionName, existedValues);
            ++i;
        }
        this.allCriteriaValues.put(locale, criteriaInLocale);
    }

    public Map getAllCriteriaValues(String locale) {
        HashMap criteria = (HashMap)this.allCriteriaValues.get(locale);
        if (criteria == null) {
            criteria = new HashMap();
        }
        return criteria;
    }

    public String getCriterionDisplayName(String criterionId, String locale) {
        return this.criteriaDefinitionManager.getCriterionName(criterionId, locale);
    }

    public String getCriterionValueDisplayName(String criterionId, String criterionValueId, String locale) {
        return this.criteriaDefinitionManager.getCriterionValueName(criterionId, criterionValueId, locale);
    }
}

