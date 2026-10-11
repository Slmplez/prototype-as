/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.model;

import org.eclipse.ui.application.WorkbenchAdvisor;
import org.eclipse.ui.model.ContributionComparator;
import org.eclipse.ui.model.IContributionService;

public class ContributionService
implements IContributionService {
    private WorkbenchAdvisor advisor;

    public ContributionService(WorkbenchAdvisor advisor) {
        this.advisor = advisor;
    }

    public ContributionComparator getComparatorFor(String contributionType) {
        return this.advisor.getComparatorFor(contributionType);
    }
}

