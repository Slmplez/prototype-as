/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.keys.IKeyLookup
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.bindings.keys.ParseException
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.SWT
 */
package org.eclipse.ui.internal.keys;

import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.SWT;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.services.PreferencePersistence;
import org.eclipse.ui.views.IViewRegistry;

public final class BindingPersistence
extends PreferencePersistence {
    private static final boolean DEBUG = Policy.DEBUG_KEY_BINDINGS;
    private static final int INDEX_ACTIVE_SCHEME = 0;
    private static final int INDEX_BINDING_DEFINITIONS = 1;
    private static final int INDEX_SCHEME_DEFINITIONS = 2;
    private static final String LEGACY_DEFAULT_SCOPE = "org.eclipse.ui.globalScope";
    private static final Map r2_1KeysByName = new HashMap();
    private final BindingManager bindingManager;
    private final ICommandService commandService;

    static {
        IKeyLookup lookup = KeyLookupFactory.getDefault();
        r2_1KeysByName.put("BACKSPACE", lookup.formalKeyLookupInteger("BACKSPACE"));
        r2_1KeysByName.put("TAB", lookup.formalKeyLookupInteger("TAB"));
        r2_1KeysByName.put("RETURN", lookup.formalKeyLookupInteger("RETURN"));
        r2_1KeysByName.put("ENTER", lookup.formalKeyLookupInteger("ENTER"));
        r2_1KeysByName.put("ESCAPE", lookup.formalKeyLookupInteger("ESCAPE"));
        r2_1KeysByName.put("ESC", lookup.formalKeyLookupInteger("ESC"));
        r2_1KeysByName.put("DELETE", lookup.formalKeyLookupInteger("DELETE"));
        r2_1KeysByName.put("SPACE", lookup.formalKeyLookupInteger("SPACE"));
        r2_1KeysByName.put("ARROW_UP", lookup.formalKeyLookupInteger("ARROW_UP"));
        r2_1KeysByName.put("ARROW_DOWN", lookup.formalKeyLookupInteger("ARROW_DOWN"));
        r2_1KeysByName.put("ARROW_LEFT", lookup.formalKeyLookupInteger("ARROW_LEFT"));
        r2_1KeysByName.put("ARROW_RIGHT", lookup.formalKeyLookupInteger("ARROW_RIGHT"));
        r2_1KeysByName.put("PAGE_UP", lookup.formalKeyLookupInteger("PAGE_UP"));
        r2_1KeysByName.put("PAGE_DOWN", lookup.formalKeyLookupInteger("PAGE_DOWN"));
        r2_1KeysByName.put("HOME", lookup.formalKeyLookupInteger("HOME"));
        r2_1KeysByName.put("END", lookup.formalKeyLookupInteger("END"));
        r2_1KeysByName.put("INSERT", lookup.formalKeyLookupInteger("INSERT"));
        r2_1KeysByName.put("F1", lookup.formalKeyLookupInteger("F1"));
        r2_1KeysByName.put("F2", lookup.formalKeyLookupInteger("F2"));
        r2_1KeysByName.put("F3", lookup.formalKeyLookupInteger("F3"));
        r2_1KeysByName.put("F4", lookup.formalKeyLookupInteger("F4"));
        r2_1KeysByName.put("F5", lookup.formalKeyLookupInteger("F5"));
        r2_1KeysByName.put("F6", lookup.formalKeyLookupInteger("F6"));
        r2_1KeysByName.put("F7", lookup.formalKeyLookupInteger("F7"));
        r2_1KeysByName.put("F8", lookup.formalKeyLookupInteger("F8"));
        r2_1KeysByName.put("F9", lookup.formalKeyLookupInteger("F9"));
        r2_1KeysByName.put("F10", lookup.formalKeyLookupInteger("F10"));
        r2_1KeysByName.put("F11", lookup.formalKeyLookupInteger("F11"));
        r2_1KeysByName.put("F12", lookup.formalKeyLookupInteger("F12"));
        r2_1KeysByName.put("F13", lookup.formalKeyLookupInteger("F13"));
        r2_1KeysByName.put("F14", lookup.formalKeyLookupInteger("F14"));
        r2_1KeysByName.put("F15", lookup.formalKeyLookupInteger("F15"));
        r2_1KeysByName.put("F16", lookup.formalKeyLookupInteger("F16"));
        r2_1KeysByName.put("F17", lookup.formalKeyLookupInteger("F17"));
        r2_1KeysByName.put("F18", lookup.formalKeyLookupInteger("F18"));
        r2_1KeysByName.put("F19", lookup.formalKeyLookupInteger("F19"));
        r2_1KeysByName.put("F20", lookup.formalKeyLookupInteger("F20"));
    }

    private static final KeySequence convert2_1Sequence(int[] r21KeySequence) {
        int r21KeySequenceLength = r21KeySequence.length;
        KeyStroke[] keyStrokes = new KeyStroke[r21KeySequenceLength];
        int i = 0;
        while (i < r21KeySequenceLength) {
            keyStrokes[i] = BindingPersistence.convert2_1Stroke(r21KeySequence[i]);
            ++i;
        }
        return KeySequence.getInstance((KeyStroke[])keyStrokes);
    }

    private static final KeyStroke convert2_1Stroke(int r21Stroke) {
        return SWTKeySupport.convertAcceleratorToKeyStroke((int)r21Stroke);
    }

    static final String getDefaultSchemeId() {
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        return store.getDefaultString("KEY_CONFIGURATION_ID");
    }

    private static final int[] parse2_1Sequence(String string) {
        StringTokenizer stringTokenizer = new StringTokenizer(string);
        int length = stringTokenizer.countTokens();
        int[] strokes = new int[length];
        int i = 0;
        while (i < length) {
            strokes[i] = BindingPersistence.parse2_1Stroke(stringTokenizer.nextToken());
            ++i;
        }
        return strokes;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static final int parse2_1Stroke(String string) {
        StringTokenizer stringTokenizer = new StringTokenizer(string, "+", true);
        int size = stringTokenizer.countTokens();
        String[] tokens = new String[size];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            tokens[i] = stringTokenizer.nextToken();
            ++i;
        }
        int value = 0;
        if (size % 2 != 1) return value;
        String token = tokens[size - 1];
        Integer integer = (Integer)r2_1KeysByName.get(token.toUpperCase());
        if (integer != null) {
            value = integer;
        } else if (token.length() == 1) {
            value = token.toUpperCase().charAt(0);
        }
        if (value == 0) return value;
        int i2 = 0;
        while (i2 < size - 1) {
            token = tokens[i2];
            if (i2 % 2 == 0) {
                if (token.equalsIgnoreCase("CTRL")) {
                    if ((value & 0x40000) != 0) {
                        return 0;
                    }
                    value |= 0x40000;
                } else if (token.equalsIgnoreCase("ALT")) {
                    if ((value & 0x10000) != 0) {
                        return 0;
                    }
                    value |= 0x10000;
                } else if (token.equalsIgnoreCase("SHIFT")) {
                    if ((value & 0x20000) != 0) {
                        return 0;
                    }
                    value |= 0x20000;
                } else {
                    if (!token.equalsIgnoreCase("COMMAND")) return 0;
                    if ((value & 0x400000) != 0) {
                        return 0;
                    }
                    value |= 0x400000;
                }
            } else if (!"+".equals(token)) {
                return 0;
            }
            ++i2;
        }
        return value;
    }

    private static final void readActiveScheme(IConfigurationElement[] configurationElements, int configurationElementCount, IMemento preferences, BindingManager bindingManager) {
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        String defaultActiveSchemeId = store.getDefaultString("KEY_CONFIGURATION_ID");
        String preferenceActiveSchemeId = store.getString("KEY_CONFIGURATION_ID");
        if (preferenceActiveSchemeId != null && !preferenceActiveSchemeId.equals(defaultActiveSchemeId)) {
            try {
                bindingManager.setActiveScheme(bindingManager.getScheme(preferenceActiveSchemeId));
                return;
            }
            catch (NotDefinedException notDefinedException) {}
        }
        if (preferences != null) {
            IMemento[] preferenceMementos = preferences.getChildren("activeKeyConfiguration");
            int preferenceMementoCount = preferenceMementos.length;
            int i = preferenceMementoCount - 1;
            while (i >= 0) {
                IMemento memento = preferenceMementos[i];
                String id = memento.getString("keyConfigurationId");
                if (id != null) {
                    try {
                        bindingManager.setActiveScheme(bindingManager.getScheme(id));
                        return;
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                --i;
            }
        }
        if (defaultActiveSchemeId != null && defaultActiveSchemeId.length() > 0 && !defaultActiveSchemeId.equals("org.eclipse.ui.defaultAcceleratorConfiguration")) {
            try {
                bindingManager.setActiveScheme(bindingManager.getScheme(defaultActiveSchemeId));
                return;
            }
            catch (NotDefinedException notDefinedException) {}
        }
        int i = configurationElementCount - 1;
        while (i >= 0) {
            IConfigurationElement configurationElement = configurationElements[i];
            String id = configurationElement.getAttribute("keyConfigurationId");
            if (id != null) {
                try {
                    bindingManager.setActiveScheme(bindingManager.getScheme(id));
                    return;
                }
                catch (NotDefinedException notDefinedException) {}
            }
            if ((id = configurationElement.getAttribute("value")) != null) {
                try {
                    bindingManager.setActiveScheme(bindingManager.getScheme(id));
                    return;
                }
                catch (NotDefinedException notDefinedException) {}
            }
            --i;
        }
        try {
            bindingManager.setActiveScheme(bindingManager.getScheme("org.eclipse.ui.defaultAcceleratorConfiguration"));
        }
        catch (NotDefinedException notDefinedException) {
            throw new Error("The default default active scheme id is not defined.");
        }
    }

    /*
     * Unable to fully structure code
     */
    private static final void readBindingsFromPreferences(IMemento preferences, BindingManager bindingManager, ICommandService commandService) {
        block18: {
            warningsToLog = new ArrayList<E>(1);
            if (preferences == null) break block18;
            viewRegistry = PlatformUI.getWorkbench().getViewRegistry();
            preferenceMementos = preferences.getChildren("keyBinding");
            preferenceMementoCount = preferenceMementos.length;
            i = preferenceMementoCount - 1;
            while (i >= 0) {
                block17: {
                    block19: {
                        memento = preferenceMementos[i];
                        commandId = BindingPersistence.readOptional(memento, "commandId");
                        if (commandId == null) {
                            commandId = BindingPersistence.readOptional(memento, "command");
                        }
                        viewParameter = null;
                        if (commandId != null) {
                            if (viewRegistry.find(commandId) == null) {
                                command = commandService.getCommand(commandId);
                            } else {
                                viewParameter = commandId;
                                command = commandService.getCommand("org.eclipse.ui.views.showView");
                            }
                        } else {
                            command = null;
                        }
                        schemeId = BindingPersistence.readOptional(memento, "keyConfigurationId");
                        if (schemeId == null && (schemeId = BindingPersistence.readRequired(memento, "configuration", warningsToLog, "Key bindings need a scheme or key configuration")) == null) break block17;
                        contextId = BindingPersistence.readOptional(memento, "contextId");
                        if (contextId == null) {
                            contextId = BindingPersistence.readOptional(memento, "scope");
                        }
                        if ("org.eclipse.ui.globalScope".equals(contextId)) {
                            contextId = null;
                        }
                        if (contextId == null) {
                            contextId = "org.eclipse.ui.contexts.window";
                        }
                        keySequenceText = BindingPersistence.readOptional(memento, "keySequence");
                        keySequence = null;
                        if (keySequenceText != null) break block19;
                        keySequenceText = BindingPersistence.readRequired(memento, "string", warningsToLog, "Key bindings need a key sequence or string");
                        if (keySequenceText == null) break block17;
                        keySequence = BindingPersistence.convert2_1Sequence(BindingPersistence.parse2_1Sequence(keySequenceText));
                        ** GOTO lbl-1000
                    }
                    try {
                        keySequence = KeySequence.getInstance((String)keySequenceText);
                    }
                    catch (ParseException v0) {
                        BindingPersistence.addWarning(warningsToLog, "Could not parse", null, commandId, "keySequence", keySequenceText);
                        break block17;
                    }
                    if (keySequence.isEmpty() || !keySequence.isComplete()) {
                        BindingPersistence.addWarning(warningsToLog, "Key bindings cannot use an empty or incomplete key sequence", null, commandId, "keySequence", keySequence.toString());
                    } else lbl-1000:
                    // 2 sources

                    {
                        locale = BindingPersistence.readOptional(memento, "locale");
                        platform = BindingPersistence.readOptional(memento, "platform");
                        if (command == null) {
                            parameterizedCommand = null;
                        } else if (viewParameter != null) {
                            parms = new HashMap<String, String>();
                            parms.put("org.eclipse.ui.views.showView.viewId", viewParameter);
                            parameterizedCommand = ParameterizedCommand.generateCommand((Command)command, parms);
                        } else {
                            parameterizedCommand = BindingPersistence.readParameters(memento, warningsToLog, command);
                        }
                        binding = new KeyBinding(keySequence, parameterizedCommand, schemeId, contextId, locale, platform, null, 1);
                        bindingManager.addBinding((Binding)binding);
                    }
                }
                --i;
            }
        }
        BindingPersistence.logWarnings(warningsToLog, "Warnings while parsing the key bindings from the preference store");
    }

    private static final void readBindingsFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount, BindingManager bindingManager, ICommandService commandService) {
        ArrayList bindings = new ArrayList(configurationElementCount);
        ArrayList warningsToLog = new ArrayList(1);
        HashSet<KeyBinding> cocoaTempList = new HashSet<KeyBinding>();
        IViewRegistry viewRegistry = PlatformUI.getWorkbench().getViewRegistry();
        IConfigurationElement[] sequenceModifiers = new IConfigurationElement[]{};
        if (configurationElementCount > 0) {
            sequenceModifiers = BindingPersistence.getSequenceModifierElements(configurationElements[0]);
        }
        int i = 0;
        while (i < configurationElementCount) {
            block18: {
                String schemeId;
                Command command;
                String viewParameter;
                String commandId;
                IConfigurationElement configurationElement;
                block17: {
                    block15: {
                        block16: {
                            configurationElement = configurationElements[i];
                            if (i > 0 && !configurationElement.getDeclaringExtension().equals((Object)configurationElements[i - 1].getDeclaringExtension())) {
                                sequenceModifiers = BindingPersistence.getSequenceModifierElements(configurationElement);
                            }
                            commandId = BindingPersistence.readCommandId(configurationElement);
                            viewParameter = null;
                            if (commandId == null) break block15;
                            if (viewRegistry.find(commandId) != null) break block16;
                            command = commandService.getCommand(commandId);
                            if (command.isDefined()) break block17;
                            BindingPersistence.addWarning(warningsToLog, "Cannot bind to an undefined command", configurationElement, commandId);
                            break block18;
                        }
                        viewParameter = commandId;
                        command = commandService.getCommand("org.eclipse.ui.views.showView");
                        if (DEBUG) {
                            Tracing.printTrace((String)"BINDINGS", (String)("Command '" + commandId + "' should be migrated to " + "org.eclipse.ui.views.showView"));
                        }
                        if (command.isDefined()) break block17;
                        BindingPersistence.addWarning(warningsToLog, "Cannot bind to an undefined command", configurationElement, commandId);
                        break block18;
                    }
                    command = null;
                }
                if (!BindingPersistence.isEmpty(schemeId = BindingPersistence.readSchemeId(configurationElement, warningsToLog, commandId))) {
                    String contextId = BindingPersistence.readContextId(configurationElement);
                    String keySequenceText = BindingPersistence.readKeySequenceText(configurationElement);
                    if (BindingPersistence.isEmpty(keySequenceText)) {
                        BindingPersistence.addWarning(warningsToLog, "Defining a key binding with no key sequence has no effect", configurationElement, commandId);
                    } else {
                        KeySequence keySequence = BindingPersistence.readKeySequence(configurationElement, warningsToLog, commandId, keySequenceText);
                        if (keySequence != null) {
                            String locale = BindingPersistence.readNonEmptyAttribute(configurationElement, "locale");
                            String platform = BindingPersistence.readNonEmptyAttribute(configurationElement, "platform");
                            ParameterizedCommand parameterizedCommand = BindingPersistence.readParameterizedCommand(warningsToLog, configurationElement, viewParameter, command);
                            List modifiedBindings = BindingPersistence.applyModifiers(keySequence, keySequenceText, platform, sequenceModifiers, parameterizedCommand, schemeId, contextId, locale, warningsToLog);
                            KeyBinding binding = (KeyBinding)modifiedBindings.get(0);
                            if (modifiedBindings.size() > 1) {
                                int j = 1;
                                while (j < modifiedBindings.size()) {
                                    bindings.add(modifiedBindings.get(j));
                                    ++j;
                                }
                            }
                            if ("cocoa".equals(platform)) {
                                cocoaTempList.add(binding);
                            } else if ("carbon".equals(platform)) {
                                bindings.add(binding);
                                cocoaTempList.add(new KeyBinding(keySequence, parameterizedCommand, schemeId, contextId, locale, "cocoa", null, 0));
                            } else {
                                bindings.add(binding);
                            }
                        }
                    }
                }
            }
            ++i;
        }
        if (cocoaTempList.size() > 0) {
            bindings.addAll(cocoaTempList);
        }
        Binding[] bindingArray = bindings.toArray(new Binding[bindings.size()]);
        bindingManager.setBindings(bindingArray);
        BindingPersistence.logWarnings(warningsToLog, "Warnings while parsing the key bindings from the 'org.eclipse.ui.commands' extension point");
    }

    private static List applyModifiers(KeySequence keySequence, String keySequenceText, String platform, IConfigurationElement[] sequenceModifiers, ParameterizedCommand parameterizedCommand, String schemeId, String contextId, String locale, List warningsToLog) {
        ArrayList<KeyBinding> bindings = new ArrayList<KeyBinding>();
        int i = 0;
        while (i < sequenceModifiers.length) {
            IConfigurationElement sequenceModifier = sequenceModifiers[i];
            String findSequence = sequenceModifier.getAttribute("find");
            if (keySequenceText.startsWith(findSequence)) {
                String replaceSequence = sequenceModifier.getAttribute("replace");
                String modifiedSequence = String.valueOf(replaceSequence) + keySequenceText.substring(findSequence.length());
                String platformsString = sequenceModifier.getAttribute("platforms");
                String[] platforms = BindingPersistence.parseCommaSeparatedString(platformsString);
                try {
                    if (platform == null) {
                        BindingPersistence.addGenericBindings(keySequence, parameterizedCommand, schemeId, contextId, locale, bindings, modifiedSequence, platforms);
                        break;
                    }
                    BindingPersistence.getBindingForPlatform(keySequence, platform, parameterizedCommand, schemeId, contextId, locale, bindings, modifiedSequence, platforms);
                }
                catch (ParseException parseException) {
                    bindings.clear();
                    BindingPersistence.addWarning(warningsToLog, "Cannot create modified sequence for key binding", sequenceModifier, parameterizedCommand.getId(), "replace", replaceSequence);
                }
                break;
            }
            ++i;
        }
        if (bindings.size() == 0) {
            KeyBinding binding = new KeyBinding(keySequence, parameterizedCommand, schemeId, contextId, locale, platform, null, 0);
            bindings.add(binding);
        }
        return bindings;
    }

    private static void getBindingForPlatform(KeySequence keySequence, String platform, ParameterizedCommand parameterizedCommand, String schemeId, String contextId, String locale, List bindings, String modifiedSequence, String[] platforms) throws ParseException {
        KeyBinding newBinding;
        int j = 0;
        while (j < platforms.length) {
            if (platforms[j].equals(SWT.getPlatform())) {
                newBinding = new KeyBinding(KeySequence.getInstance((String)modifiedSequence), parameterizedCommand, schemeId, contextId, locale, platforms[j], null, 0);
                bindings.add(newBinding);
                break;
            }
            ++j;
        }
        if (j == platforms.length) {
            newBinding = new KeyBinding(keySequence, parameterizedCommand, schemeId, contextId, locale, null, null, 0);
            bindings.add(newBinding);
        }
    }

    private static void addGenericBindings(KeySequence keySequence, ParameterizedCommand parameterizedCommand, String schemeId, String contextId, String locale, List bindings, String modifiedSequence, String[] platforms) throws ParseException {
        KeyBinding originalBinding = new KeyBinding(keySequence, parameterizedCommand, schemeId, contextId, locale, null, null, 0);
        bindings.add(originalBinding);
        String platform = SWT.getPlatform();
        boolean modifierExists = false;
        int i = 0;
        while (i < platforms.length) {
            if (platforms[i].equals(platform)) {
                modifierExists = true;
                break;
            }
            ++i;
        }
        if (modifierExists) {
            KeyBinding newBinding = new KeyBinding(KeySequence.getInstance((String)modifiedSequence), parameterizedCommand, schemeId, contextId, locale, SWT.getPlatform(), null, 0);
            KeyBinding deleteBinding = new KeyBinding(keySequence, null, schemeId, contextId, locale, SWT.getPlatform(), null, 0);
            bindings.add(newBinding);
            bindings.add(deleteBinding);
        }
    }

    private static IConfigurationElement[] getSequenceModifierElements(IConfigurationElement configurationElement) {
        IExtension extension = configurationElement.getDeclaringExtension();
        IConfigurationElement[] configurationElements = extension.getConfigurationElements();
        ArrayList<IConfigurationElement> modifierElements = new ArrayList<IConfigurationElement>();
        int i = 0;
        while (i < configurationElements.length) {
            IConfigurationElement anElement = configurationElements[i];
            if ("sequenceModifier".equals(anElement.getName())) {
                modifierElements.add(anElement);
            }
            ++i;
        }
        return modifierElements.toArray(new IConfigurationElement[modifierElements.size()]);
    }

    public static String[] parseCommaSeparatedString(String commaSeparatedString) {
        StringTokenizer tokenizer = new StringTokenizer(commaSeparatedString, ", ");
        int count = tokenizer.countTokens();
        String[] tokens = new String[count];
        int i = 0;
        while (i < tokens.length) {
            tokens[i] = tokenizer.nextToken();
            ++i;
        }
        return tokens;
    }

    private static String readKeySequenceText(IConfigurationElement configurationElement) {
        String keySequenceText = configurationElement.getAttribute("sequence");
        if (BindingPersistence.isEmpty(keySequenceText)) {
            keySequenceText = configurationElement.getAttribute("keySequence");
        }
        if (BindingPersistence.isEmpty(keySequenceText)) {
            keySequenceText = configurationElement.getAttribute("string");
        }
        return keySequenceText;
    }

    private static KeySequence readKeySequence(IConfigurationElement configurationElement, List warningsToLog, String commandId, String keySequenceText) {
        KeySequence keySequence = null;
        if (keySequenceText.equals(configurationElement.getAttribute("string"))) {
            try {
                keySequence = BindingPersistence.convert2_1Sequence(BindingPersistence.parse2_1Sequence(keySequenceText));
            }
            catch (IllegalArgumentException illegalArgumentException) {
                BindingPersistence.addWarning(warningsToLog, "Could not parse key sequence", configurationElement, commandId, "keySequence", keySequenceText);
                return null;
            }
        }
        try {
            keySequence = KeySequence.getInstance((String)keySequenceText);
        }
        catch (ParseException parseException) {
            BindingPersistence.addWarning(warningsToLog, "Could not parse key sequence", configurationElement, commandId, "keySequence", keySequenceText);
            return null;
        }
        if (keySequence.isEmpty() || !keySequence.isComplete()) {
            BindingPersistence.addWarning(warningsToLog, "Key bindings should not have an empty or incomplete key sequence", configurationElement, commandId, "keySequence", keySequence.toString());
            return null;
        }
        return keySequence;
    }

    private static ParameterizedCommand readParameterizedCommand(List warningsToLog, IConfigurationElement configurationElement, String viewParameter, Command command) {
        ParameterizedCommand parameterizedCommand;
        if (command == null) {
            parameterizedCommand = null;
        } else if (viewParameter != null) {
            HashMap<String, String> parms = new HashMap<String, String>();
            parms.put("org.eclipse.ui.views.showView.viewId", viewParameter);
            parameterizedCommand = ParameterizedCommand.generateCommand((Command)command, parms);
        } else {
            parameterizedCommand = BindingPersistence.readParameters(configurationElement, warningsToLog, command);
        }
        return parameterizedCommand;
    }

    private static String readNonEmptyAttribute(IConfigurationElement configurationElement, String attribute) {
        String attributeValue = configurationElement.getAttribute(attribute);
        if (attributeValue != null && attributeValue.length() == 0) {
            attributeValue = null;
        }
        return attributeValue;
    }

    private static String readContextId(IConfigurationElement configurationElement) {
        String contextId = configurationElement.getAttribute("contextId");
        if (LEGACY_DEFAULT_SCOPE.equals(contextId)) {
            contextId = null;
        } else if ((contextId == null || contextId.length() == 0) && LEGACY_DEFAULT_SCOPE.equals(contextId = configurationElement.getAttribute("scope"))) {
            contextId = null;
        }
        if (contextId == null || contextId.length() == 0) {
            contextId = "org.eclipse.ui.contexts.window";
        }
        return contextId;
    }

    private static String readSchemeId(IConfigurationElement configurationElement, List warningsToLog, String commandId) {
        String schemeId = configurationElement.getAttribute("schemeId");
        if (!(schemeId != null && schemeId.length() != 0 || (schemeId = configurationElement.getAttribute("keyConfigurationId")) != null && schemeId.length() != 0 || (schemeId = configurationElement.getAttribute("configuration")) != null && schemeId.length() != 0)) {
            BindingPersistence.addWarning(warningsToLog, "Key bindings need a scheme", configurationElement, commandId);
        }
        return schemeId;
    }

    private static String readCommandId(IConfigurationElement configurationElement) {
        String commandId = configurationElement.getAttribute("commandId");
        if (commandId == null || commandId.length() == 0) {
            commandId = configurationElement.getAttribute("command");
        }
        if (commandId != null && commandId.length() == 0) {
            commandId = null;
        }
        return commandId;
    }

    private static boolean isEmpty(String string) {
        return string == null || string.length() == 0;
    }

    private static final void readSchemesFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount, BindingManager bindingManager) {
        Scheme[] handleObjects = bindingManager.getDefinedSchemes();
        if (handleObjects != null) {
            int i = 0;
            while (i < handleObjects.length) {
                handleObjects[i].undefine();
                ++i;
            }
        }
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String name;
            IConfigurationElement configurationElement = configurationElements[i];
            String id = BindingPersistence.readRequired(configurationElement, "id", warningsToLog, "Schemes need an id");
            if (id != null && (name = BindingPersistence.readRequired(configurationElement, "name", warningsToLog, "A scheme needs a name", id)) != null) {
                String description = BindingPersistence.readOptional(configurationElement, "description");
                String parentId = configurationElement.getAttribute("parentId");
                if (parentId != null && parentId.length() == 0 && (parentId = configurationElement.getAttribute("parent")) != null && parentId.length() == 0) {
                    parentId = null;
                }
                Scheme scheme = bindingManager.getScheme(id);
                scheme.define(name, description, parentId);
            }
            ++i;
        }
        BindingPersistence.logWarnings(warningsToLog, "Warnings while parsing the key bindings from the 'org.eclipse.ui.bindings', 'org.eclipse.ui.acceleratorConfigurations' and 'org.eclipse.ui.commands' extension point");
    }

    static final void write(Scheme activeScheme, Binding[] bindings) throws IOException {
        if (DEBUG) {
            Tracing.printTrace((String)"BINDINGS", (String)("Persisting active scheme '" + activeScheme.getId() + '\''));
            Tracing.printTrace((String)"BINDINGS", (String)"Persisting bindings");
        }
        BindingPersistence.writeActiveScheme(activeScheme);
        XMLMemento xmlMemento = XMLMemento.createWriteRoot("org.eclipse.ui.commands");
        if (activeScheme != null) {
            BindingPersistence.writeActiveSchemeToPreferences(xmlMemento, activeScheme);
        }
        if (bindings != null) {
            int bindingsLength = bindings.length;
            int i = 0;
            while (i < bindingsLength) {
                Binding binding = bindings[i];
                if (binding.getType() == 1) {
                    BindingPersistence.writeBindingToPreferences(xmlMemento, binding);
                }
                ++i;
            }
        }
        IPreferenceStore preferenceStore = WorkbenchPlugin.getDefault().getPreferenceStore();
        StringWriter writer = new StringWriter();
        try {
            xmlMemento.save(writer);
            preferenceStore.setValue("org.eclipse.ui.commands", ((Object)writer).toString());
        }
        finally {
            ((Writer)writer).close();
        }
    }

    private static final void writeActiveScheme(Scheme scheme) {
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        String schemeId = scheme == null ? null : scheme.getId();
        String defaultSchemeId = store.getDefaultString("KEY_CONFIGURATION_ID");
        if (defaultSchemeId == null ? scheme != null : !defaultSchemeId.equals(schemeId)) {
            store.setValue("KEY_CONFIGURATION_ID", scheme.getId());
        } else {
            store.setToDefault("KEY_CONFIGURATION_ID");
        }
    }

    private static final void writeActiveSchemeToPreferences(IMemento memento, Scheme scheme) {
        IPreferenceStore store = PlatformUI.getPreferenceStore();
        String schemeId = scheme.getId();
        String defaultSchemeId = store.getDefaultString("KEY_CONFIGURATION_ID");
        if (defaultSchemeId == null ? schemeId != null : !defaultSchemeId.equals(schemeId)) {
            IMemento child = memento.createChild("activeKeyConfiguration");
            child.putString("keyConfigurationId", schemeId);
        }
    }

    private static final void writeBindingToPreferences(IMemento parent, Binding binding) {
        IMemento element = parent.createChild("keyBinding");
        element.putString("contextId", binding.getContextId());
        ParameterizedCommand parameterizedCommand = binding.getParameterizedCommand();
        String commandId = parameterizedCommand == null ? null : parameterizedCommand.getId();
        element.putString("commandId", commandId);
        element.putString("keyConfigurationId", binding.getSchemeId());
        element.putString("keySequence", binding.getTriggerSequence().toString());
        element.putString("locale", binding.getLocale());
        element.putString("platform", binding.getPlatform());
        if (parameterizedCommand != null) {
            Map parameterizations = parameterizedCommand.getParameterMap();
            Iterator parameterizationItr = parameterizations.entrySet().iterator();
            while (parameterizationItr.hasNext()) {
                Map.Entry entry = parameterizationItr.next();
                String id = (String)entry.getKey();
                String value = (String)entry.getValue();
                IMemento parameterElement = element.createChild("parameter");
                parameterElement.putString("id", id);
                parameterElement.putString("value", value);
            }
        }
    }

    BindingPersistence(BindingManager bindingManager, ICommandService commandService) {
        this.bindingManager = bindingManager;
        this.commandService = commandService;
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        return false;
    }

    public boolean bindingsNeedUpdating(IRegistryChangeEvent event) {
        IExtensionDelta[] actionDefinitionDeltas;
        IExtensionDelta[] contextDeltas;
        IExtensionDelta[] acceleratorScopeDeltas;
        IExtensionDelta[] commandDeltas;
        IExtensionDelta[] bindingDeltas;
        IExtensionDelta[] acceleratorConfigurationDeltas = event.getExtensionDeltas("org.eclipse.ui", "acceleratorConfigurations");
        return acceleratorConfigurationDeltas.length != 0 || (bindingDeltas = event.getExtensionDeltas("org.eclipse.ui", "bindings")).length != 0 || (commandDeltas = event.getExtensionDeltas("org.eclipse.ui", "commands")).length != 0 || (acceleratorScopeDeltas = event.getExtensionDeltas("org.eclipse.ui", "acceleratorScopes")).length != 0 || (contextDeltas = event.getExtensionDeltas("org.eclipse.ui", "contexts")).length != 0 || (actionDefinitionDeltas = event.getExtensionDeltas("org.eclipse.ui", "actionDefinitions")).length != 0;
    }

    protected final boolean isChangeImportant(PropertyChangeEvent event) {
        return "org.eclipse.ui.commands".equals(event.getProperty());
    }

    protected final void read() {
        super.read();
        this.reRead();
    }

    public void reRead() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        int activeSchemeElementCount = 0;
        int bindingDefinitionCount = 0;
        int schemeDefinitionCount = 0;
        IConfigurationElement[][] indexedConfigurationElements = new IConfigurationElement[3][];
        IConfigurationElement[] bindingsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.bindings");
        int i = 0;
        while (i < bindingsExtensionPoint.length) {
            IConfigurationElement configurationElement = bindingsExtensionPoint[i];
            String name = configurationElement.getName();
            if ("key".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 1, bindingDefinitionCount++);
            } else if ("scheme".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 2, schemeDefinitionCount++);
            }
            ++i;
        }
        IConfigurationElement[] commandsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.commands");
        int i2 = 0;
        while (i2 < commandsExtensionPoint.length) {
            IConfigurationElement configurationElement = commandsExtensionPoint[i2];
            String name = configurationElement.getName();
            if ("keyBinding".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 1, bindingDefinitionCount++);
            } else if ("keyConfiguration".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 2, schemeDefinitionCount++);
            } else if ("activeKeyConfiguration".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, activeSchemeElementCount++);
            }
            ++i2;
        }
        IConfigurationElement[] acceleratorConfigurationsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.acceleratorConfigurations");
        int i3 = 0;
        while (i3 < acceleratorConfigurationsExtensionPoint.length) {
            IConfigurationElement configurationElement = acceleratorConfigurationsExtensionPoint[i3];
            String name = configurationElement.getName();
            if ("acceleratorConfiguration".equals(name)) {
                BindingPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 2, schemeDefinitionCount++);
            }
            ++i3;
        }
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        String preferenceString = store.getString("org.eclipse.ui.commands");
        XMLMemento preferenceMemento = null;
        if (preferenceString != null && preferenceString.length() > 0) {
            StringReader reader = new StringReader(preferenceString);
            try {
                preferenceMemento = XMLMemento.createReadRoot(reader);
            }
            catch (WorkbenchException workbenchException) {}
        }
        BindingPersistence.readSchemesFromRegistry(indexedConfigurationElements[2], schemeDefinitionCount, this.bindingManager);
        BindingPersistence.readActiveScheme(indexedConfigurationElements[0], activeSchemeElementCount, preferenceMemento, this.bindingManager);
        BindingPersistence.readBindingsFromRegistry(indexedConfigurationElements[1], bindingDefinitionCount, this.bindingManager, this.commandService);
        BindingPersistence.readBindingsFromPreferences(preferenceMemento, this.bindingManager, this.commandService);
    }
}

