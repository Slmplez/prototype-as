/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.commands;

import java.util.Map;
import java.util.Set;
import org.eclipse.ui.commands.ICategory;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.commands.ICommandManagerListener;
import org.eclipse.ui.commands.IKeyConfiguration;
import org.eclipse.ui.keys.KeySequence;

public interface ICommandManager {
    public void addCommandManagerListener(ICommandManagerListener var1);

    public Set getActiveContextIds();

    public String getActiveKeyConfigurationId();

    public String getActiveLocale();

    public String getActivePlatform();

    public ICategory getCategory(String var1);

    public ICommand getCommand(String var1);

    public Set getDefinedCategoryIds();

    public Set getDefinedCommandIds();

    public Set getDefinedKeyConfigurationIds();

    public IKeyConfiguration getKeyConfiguration(String var1);

    public Map getPartialMatches(KeySequence var1);

    public String getPerfectMatch(KeySequence var1);

    public boolean isPartialMatch(KeySequence var1);

    public boolean isPerfectMatch(KeySequence var1);

    public void removeCommandManagerListener(ICommandManagerListener var1);
}

