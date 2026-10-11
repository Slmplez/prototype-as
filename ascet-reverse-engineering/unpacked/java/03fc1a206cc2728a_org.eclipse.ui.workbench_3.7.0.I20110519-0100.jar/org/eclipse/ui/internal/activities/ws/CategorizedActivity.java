/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityListener;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.NotDefinedException;

public class CategorizedActivity
implements IActivity {
    private IActivity activity;
    private ICategory category;

    public CategorizedActivity(ICategory category, IActivity activity) {
        this.activity = activity;
        this.category = category;
    }

    public void addActivityListener(IActivityListener activityListener) {
        this.activity.addActivityListener(activityListener);
    }

    public int compareTo(Object o) {
        return this.activity.compareTo(o);
    }

    public boolean equals(Object o) {
        if (o instanceof CategorizedActivity && ((CategorizedActivity)o).getCategory().equals(this.getCategory())) {
            return ((CategorizedActivity)o).getActivity().equals(this.getActivity());
        }
        return false;
    }

    public IActivity getActivity() {
        return this.activity;
    }

    public Set getActivityRequirementBindings() {
        return this.activity.getActivityRequirementBindings();
    }

    public Set getActivityPatternBindings() {
        return this.activity.getActivityPatternBindings();
    }

    public ICategory getCategory() {
        return this.category;
    }

    public String getId() {
        return this.activity.getId();
    }

    public String getName() throws NotDefinedException {
        return this.activity.getName();
    }

    public int hashCode() {
        return this.activity.hashCode();
    }

    public boolean isDefined() {
        return this.activity.isDefined();
    }

    public boolean isEnabled() {
        return this.activity.isEnabled();
    }

    public void removeActivityListener(IActivityListener activityListener) {
        this.activity.removeActivityListener(activityListener);
    }

    public String toString() {
        return String.valueOf(this.category.getId()) + " -> " + this.activity.getId();
    }

    public String getDescription() throws NotDefinedException {
        return this.activity.getDescription();
    }

    public boolean isDefaultEnabled() throws NotDefinedException {
        return this.activity.isDefaultEnabled();
    }

    public Expression getExpression() {
        return this.activity.getExpression();
    }
}

