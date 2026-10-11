/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.Expression
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.core.expressions.Expression;
import org.eclipse.ui.activities.IActivityListener;
import org.eclipse.ui.activities.NotDefinedException;

public interface IActivity
extends Comparable {
    public void addActivityListener(IActivityListener var1);

    public Set getActivityRequirementBindings();

    public Set getActivityPatternBindings();

    public String getId();

    public String getName() throws NotDefinedException;

    public String getDescription() throws NotDefinedException;

    public boolean isDefined();

    public boolean isEnabled();

    public boolean isDefaultEnabled() throws NotDefinedException;

    public void removeActivityListener(IActivityListener var1);

    public Expression getExpression();
}

