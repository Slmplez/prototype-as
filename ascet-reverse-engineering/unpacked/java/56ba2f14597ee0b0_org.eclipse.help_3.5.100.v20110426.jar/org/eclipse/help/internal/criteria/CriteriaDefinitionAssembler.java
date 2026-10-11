/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.criteria.CriteriaDefinition;
import org.eclipse.help.internal.criteria.CriteriaDefinitionContribution;
import org.eclipse.help.internal.criteria.CriterionDefinition;
import org.eclipse.help.internal.criteria.CriterionValueDefinition;

public class CriteriaDefinitionAssembler {
    public CriteriaDefinition assemble(List contributions) {
        return this.merge(contributions);
    }

    private CriteriaDefinition merge(List contributions) {
        CriteriaDefinition criteriaDefinition = new CriteriaDefinition();
        Iterator iter = contributions.iterator();
        while (iter.hasNext()) {
            CriteriaDefinitionContribution contribution = (CriteriaDefinitionContribution)iter.next();
            this.mergeChildren(criteriaDefinition, (CriteriaDefinition)contribution.getCriteriaDefinition());
            contribution.setCriteriaDefinition(null);
        }
        return criteriaDefinition;
    }

    private void mergeChildren(UAElement a, UAElement b) {
        HashMap<String, UAElement> criterionById = new HashMap<String, UAElement>();
        HashSet<String> criterionValueIds = new HashSet<String>();
        IUAElement[] childrenA = a.getChildren();
        int i = 0;
        while (i < childrenA.length) {
            UAElement childA = (UAElement)childrenA[i];
            if (childA instanceof CriterionDefinition) {
                String id = childA.getAttribute("id");
                if (id != null && id.trim().length() > 0) {
                    criterionById.put(childA.getAttribute("id"), childA);
                }
            } else if (childA instanceof CriterionValueDefinition) {
                String valueId = childA.getAttribute("id");
                String valueName = childA.getAttribute("name");
                if (valueId != null && valueId.trim().length() > 0 && valueName != null && valueName.trim().length() > 0) {
                    criterionValueIds.add(childA.getAttribute("id"));
                }
            }
            ++i;
        }
        IUAElement[] childrenB = b.getChildren();
        int i2 = 0;
        while (i2 < childrenB.length) {
            UAElement childB = (UAElement)childrenB[i2];
            if (childB instanceof CriterionDefinition) {
                String idB = childB.getAttribute("id");
                if (idB != null && idB.trim().length() > 0) {
                    if (criterionById.containsKey(idB)) {
                        this.mergeChildren((CriterionDefinition)criterionById.get(idB), childB);
                    } else {
                        a.appendChild(childB);
                        criterionById.put(idB, childB);
                    }
                }
            } else if (childB instanceof CriterionValueDefinition) {
                String valueIdB = childB.getAttribute("id");
                String valueNameB = childB.getAttribute("name");
                if (valueIdB != null && valueIdB.trim().length() > 0 && valueNameB != null && valueNameB.trim().length() > 0 && !criterionValueIds.contains(valueIdB)) {
                    a.appendChild(childB);
                    criterionValueIds.add(valueIdB);
                }
            }
            ++i2;
        }
    }
}

