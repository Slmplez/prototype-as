/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.WrappedException
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.edit.command.AddCommand
 *  org.eclipse.emf.edit.command.CommandParameter
 *  org.eclipse.emf.edit.command.RemoveCommand
 *  org.eclipse.emf.edit.command.SetCommand
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.ExtendedPlatform
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.eclipse.sphinx.platform.util.StatusUtil
 *  org.osgi.framework.Bundle
 */
package org.eclipse.sphinx.emf.edit;

import java.lang.reflect.Constructor;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.WrappedException;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.EcorePerformanceStats;
import org.eclipse.sphinx.emf.internal.properties.BasicPropertyType;
import org.eclipse.sphinx.emf.internal.properties.IPropertyType;
import org.eclipse.sphinx.emf.messages.EMFMessages;
import org.eclipse.sphinx.platform.util.ExtendedPlatform;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.eclipse.sphinx.platform.util.StatusUtil;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CustomCommandRegistry {
    public static final CustomCommandRegistry INSTANCE = new CustomCommandRegistry();
    private static final String NODE_PROPERTY = "property";
    private static final String ATTR_CLASS = "class";
    private static final String ATTR_OWNER_TYPE = "ownerType";
    private static final String ATTR_FEATURE_NAME = "featureName";
    private static final String ATTR_VALUE_TYPE = "valueType";
    private static final String EXTP_CUSTOM_COMMANDS = "customCommands";
    private static final String NODE_CUSTOM_COMMAND = "customCommand";
    protected Map<Class<?>, Map<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>>> customCommandTypes = new HashMap();

    private CustomCommandRegistry() {
        this.readCustomCommandContributions();
    }

    protected String getFeatureName(Object feature) {
        return feature instanceof EStructuralFeature ? ((EStructuralFeature)feature).getName() : null;
    }

    protected Class<?> getValueType(Collection<?> collection) {
        if (collection != null) {
            Class<?> clazz;
            Object next = collection.iterator().next();
            Class<?> clazz2 = clazz = collection.size() > 0 ? next.getClass() : null;
            if (clazz != null) {
                Class<?>[] interfaces = clazz.getInterfaces();
                if (interfaces.length > 0) {
                    return interfaces[0];
                }
                if (next instanceof FeatureMap.Entry) {
                    Object unwrappedEntry = AdapterFactoryEditingDomain.unwrap(next);
                    return unwrappedEntry.getClass();
                }
                return clazz;
            }
        }
        return null;
    }

    public Command createCustomCommand(EditingDomain domain, CommandParameter commandParameter, Class<? extends Command> commandClass) {
        BasicPropertyType propertyType = new BasicPropertyType(this.getFeatureName(commandParameter.getFeature()), this.getValueType(commandParameter.getCollection()));
        Class<? extends Command> commandType = this.getCustomCommandType(commandParameter.getOwner().getClass(), propertyType, commandClass);
        if (commandType != null) {
            try {
                if (commandClass == AddCommand.class) {
                    Constructor<? extends Command> constructor = commandType.getConstructor(EditingDomain.class, EObject.class, EReference.class, Collection.class, Integer.class);
                    return constructor.newInstance(domain, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getCollection(), commandParameter.getIndex());
                }
                if (commandClass == RemoveCommand.class) {
                    Constructor<? extends Command> constructor = commandType.getConstructor(EditingDomain.class, EObject.class, EStructuralFeature.class, Collection.class);
                    return constructor.newInstance(domain, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getCollection());
                }
                if (commandClass == SetCommand.class) {
                    Constructor<? extends Command> constructor = commandType.getConstructor(EditingDomain.class, EObject.class, EStructuralFeature.class, Object.class, Integer.class);
                    return constructor.newInstance(domain, commandParameter.getOwner(), commandParameter.getFeature(), commandParameter.getCollection(), Integer.class);
                }
            }
            catch (Exception ex) {
                throw new WrappedException(ex);
            }
        }
        return null;
    }

    protected final Class<? extends Command> getCustomCommandType(Class<?> ownerType, IPropertyType propertyType, Class<? extends Command> commandClass) {
        Assert.isNotNull(ownerType);
        Assert.isNotNull((Object)propertyType);
        Assert.isNotNull(commandClass);
        if (this.customCommandTypes.containsKey(ownerType)) {
            Map<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>> commandTypesForOwnerType = this.customCommandTypes.get(ownerType);
            if (commandTypesForOwnerType.containsKey(propertyType)) {
                Map<Class<? extends Command>, Class<? extends Command>> findCommandTypesForOwnerSuperType;
                Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType = commandTypesForOwnerType.get(propertyType);
                Class<? extends Command> cmdClass = commandTypesForPropertyType.get(commandClass);
                if (cmdClass == null && (findCommandTypesForOwnerSuperType = this.findCommandTypesForOwnerSuperType(ownerType, propertyType)) != null) {
                    commandTypesForOwnerType.put(propertyType, findCommandTypesForOwnerSuperType);
                    return findCommandTypesForOwnerSuperType.get(commandClass);
                }
                return cmdClass;
            }
            Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType = this.findCommandTypesForOwnerSuperType(ownerType, propertyType);
            if (commandTypesForPropertyType == null) {
                commandTypesForPropertyType = new HashMap<Class<? extends Command>, Class<? extends Command>>();
            }
            commandTypesForOwnerType.put(propertyType, commandTypesForPropertyType);
            return commandTypesForPropertyType.get(commandClass);
        }
        HashMap<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>> commandTypesForOwnerType = new HashMap<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>>();
        this.customCommandTypes.put(ownerType, commandTypesForOwnerType);
        Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType = this.findCommandTypesForOwnerSuperType(ownerType, propertyType);
        if (commandTypesForPropertyType == null) {
            commandTypesForPropertyType = new HashMap<Class<? extends Command>, Class<? extends Command>>();
        }
        commandTypesForOwnerType.put(propertyType, commandTypesForPropertyType);
        return commandTypesForPropertyType.get(commandClass);
    }

    private Map<Class<? extends Command>, Class<? extends Command>> findCommandTypesForOwnerSuperType(Class<?> ownerType, IPropertyType propertyType) {
        Class<?> clazz;
        Assert.isNotNull(ownerType);
        Assert.isNotNull((Object)propertyType);
        HashSet superTypes = new HashSet();
        if (!ownerType.isInterface() && (clazz = ownerType.getSuperclass()) != null) {
            Map<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>> commandTypesForOwnerType;
            Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType;
            superTypes.add(clazz);
            if (this.customCommandTypes.containsKey(clazz) && (commandTypesForPropertyType = this.getCommandTypesForPropertyType(commandTypesForOwnerType = this.customCommandTypes.get(clazz), propertyType)) != null) {
                return commandTypesForPropertyType;
            }
        }
        Class<?>[] classArray = ownerType.getInterfaces();
        int commandTypesForPropertyType = classArray.length;
        int n = 0;
        while (n < commandTypesForPropertyType) {
            Map<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>> commandTypesForOwnerType;
            Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType2;
            Class<?> clazz2 = classArray[n];
            superTypes.add(clazz2);
            if (this.customCommandTypes.containsKey(clazz2) && (commandTypesForPropertyType2 = this.getCommandTypesForPropertyType(commandTypesForOwnerType = this.customCommandTypes.get(clazz2), propertyType)) != null) {
                return commandTypesForPropertyType2;
            }
            ++n;
        }
        for (Class clazz3 : superTypes) {
            Map<Class<? extends Command>, Class<? extends Command>> commandTypesForPropertyType3 = this.findCommandTypesForOwnerSuperType(clazz3, propertyType);
            if (commandTypesForPropertyType3 == null) continue;
            return commandTypesForPropertyType3;
        }
        return null;
    }

    private Map<Class<? extends Command>, Class<? extends Command>> getCommandTypesForPropertyType(Map<IPropertyType, Map<Class<? extends Command>, Class<? extends Command>>> commandTypesForOwnerType, IPropertyType propertyType) {
        Assert.isNotNull(commandTypesForOwnerType);
        Assert.isNotNull((Object)propertyType);
        if (commandTypesForOwnerType.containsKey(propertyType)) {
            return commandTypesForOwnerType.get(propertyType);
        }
        BasicPropertyType propertyTypeIgnoringValueType = new BasicPropertyType(propertyType.getFeatureName(), null);
        if (commandTypesForOwnerType.containsKey(propertyTypeIgnoringValueType)) {
            return commandTypesForOwnerType.get(propertyTypeIgnoringValueType);
        }
        return null;
    }

    private void readCustomCommandContributions() {
        IConfigurationElement[] contributions;
        EcorePerformanceStats.INSTANCE.startEvent(EcorePerformanceStats.EcoreEvent.EVENT_READ_CONTRIBUTIONS_CUSTOM_COMMANDS, this.getClass().getSimpleName());
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IConfigurationElement[] iConfigurationElementArray = contributions = registry.getConfigurationElementsFor(Activator.getPlugin().getSymbolicName(), EXTP_CUSTOM_COMMANDS);
        int n = contributions.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement contribution = iConfigurationElementArray[n2];
            try {
                this.readCustomCommandContribution(contribution);
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
            ++n2;
        }
        EcorePerformanceStats.INSTANCE.endEvent(EcorePerformanceStats.EcoreEvent.EVENT_READ_CONTRIBUTIONS_CUSTOM_COMMANDS, this.getClass().getSimpleName());
        EcorePerformanceStats.INSTANCE.closeAndLogCurrentContext();
    }

    protected void readCustomCommandContribution(IConfigurationElement contribution) throws ClassNotFoundException, CoreException, NoSuchFieldException {
        if (NODE_CUSTOM_COMMAND.equals(contribution.getName())) {
            String contributionClassName;
            Bundle contributorBundle = ExtendedPlatform.loadContributorBundle((IConfigurationElement)contribution);
            Class clazz = contributorBundle.loadClass(contributionClassName = contribution.getAttribute(ATTR_CLASS));
            if (Command.class.isAssignableFrom(clazz)) {
                IConfigurationElement[] childElements;
                Class customCommandClass = clazz;
                IConfigurationElement[] iConfigurationElementArray = childElements = contribution.getChildren(NODE_PROPERTY);
                int n = childElements.length;
                int n2 = 0;
                while (n2 < n) {
                    Map<Object, Object> commandTypesForOwnerType;
                    IConfigurationElement childElement = iConfigurationElementArray[n2];
                    String ownerTypeName = childElement.getAttribute(ATTR_OWNER_TYPE);
                    Class ownerType = contributorBundle.loadClass(ownerTypeName);
                    String featureName = childElement.getAttribute(ATTR_FEATURE_NAME);
                    String valueTypeName = childElement.getAttribute(ATTR_VALUE_TYPE);
                    Class valueType = null;
                    if (valueTypeName != null) {
                        valueType = contributorBundle.loadClass(valueTypeName);
                    }
                    BasicPropertyType propertyType = new BasicPropertyType(featureName, valueType);
                    if (this.customCommandTypes.containsKey(ownerType)) {
                        commandTypesForOwnerType = this.customCommandTypes.get(ownerType);
                    } else {
                        commandTypesForOwnerType = new HashMap();
                        this.customCommandTypes.put(ownerType, commandTypesForOwnerType);
                    }
                    HashMap<Class<SetCommand>, Class> commandTypesForPropertyType = (HashMap<Class<SetCommand>, Class>)commandTypesForOwnerType.get(propertyType);
                    if (commandTypesForPropertyType == null) {
                        commandTypesForPropertyType = new HashMap<Class<SetCommand>, Class>();
                        commandTypesForOwnerType.put(propertyType, commandTypesForPropertyType);
                    }
                    if (AddCommand.class.isAssignableFrom(customCommandClass)) {
                        commandTypesForPropertyType.put(AddCommand.class, customCommandClass);
                    } else if (RemoveCommand.class.isAssignableFrom(customCommandClass)) {
                        commandTypesForPropertyType.put(RemoveCommand.class, customCommandClass);
                    } else if (SetCommand.class.isAssignableFrom(customCommandClass)) {
                        commandTypesForPropertyType.put(SetCommand.class, customCommandClass);
                    }
                    ++n2;
                }
            } else {
                Object[] args = new String[]{ATTR_CLASS, NODE_CUSTOM_COMMAND, contribution.getDeclaringExtension().getExtensionPointUniqueIdentifier(), contribution.getContributor().getName(), Command.class.getName()};
                String msg = NLS.bind((String)EMFMessages.error_unexpectedImplementationOfElementAttributeInContribution, (Object[])args);
                IStatus status = StatusUtil.createErrorStatus((Plugin)Activator.getPlugin(), (Object)new RuntimeException(msg));
                throw new CoreException(status);
            }
        }
    }
}

