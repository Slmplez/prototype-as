/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.action;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManagerOverrides;

public interface IContributionManager {
    public void add(IAction var1);

    public void add(IContributionItem var1);

    public void appendToGroup(String var1, IAction var2);

    public void appendToGroup(String var1, IContributionItem var2);

    public IContributionItem find(String var1);

    public IContributionItem[] getItems();

    public IContributionManagerOverrides getOverrides();

    public void insertAfter(String var1, IAction var2);

    public void insertAfter(String var1, IContributionItem var2);

    public void insertBefore(String var1, IAction var2);

    public void insertBefore(String var1, IContributionItem var2);

    public boolean isDirty();

    public boolean isEmpty();

    public void markDirty();

    public void prependToGroup(String var1, IAction var2);

    public void prependToGroup(String var1, IContributionItem var2);

    public IContributionItem remove(String var1);

    public IContributionItem remove(IContributionItem var1);

    public void removeAll();

    public void update(boolean var1);
}

