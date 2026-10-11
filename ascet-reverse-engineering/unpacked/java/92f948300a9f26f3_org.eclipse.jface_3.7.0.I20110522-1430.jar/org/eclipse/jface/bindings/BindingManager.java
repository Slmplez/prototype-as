/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.HandleObjectManager
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.ContextManagerEvent
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jface.bindings;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.HandleObjectManager;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManagerEvent;
import org.eclipse.jface.bindings.CachedBindingSet;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.ISchemeListener;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.SchemeEvent;
import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.Util;

public final class BindingManager
extends HandleObjectManager
implements IContextManagerListener,
ISchemeListener {
    public static boolean DEBUG = false;
    private static final TriggerSequence[] EMPTY_TRIGGER_SEQUENCE = new TriggerSequence[0];
    private static final String LOCALE_SEPARATOR = "_";
    private Map currentConflicts = null;
    private Map activeBindings = null;
    private Map activeBindingsByParameterizedCommand = null;
    private Set triggerConflicts = new HashSet();
    private Scheme activeScheme = null;
    private String[] activeSchemeIds = null;
    private int bindingCount = 0;
    private Set bindingErrors = new HashSet();
    private Binding[] bindings = null;
    private Map cachedBindings = new HashMap();
    private final CommandManager commandManager;
    private final ContextManager contextManager;
    private String locale = Locale.getDefault().toString();
    private String[] locales = BindingManager.expand(this.locale, "_");
    private String platform = Util.getWS();
    private String[] platforms = BindingManager.expand(this.platform, "");
    private Map prefixTable = null;

    private static final void addReverseLookup(Map map, Object key, Object value) {
        if (map == null) {
            return;
        }
        Object currentValue = map.get(key);
        if (currentValue != null) {
            Collection values = (Collection)currentValue;
            values.add(value);
        } else {
            ArrayList<Object> values = new ArrayList<Object>(1);
            values.add(value);
            map.put(key, values);
        }
    }

    private static final String[] expand(String string, String separator) {
        if (string == null || separator == null) {
            return new String[0];
        }
        ArrayList<String> strings = new ArrayList<String>();
        StringBuffer stringBuffer = new StringBuffer();
        if ((string = string.trim()).length() > 0) {
            StringTokenizer stringTokenizer = new StringTokenizer(string, separator);
            while (stringTokenizer.hasMoreElements()) {
                if (stringBuffer.length() > 0) {
                    stringBuffer.append(separator);
                }
                stringBuffer.append(((String)stringTokenizer.nextElement()).trim());
                strings.add(stringBuffer.toString());
            }
        }
        Collections.reverse(strings);
        strings.add("");
        strings.add(null);
        return strings.toArray(new String[strings.size()]);
    }

    public BindingManager(ContextManager contextManager, CommandManager commandManager) {
        if (contextManager == null) {
            throw new NullPointerException("A binding manager requires a context manager");
        }
        if (commandManager == null) {
            throw new NullPointerException("A binding manager requires a command manager");
        }
        this.contextManager = contextManager;
        contextManager.addContextManagerListener((IContextManagerListener)this);
        this.commandManager = commandManager;
    }

    public final void addBinding(Binding binding) {
        if (binding == null) {
            throw new NullPointerException("Cannot add a null binding");
        }
        if (this.bindings == null) {
            this.bindings = new Binding[1];
        } else if (this.bindingCount >= this.bindings.length) {
            Binding[] oldBindings = this.bindings;
            this.bindings = new Binding[oldBindings.length * 2];
            System.arraycopy(oldBindings, 0, this.bindings, 0, oldBindings.length);
        }
        this.bindings[this.bindingCount++] = binding;
        this.clearCache();
    }

    public final void addBindingManagerListener(IBindingManagerListener listener) {
        this.addListenerObject(listener);
    }

    private final Map buildPrefixTable(Map activeBindings) {
        HashMap prefixTable = new HashMap();
        Iterator bindingItr = activeBindings.entrySet().iterator();
        while (bindingItr.hasNext()) {
            TriggerSequence[] prefixes;
            int prefixesLength;
            Map.Entry entry = bindingItr.next();
            TriggerSequence triggerSequence = (TriggerSequence)entry.getKey();
            if (!prefixTable.containsKey(triggerSequence)) {
                prefixTable.put(triggerSequence, null);
            }
            if ((prefixesLength = (prefixes = triggerSequence.getPrefixes()).length) == 0) continue;
            Binding binding = (Binding)entry.getValue();
            int i = 0;
            while (i < prefixesLength) {
                TriggerSequence prefix = prefixes[i];
                Object value = prefixTable.get(prefix);
                if (prefixTable.containsKey(prefix) && value instanceof Map) {
                    ((Map)value).put(triggerSequence, binding);
                } else {
                    HashMap<TriggerSequence, Binding> map = new HashMap<TriggerSequence, Binding>();
                    prefixTable.put(prefix, map);
                    map.put(triggerSequence, binding);
                }
                ++i;
            }
        }
        return prefixTable;
    }

    private final void clearCache() {
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)"Clearing cache");
        }
        this.cachedBindings.clear();
        this.clearSolution();
    }

    private final void clearSolution() {
        this.setActiveBindings(null, null, null, null);
    }

    private final int compareSchemes(String schemeId1, String schemeId2) {
        if (!schemeId2.equals(schemeId1)) {
            int i = 0;
            while (i < this.activeSchemeIds.length) {
                String schemePointer = this.activeSchemeIds[i];
                if (schemeId2.equals(schemePointer)) {
                    return 1;
                }
                if (schemeId1.equals(schemePointer)) {
                    return -1;
                }
                ++i;
            }
        }
        return 0;
    }

    private final void computeBindings(Map activeContextTree, Map bindingsByTrigger, Map triggersByCommandId, Map conflictsByTrigger) {
        Binding[] trimmedBindings = this.removeDeletions(this.bindings);
        HashMap<TriggerSequence, Object> possibleBindings = new HashMap<TriggerSequence, Object>();
        int length = trimmedBindings.length;
        int i = 0;
        while (i < length) {
            Binding binding = trimmedBindings[i];
            String contextId = binding.getContextId();
            if ((activeContextTree == null || activeContextTree.containsKey(contextId)) && this.localeMatches(binding) && this.platformMatches(binding)) {
                String schemeId = binding.getSchemeId();
                boolean found = false;
                if (this.activeSchemeIds != null) {
                    int j = 0;
                    while (j < this.activeSchemeIds.length) {
                        if (Util.equals(schemeId, this.activeSchemeIds[j])) {
                            found = true;
                            break;
                        }
                        ++j;
                    }
                }
                if (found) {
                    ArrayList<Binding> matches;
                    TriggerSequence trigger = binding.getTriggerSequence();
                    Object existingMatch = possibleBindings.get(trigger);
                    if (existingMatch instanceof Binding) {
                        possibleBindings.remove(trigger);
                        matches = new ArrayList<Binding>();
                        matches.add((Binding)existingMatch);
                        matches.add(binding);
                        possibleBindings.put(trigger, matches);
                    } else if (existingMatch instanceof Collection) {
                        matches = (ArrayList<Binding>)existingMatch;
                        matches.add(binding);
                    } else {
                        possibleBindings.put(trigger, binding);
                    }
                }
            }
            ++i;
        }
        MultiStatus conflicts = new MultiStatus("org.eclipse.jface", 0, "Keybinding conflicts occurred.  They may interfere with normal accelerator operation.", null);
        Iterator possibleBindingItr = possibleBindings.entrySet().iterator();
        while (possibleBindingItr.hasNext()) {
            Map.Entry entry = possibleBindingItr.next();
            TriggerSequence trigger = (TriggerSequence)entry.getKey();
            Object match = entry.getValue();
            if (activeContextTree == null) {
                ArrayList bindings = new ArrayList();
                if (match instanceof Binding) {
                    bindings.add(match);
                    bindingsByTrigger.put(trigger, bindings);
                    BindingManager.addReverseLookup(triggersByCommandId, ((Binding)match).getParameterizedCommand(), trigger);
                    continue;
                }
                if (!(match instanceof Collection)) continue;
                bindings.addAll((Collection)match);
                bindingsByTrigger.put(trigger, bindings);
                Iterator matchItr = bindings.iterator();
                while (matchItr.hasNext()) {
                    BindingManager.addReverseLookup(triggersByCommandId, ((Binding)matchItr.next()).getParameterizedCommand(), trigger);
                }
                continue;
            }
            if (match instanceof Binding) {
                Binding binding = (Binding)match;
                bindingsByTrigger.put(trigger, binding);
                BindingManager.addReverseLookup(triggersByCommandId, binding.getParameterizedCommand(), trigger);
                continue;
            }
            if (!(match instanceof Collection)) continue;
            Binding winner = this.resolveConflicts((Collection)match, activeContextTree);
            if (winner == null) {
                conflictsByTrigger.put(trigger, match);
                if (this.triggerConflicts.add(trigger)) {
                    StringWriter sw = new StringWriter();
                    BufferedWriter buffer = new BufferedWriter(sw);
                    try {
                        buffer.write("A conflict occurred for ");
                        buffer.write(trigger.toString());
                        buffer.write(58);
                        Iterator i2 = ((Collection)match).iterator();
                        while (i2.hasNext()) {
                            buffer.newLine();
                            buffer.write(i2.next().toString());
                        }
                        buffer.flush();
                    }
                    catch (IOException iOException) {}
                    conflicts.add((IStatus)new Status(2, "org.eclipse.jface", sw.toString()));
                }
                if (!DEBUG) continue;
                Tracing.printTrace((String)"BINDINGS", (String)("A conflict occurred for " + trigger));
                Tracing.printTrace((String)"BINDINGS", (String)("    " + match));
                continue;
            }
            bindingsByTrigger.put(trigger, winner);
            BindingManager.addReverseLookup(triggersByCommandId, winner.getParameterizedCommand(), trigger);
        }
        if (conflicts.getSeverity() != 0) {
            Policy.getLog().log((IStatus)conflicts);
        }
    }

    public final void contextManagerChanged(ContextManagerEvent contextManagerEvent) {
        if (contextManagerEvent.isActiveContextsChanged()) {
            this.recomputeBindings();
        }
    }

    private final int countStrokes(Trigger[] triggers) {
        int strokeCount = triggers.length;
        int i = 0;
        while (i < triggers.length) {
            Trigger trigger = triggers[i];
            if (trigger instanceof KeyStroke) {
                IKeyLookup lookup;
                KeyStroke keyStroke = (KeyStroke)trigger;
                int modifierKeys = keyStroke.getModifierKeys();
                if ((modifierKeys & (lookup = KeyLookupFactory.getDefault()).getAlt()) != 0) {
                    strokeCount += 8;
                }
                if ((modifierKeys & lookup.getCtrl()) != 0) {
                    strokeCount += 2;
                }
                if ((modifierKeys & lookup.getShift()) != 0) {
                    strokeCount += 4;
                }
                if ((modifierKeys & lookup.getCommand()) != 0) {
                    strokeCount += 2;
                }
            } else {
                strokeCount += 99;
            }
            ++i;
        }
        return strokeCount;
    }

    private final Map createContextTreeFor(Set contextIds) {
        HashMap<String, String> contextTree = new HashMap<String, String>();
        Iterator contextIdItr = contextIds.iterator();
        block2: while (contextIdItr.hasNext()) {
            String childContextId = (String)contextIdItr.next();
            while (childContextId != null) {
                if (contextTree.containsKey(childContextId)) continue block2;
                Context childContext = this.contextManager.getContext(childContextId);
                try {
                    String parentContextId = childContext.getParentId();
                    contextTree.put(childContextId, parentContextId);
                    childContextId = parentContextId;
                }
                catch (NotDefinedException notDefinedException) {
                    continue block2;
                }
            }
        }
        return contextTree;
    }

    private final Map createFilteredContextTreeFor(Set contextIds) {
        String contextId;
        boolean dialog = false;
        boolean window = false;
        Iterator contextIdItr = contextIds.iterator();
        while (contextIdItr.hasNext()) {
            contextId = (String)contextIdItr.next();
            if ("org.eclipse.ui.contexts.dialog".equals(contextId)) {
                dialog = true;
                continue;
            }
            if (!"org.eclipse.ui.contexts.window".equals(contextId)) continue;
            window = true;
        }
        contextIdItr = contextIds.iterator();
        block3: while (contextIdItr.hasNext()) {
            contextId = (String)contextIdItr.next();
            Context context = this.contextManager.getContext(contextId);
            try {
                String parentId = context.getParentId();
                while (parentId != null) {
                    if ("org.eclipse.ui.contexts.dialog".equals(parentId)) {
                        if (dialog) continue block3;
                        contextIdItr.remove();
                        continue block3;
                    }
                    if ("org.eclipse.ui.contexts.window".equals(parentId)) {
                        if (window) continue block3;
                        contextIdItr.remove();
                        continue block3;
                    }
                    if ("org.eclipse.ui.contexts.dialogAndWindow".equals(parentId)) {
                        if (window || dialog) continue block3;
                        contextIdItr.remove();
                        continue block3;
                    }
                    context = this.contextManager.getContext(parentId);
                    parentId = context.getParentId();
                }
            }
            catch (NotDefinedException e) {
                contextIdItr.remove();
                if (context != null && this.bindingErrors.contains(context.getId())) continue;
                if (context != null) {
                    this.bindingErrors.add(context.getId());
                }
                Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", 0, "Undefined context while filtering dialog/window contexts", (Throwable)e));
            }
        }
        return this.createContextTreeFor(contextIds);
    }

    private final void fireBindingManagerChanged(BindingManagerEvent event) {
        if (event == null) {
            throw new NullPointerException();
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IBindingManagerListener listener = (IBindingManagerListener)listeners[i];
            listener.bindingManagerChanged(event);
            ++i;
        }
    }

    private final Map getActiveBindings() {
        if (this.activeBindings == null) {
            this.recomputeBindings();
        }
        return this.activeBindings;
    }

    private final Map getActiveBindingsByParameterizedCommand() {
        if (this.activeBindingsByParameterizedCommand == null) {
            this.recomputeBindings();
        }
        return this.activeBindingsByParameterizedCommand;
    }

    public final Map getActiveBindingsDisregardingContext() {
        HashMap commandIdsByTrigger;
        if (this.bindings == null) {
            return Collections.EMPTY_MAP;
        }
        CachedBindingSet bindingCache = new CachedBindingSet(null, this.locales, this.platforms, this.activeSchemeIds);
        CachedBindingSet existingCache = (CachedBindingSet)this.cachedBindings.get(bindingCache);
        if (existingCache == null) {
            existingCache = bindingCache;
            this.cachedBindings.put(existingCache, existingCache);
        }
        if ((commandIdsByTrigger = existingCache.getBindingsByTrigger()) != null) {
            if (DEBUG) {
                Tracing.printTrace((String)"BINDINGS", (String)"Cache hit");
            }
            return Collections.unmodifiableMap(commandIdsByTrigger);
        }
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)"Cache miss");
        }
        commandIdsByTrigger = new HashMap();
        HashMap triggersByParameterizedCommand = new HashMap();
        HashMap conflictsByTrigger = new HashMap();
        this.computeBindings(null, commandIdsByTrigger, triggersByParameterizedCommand, conflictsByTrigger);
        existingCache.setBindingsByTrigger(commandIdsByTrigger);
        existingCache.setTriggersByCommandId(triggersByParameterizedCommand);
        existingCache.setConflictsByTrigger(conflictsByTrigger);
        return Collections.unmodifiableMap(commandIdsByTrigger);
    }

    private final Map getActiveBindingsDisregardingContextByParameterizedCommand() {
        HashMap triggersByParameterizedCommand;
        if (this.bindings == null) {
            return Collections.EMPTY_MAP;
        }
        CachedBindingSet bindingCache = new CachedBindingSet(null, this.locales, this.platforms, this.activeSchemeIds);
        CachedBindingSet existingCache = (CachedBindingSet)this.cachedBindings.get(bindingCache);
        if (existingCache == null) {
            existingCache = bindingCache;
            this.cachedBindings.put(existingCache, existingCache);
        }
        if ((triggersByParameterizedCommand = existingCache.getTriggersByCommandId()) != null) {
            if (DEBUG) {
                Tracing.printTrace((String)"BINDINGS", (String)"Cache hit");
            }
            return Collections.unmodifiableMap(triggersByParameterizedCommand);
        }
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)"Cache miss");
        }
        HashMap commandIdsByTrigger = new HashMap();
        HashMap conflictsByTrigger = new HashMap();
        triggersByParameterizedCommand = new HashMap();
        this.computeBindings(null, commandIdsByTrigger, triggersByParameterizedCommand, conflictsByTrigger);
        existingCache.setBindingsByTrigger(commandIdsByTrigger);
        existingCache.setTriggersByCommandId(triggersByParameterizedCommand);
        existingCache.setConflictsByTrigger(conflictsByTrigger);
        return Collections.unmodifiableMap(triggersByParameterizedCommand);
    }

    public final Collection getActiveBindingsDisregardingContextFlat() {
        Collection bindingCollections = this.getActiveBindingsDisregardingContext().values();
        ArrayList mergedBindings = new ArrayList();
        Iterator bindingCollectionItr = bindingCollections.iterator();
        while (bindingCollectionItr.hasNext()) {
            Collection bindingCollection = (Collection)bindingCollectionItr.next();
            if (bindingCollection == null || bindingCollection.isEmpty()) continue;
            mergedBindings.addAll(bindingCollection);
        }
        return mergedBindings;
    }

    public final TriggerSequence[] getActiveBindingsDisregardingContextFor(ParameterizedCommand parameterizedCommand) {
        Object object = this.getActiveBindingsDisregardingContextByParameterizedCommand().get(parameterizedCommand);
        if (object instanceof Collection) {
            Collection collection = (Collection)object;
            return collection.toArray(new TriggerSequence[collection.size()]);
        }
        return EMPTY_TRIGGER_SEQUENCE;
    }

    public final TriggerSequence[] getActiveBindingsFor(ParameterizedCommand parameterizedCommand) {
        Object object = this.getActiveBindingsByParameterizedCommand().get(parameterizedCommand);
        if (object instanceof Collection) {
            Collection collection = (Collection)object;
            return collection.toArray(new TriggerSequence[collection.size()]);
        }
        return EMPTY_TRIGGER_SEQUENCE;
    }

    public final TriggerSequence[] getActiveBindingsFor(String commandId) {
        ParameterizedCommand parameterizedCommand = new ParameterizedCommand(this.commandManager.getCommand(commandId), null);
        return this.getActiveBindingsFor(parameterizedCommand);
    }

    private final Binding[] getActiveBindingsFor1(ParameterizedCommand command) {
        TriggerSequence[] triggers = this.getActiveBindingsFor(command);
        if (triggers.length == 0) {
            return null;
        }
        Map activeBindings = this.getActiveBindings();
        if (activeBindings != null) {
            Binding[] bindings = new Binding[triggers.length];
            int i = 0;
            while (i < triggers.length) {
                Binding binding;
                TriggerSequence triggerSequence = triggers[i];
                Object object = activeBindings.get(triggerSequence);
                bindings[i] = binding = (Binding)object;
                ++i;
            }
            return bindings;
        }
        return null;
    }

    public final Scheme getActiveScheme() {
        return this.activeScheme;
    }

    public final TriggerSequence getBestActiveBindingFor(String commandId) {
        return this.getBestActiveBindingFor(new ParameterizedCommand(this.commandManager.getCommand(commandId), null));
    }

    public final TriggerSequence getBestActiveBindingFor(ParameterizedCommand command) {
        Binding[] bindings = this.getActiveBindingsFor1(command);
        if (bindings == null || bindings.length == 0) {
            return null;
        }
        Binding bestBinding = bindings[0];
        int i = 1;
        while (i < bindings.length) {
            String currentSchemeId;
            Binding currentBinding = bindings[i];
            String bestSchemeId = bestBinding.getSchemeId();
            int compareTo = this.compareSchemes(bestSchemeId, currentSchemeId = currentBinding.getSchemeId());
            if (compareTo > 0) {
                bestBinding = currentBinding;
            }
            if (compareTo == 0) {
                String bestLocale = bestBinding.getLocale();
                String currentLocale = currentBinding.getLocale();
                if (bestLocale == null && currentLocale != null) {
                    bestBinding = currentBinding;
                }
                if (Util.equals(bestLocale, currentLocale)) {
                    String bestPlatform = bestBinding.getPlatform();
                    String currentPlatform = currentBinding.getPlatform();
                    if (bestPlatform == null && currentPlatform != null) {
                        bestBinding = currentBinding;
                    }
                    if (Util.equals(bestPlatform, currentPlatform)) {
                        Trigger[] currentTriggers;
                        TriggerSequence bestTriggerSequence = bestBinding.getTriggerSequence();
                        TriggerSequence currentTriggerSequence = currentBinding.getTriggerSequence();
                        Trigger[] bestTriggers = bestTriggerSequence.getTriggers();
                        compareTo = bestTriggers.length - (currentTriggers = currentTriggerSequence.getTriggers()).length;
                        if (compareTo > 0) {
                            bestBinding = currentBinding;
                        }
                        if (compareTo == 0) {
                            compareTo = this.countStrokes(bestTriggers) - this.countStrokes(currentTriggers);
                            if (compareTo > 0) {
                                bestBinding = currentBinding;
                            }
                            if (compareTo == 0 && (compareTo = bestTriggerSequence.format().length() - currentTriggerSequence.format().length()) > 0) {
                                bestBinding = currentBinding;
                            }
                        }
                    }
                }
            }
            ++i;
        }
        return bestBinding.getTriggerSequence();
    }

    public final String getBestActiveBindingFormattedFor(String commandId) {
        TriggerSequence binding = this.getBestActiveBindingFor(commandId);
        if (binding != null) {
            return binding.format();
        }
        return null;
    }

    public final Binding[] getBindings() {
        if (this.bindings == null) {
            return null;
        }
        Binding[] returnValue = new Binding[this.bindingCount];
        System.arraycopy(this.bindings, 0, returnValue, 0, this.bindingCount);
        return returnValue;
    }

    public final Scheme[] getDefinedSchemes() {
        return this.definedHandleObjects.toArray(new Scheme[this.definedHandleObjects.size()]);
    }

    public final String getLocale() {
        return this.locale;
    }

    public final Map getPartialMatches(TriggerSequence trigger) {
        Map partialMatches = (Map)this.getPrefixTable().get(trigger);
        if (partialMatches == null) {
            return Collections.EMPTY_MAP;
        }
        return partialMatches;
    }

    public final Binding getPerfectMatch(TriggerSequence trigger) {
        return (Binding)this.getActiveBindings().get(trigger);
    }

    public final String getPlatform() {
        return this.platform;
    }

    private final Map getPrefixTable() {
        if (this.prefixTable == null) {
            this.recomputeBindings();
        }
        return this.prefixTable;
    }

    public final Scheme getScheme(String schemeId) {
        this.checkId(schemeId);
        Scheme scheme = (Scheme)this.handleObjectsById.get(schemeId);
        if (scheme == null) {
            scheme = new Scheme(schemeId);
            this.handleObjectsById.put(schemeId, scheme);
            scheme.addSchemeListener(this);
        }
        return scheme;
    }

    private final String[] getSchemeIds(String schemeId) {
        ArrayList<String> strings = new ArrayList<String>();
        while (schemeId != null) {
            strings.add(schemeId);
            try {
                schemeId = this.getScheme(schemeId).getParentId();
            }
            catch (NotDefinedException e) {
                Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", 0, "Failed ascending scheme parents", (Throwable)e));
                return new String[0];
            }
        }
        return strings.toArray(new String[strings.size()]);
    }

    public final boolean isPartialMatch(TriggerSequence trigger) {
        return this.getPrefixTable().get(trigger) != null;
    }

    public final boolean isPerfectMatch(TriggerSequence trigger) {
        return this.getActiveBindings().containsKey(trigger);
    }

    private final boolean localeMatches(Binding binding) {
        boolean matches = false;
        String locale = binding.getLocale();
        if (locale == null) {
            return true;
        }
        int i = 0;
        while (i < this.locales.length) {
            if (Util.equals(this.locales[i], locale)) {
                matches = true;
                break;
            }
            ++i;
        }
        return matches;
    }

    private final boolean platformMatches(Binding binding) {
        boolean matches = false;
        String platform = binding.getPlatform();
        if (platform == null) {
            return true;
        }
        int i = 0;
        while (i < this.platforms.length) {
            if (Util.equals(this.platforms[i], platform)) {
                matches = true;
                break;
            }
            ++i;
        }
        return matches;
    }

    private final void recomputeBindings() {
        HashMap commandIdsByTrigger;
        if (this.bindings == null) {
            this.setActiveBindings(Collections.EMPTY_MAP, Collections.EMPTY_MAP, Collections.EMPTY_MAP, Collections.EMPTY_MAP);
            return;
        }
        HashSet activeContextIds = new HashSet(this.contextManager.getActiveContextIds());
        Map activeContextTree = this.createFilteredContextTreeFor(activeContextIds);
        CachedBindingSet bindingCache = new CachedBindingSet(activeContextTree, this.locales, this.platforms, this.activeSchemeIds);
        CachedBindingSet existingCache = (CachedBindingSet)this.cachedBindings.get(bindingCache);
        if (existingCache == null) {
            existingCache = bindingCache;
            this.cachedBindings.put(existingCache, existingCache);
        }
        if ((commandIdsByTrigger = existingCache.getBindingsByTrigger()) != null) {
            if (DEBUG) {
                Tracing.printTrace((String)"BINDINGS", (String)"Cache hit");
            }
            this.setActiveBindings(commandIdsByTrigger, existingCache.getTriggersByCommandId(), existingCache.getPrefixTable(), existingCache.getConflictsByTrigger());
            return;
        }
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)"Cache miss");
        }
        commandIdsByTrigger = new HashMap();
        HashMap triggersByParameterizedCommand = new HashMap();
        HashMap conflictsByTrigger = new HashMap();
        this.computeBindings(activeContextTree, commandIdsByTrigger, triggersByParameterizedCommand, conflictsByTrigger);
        existingCache.setBindingsByTrigger(commandIdsByTrigger);
        existingCache.setTriggersByCommandId(triggersByParameterizedCommand);
        existingCache.setConflictsByTrigger(conflictsByTrigger);
        this.setActiveBindings(commandIdsByTrigger, triggersByParameterizedCommand, this.buildPrefixTable(commandIdsByTrigger), conflictsByTrigger);
        existingCache.setPrefixTable(this.prefixTable);
    }

    public final void removeBinding(Binding binding) {
        if (this.bindings == null || this.bindings.length < 1) {
            return;
        }
        Binding[] newBindings = new Binding[this.bindings.length];
        boolean bindingsChanged = false;
        int index = 0;
        int i = 0;
        while (i < this.bindingCount) {
            Binding b = this.bindings[i];
            if (b == binding) {
                bindingsChanged = true;
            } else {
                newBindings[index++] = b;
            }
            ++i;
        }
        if (bindingsChanged) {
            this.bindings = newBindings;
            this.bindingCount = index;
            this.clearCache();
        }
    }

    public final void removeBindingManagerListener(IBindingManagerListener listener) {
        this.removeListenerObject(listener);
    }

    public final void removeBindings(TriggerSequence sequence, String schemeId, String contextId, String locale, String platform, String windowManager, int type) {
        if (this.bindings == null || this.bindingCount < 1) {
            return;
        }
        Binding[] newBindings = new Binding[this.bindings.length];
        boolean bindingsChanged = false;
        int index = 0;
        int i = 0;
        while (i < this.bindingCount) {
            Binding binding = this.bindings[i];
            boolean equals = true;
            equals &= Util.equals(sequence, binding.getTriggerSequence());
            equals &= Util.equals(schemeId, binding.getSchemeId());
            equals &= Util.equals(contextId, binding.getContextId());
            equals &= Util.equals(locale, binding.getLocale());
            equals &= Util.equals(platform, binding.getPlatform());
            if (equals &= type == binding.getType()) {
                bindingsChanged = true;
            } else {
                newBindings[index++] = binding;
            }
            ++i;
        }
        if (bindingsChanged) {
            this.bindings = newBindings;
            this.bindingCount = index;
            this.clearCache();
        }
    }

    private final Binding[] removeDeletions(Binding[] bindings) {
        Binding binding;
        HashMap<TriggerSequence, Object> deletions = new HashMap<TriggerSequence, Object>();
        Binding[] bindingsCopy = new Binding[this.bindingCount];
        System.arraycopy(bindings, 0, bindingsCopy, 0, this.bindingCount);
        int deletedCount = 0;
        int i = 0;
        while (i < this.bindingCount) {
            binding = bindingsCopy[i];
            if (binding.getParameterizedCommand() == null && this.localeMatches(binding) && this.platformMatches(binding)) {
                Collection<Binding> collection;
                TriggerSequence sequence = binding.getTriggerSequence();
                Object currentValue = deletions.get(sequence);
                if (currentValue instanceof Binding) {
                    collection = new ArrayList(2);
                    collection.add((Binding)currentValue);
                    collection.add(binding);
                    deletions.put(sequence, collection);
                } else if (currentValue instanceof Collection) {
                    collection = (Collection)currentValue;
                    collection.add(binding);
                } else {
                    deletions.put(sequence, binding);
                }
                bindingsCopy[i] = null;
                ++deletedCount;
            }
            ++i;
        }
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)("There are " + deletions.size() + " deletion markers"));
        }
        i = 0;
        while (i < this.bindingCount) {
            block12: {
                Object deletion;
                block13: {
                    binding = bindingsCopy[i];
                    if (binding == null) break block12;
                    deletion = deletions.get(binding.getTriggerSequence());
                    if (!(deletion instanceof Binding)) break block13;
                    if (!((Binding)deletion).deletes(binding)) break block12;
                    bindingsCopy[i] = null;
                    ++deletedCount;
                    break block12;
                }
                if (deletion instanceof Collection) {
                    Collection collection = (Collection)deletion;
                    Iterator iterator = collection.iterator();
                    while (iterator.hasNext()) {
                        Object deletionBinding = iterator.next();
                        if (!(deletionBinding instanceof Binding) || !((Binding)deletionBinding).deletes(binding)) continue;
                        bindingsCopy[i] = null;
                        ++deletedCount;
                        break;
                    }
                }
            }
            ++i;
        }
        Binding[] returnValue = new Binding[this.bindingCount - deletedCount];
        int index = 0;
        int i2 = 0;
        while (i2 < this.bindingCount) {
            Binding binding2 = bindingsCopy[i2];
            if (binding2 != null) {
                returnValue[index++] = binding2;
            }
            ++i2;
        }
        return returnValue;
    }

    private final Binding resolveConflicts(Collection bindings, Map activeContextTree) {
        boolean conflict = false;
        Iterator bindingItr = bindings.iterator();
        Binding bestMatch = (Binding)bindingItr.next();
        while (bindingItr.hasNext()) {
            String bestContext;
            Binding current = (Binding)bindingItr.next();
            String currentSchemeId = current.getSchemeId();
            String bestSchemeId = bestMatch.getSchemeId();
            int compareTo = this.compareSchemes(bestSchemeId, currentSchemeId);
            if (compareTo > 0) {
                bestMatch = current;
                conflict = false;
            }
            if (compareTo != 0) continue;
            String currentContext = current.getContextId();
            if (!currentContext.equals(bestContext = bestMatch.getContextId())) {
                boolean goToNextBinding = false;
                String contextPointer = currentContext;
                while (contextPointer != null) {
                    if (contextPointer.equals(bestContext)) {
                        bestMatch = current;
                        conflict = false;
                        goToNextBinding = true;
                        break;
                    }
                    contextPointer = (String)activeContextTree.get(contextPointer);
                }
                contextPointer = bestContext;
                while (contextPointer != null) {
                    if (contextPointer.equals(currentContext)) {
                        goToNextBinding = true;
                        break;
                    }
                    contextPointer = (String)activeContextTree.get(contextPointer);
                }
                if (goToNextBinding) continue;
            }
            if (current.getType() > bestMatch.getType()) {
                bestMatch = current;
                conflict = false;
                continue;
            }
            if (bestMatch.getType() > current.getType()) continue;
            conflict = true;
        }
        if (conflict) {
            return null;
        }
        return bestMatch;
    }

    public final void schemeChanged(SchemeEvent schemeEvent) {
        if (schemeEvent.isDefinedChanged()) {
            Scheme scheme = schemeEvent.getScheme();
            boolean schemeIdAdded = scheme.isDefined();
            boolean activeSchemeChanged = false;
            if (schemeIdAdded) {
                this.definedHandleObjects.add(scheme);
            } else {
                this.definedHandleObjects.remove(scheme);
                if (this.activeScheme == scheme) {
                    this.activeScheme = null;
                    this.activeSchemeIds = null;
                    activeSchemeChanged = true;
                    this.clearSolution();
                }
            }
            if (this.isListenerAttached()) {
                this.fireBindingManagerChanged(new BindingManagerEvent(this, false, null, activeSchemeChanged, scheme, schemeIdAdded, false, false));
            }
        }
    }

    private final void setActiveBindings(Map activeBindings, Map activeBindingsByCommandId, Map prefixTable, Map conflicts) {
        this.activeBindings = activeBindings;
        Map previousBindingsByParameterizedCommand = this.activeBindingsByParameterizedCommand;
        this.activeBindingsByParameterizedCommand = activeBindingsByCommandId;
        this.prefixTable = prefixTable;
        this.currentConflicts = conflicts;
        this.fireBindingManagerChanged(new BindingManagerEvent(this, true, previousBindingsByParameterizedCommand, false, null, false, false, false));
    }

    public Map getCurrentConflicts() {
        if (this.currentConflicts == null) {
            return Collections.EMPTY_MAP;
        }
        return Collections.unmodifiableMap(this.currentConflicts);
    }

    public Collection getConflictsFor(TriggerSequence sequence) {
        return (Collection)this.getCurrentConflicts().get(sequence);
    }

    public final void setActiveScheme(Scheme scheme) throws NotDefinedException {
        if (scheme == null) {
            throw new NullPointerException("Cannot activate a null scheme");
        }
        if (scheme == null || !scheme.isDefined()) {
            throw new NotDefinedException("Cannot activate an undefined scheme. " + scheme.getId());
        }
        if (Util.equals(this.activeScheme, scheme)) {
            return;
        }
        this.activeScheme = scheme;
        this.activeSchemeIds = this.getSchemeIds(this.activeScheme.getId());
        this.clearSolution();
        this.fireBindingManagerChanged(new BindingManagerEvent(this, false, null, true, null, false, false, false));
    }

    public final void setBindings(Binding[] bindings) {
        if (bindings != null) {
            ArrayList<Binding> newList = new ArrayList<Binding>();
            int i = 0;
            while (i < bindings.length) {
                Binding binding = bindings[i];
                String p = binding.getPlatform();
                if (p == null) {
                    newList.add(binding);
                } else if (p.equals(this.platform)) {
                    newList.add(binding);
                }
                ++i;
            }
            bindings = newList.toArray(new Binding[newList.size()]);
        }
        if (Arrays.equals(this.bindings, bindings)) {
            return;
        }
        if (bindings == null || bindings.length == 0) {
            this.bindings = null;
            this.bindingCount = 0;
        } else {
            this.bindings = bindings;
            this.bindingCount = bindings.length;
        }
        this.clearCache();
    }

    public final void setLocale(String locale) {
        if (locale == null) {
            throw new NullPointerException("The locale cannot be null");
        }
        if (!Util.equals(this.locale, locale)) {
            this.locale = locale;
            this.locales = BindingManager.expand(locale, LOCALE_SEPARATOR);
            this.clearSolution();
            this.fireBindingManagerChanged(new BindingManagerEvent(this, false, null, false, null, false, true, false));
        }
    }

    public final void setPlatform(String platform) {
        if (platform == null) {
            throw new NullPointerException("The platform cannot be null");
        }
        if (!Util.equals(this.platform, platform)) {
            this.platform = platform;
            this.platforms = BindingManager.expand(platform, "");
            this.clearSolution();
            this.fireBindingManagerChanged(new BindingManagerEvent(this, false, null, false, null, false, false, true));
        }
    }
}

