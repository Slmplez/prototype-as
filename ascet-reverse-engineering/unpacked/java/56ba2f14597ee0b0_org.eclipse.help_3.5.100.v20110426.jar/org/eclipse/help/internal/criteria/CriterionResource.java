/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.help.ICriteria;
import org.eclipse.help.internal.HelpPlugin;

public class CriterionResource {
    private String criterionName;
    private List criterionValues;

    public CriterionResource(String criterionName) {
        this(criterionName, null);
    }

    public CriterionResource(String criterionName, List criterionValues) {
        this.criterionName = criterionName;
        this.criterionValues = new ArrayList();
        if (criterionValues != null) {
            this.addCriterionValues(criterionValues);
        }
    }

    public String getCriterionName() {
        return this.criterionName;
    }

    public List getCriterionValues() {
        return this.criterionValues;
    }

    public void addCriterionValue(String criterionValue) {
        if (criterionValue != null && criterionValue.length() != 0 && !this.criterionValues.contains(criterionValue)) {
            this.criterionValues.add(criterionValue);
        }
    }

    public void addCriterionValues(List criterionValues) {
        Iterator iterator = criterionValues.iterator();
        while (iterator.hasNext()) {
            String criterionValue = (String)iterator.next();
            this.addCriterionValue(criterionValue);
        }
    }

    public static CriterionResource[] toCriterionResource(ICriteria[] criteriaElements) {
        ArrayList<CriterionResource> criteriaList = new ArrayList<CriterionResource>();
        int i = 0;
        while (i < criteriaElements.length) {
            block5: {
                String elementName = criteriaElements[i].getName();
                String elementValue = criteriaElements[i].getValue();
                if (elementName != null && elementName.length() != 0 && elementValue != null && elementValue.length() != 0 && HelpPlugin.getCriteriaManager().isSupportedCriterion(elementName)) {
                    elementName = elementName.toLowerCase();
                    StringTokenizer tokenizer = new StringTokenizer(elementValue, ",");
                    ArrayList<String> values = new ArrayList<String>();
                    while (tokenizer.hasMoreTokens()) {
                        values.add(tokenizer.nextToken().trim());
                    }
                    int j = 0;
                    while (j < criteriaList.size()) {
                        CriterionResource criterion = (CriterionResource)criteriaList.get(j);
                        if (elementName.equals(criterion.getCriterionName())) {
                            criterion.addCriterionValues(values);
                            break block5;
                        }
                        ++j;
                    }
                    CriterionResource criterionResource = new CriterionResource(elementName, values);
                    criteriaList.add(criterionResource);
                }
            }
            ++i;
        }
        CriterionResource[] criteria = new CriterionResource[criteriaList.size()];
        criteriaList.toArray(criteria);
        return criteria;
    }
}

