/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.ICategoryListener;
import org.eclipse.ui.activities.NotDefinedException;

public interface ICategory
extends Comparable {
    public void addCategoryListener(ICategoryListener var1);

    public Set getCategoryActivityBindings();

    public String getId();

    public String getName() throws NotDefinedException;

    public String getDescription() throws NotDefinedException;

    public boolean isDefined();

    public void removeCategoryListener(ICategoryListener var1);
}

