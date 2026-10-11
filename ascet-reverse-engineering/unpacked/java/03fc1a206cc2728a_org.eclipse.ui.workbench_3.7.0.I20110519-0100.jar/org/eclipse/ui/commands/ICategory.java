/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import org.eclipse.ui.commands.ICategoryListener;
import org.eclipse.ui.commands.NotDefinedException;

public interface ICategory
extends Comparable {
    public void addCategoryListener(ICategoryListener var1);

    public String getDescription() throws NotDefinedException;

    public String getId();

    public String getName() throws NotDefinedException;

    public boolean isDefined();

    public void removeCategoryListener(ICategoryListener var1);
}

