/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.IBindingManagerListener
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.TriggerSequence
 */
package org.eclipse.ui.keys;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.services.IDisposable;

public interface IBindingService
extends IDisposable {
    public static final String DEFAULT_DEFAULT_ACTIVE_SCHEME_ID = "org.eclipse.ui.defaultAcceleratorConfiguration";

    public void addBindingManagerListener(IBindingManagerListener var1);

    public void removeBindingManagerListener(IBindingManagerListener var1);

    public TriggerSequence[] getActiveBindingsFor(ParameterizedCommand var1);

    public TriggerSequence[] getActiveBindingsFor(String var1);

    public Scheme getActiveScheme();

    public TriggerSequence getBestActiveBindingFor(ParameterizedCommand var1);

    public TriggerSequence getBestActiveBindingFor(String var1);

    public String getBestActiveBindingFormattedFor(String var1);

    public Binding[] getBindings();

    public TriggerSequence getBuffer();

    public String getDefaultSchemeId();

    public Scheme[] getDefinedSchemes();

    public String getLocale();

    public Map getPartialMatches(TriggerSequence var1);

    public Binding getPerfectMatch(TriggerSequence var1);

    public String getPlatform();

    public Scheme getScheme(String var1);

    public boolean isKeyFilterEnabled();

    public boolean isPartialMatch(TriggerSequence var1);

    public boolean isPerfectMatch(TriggerSequence var1);

    public void openKeyAssistDialog();

    public void readRegistryAndPreferences(ICommandService var1);

    public void savePreferences(Scheme var1, Binding[] var2) throws IOException;

    public void setKeyFilterEnabled(boolean var1);

    public Collection getConflictsFor(TriggerSequence var1);
}

