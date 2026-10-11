/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.expressions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.expressions.IPropertyTester;
import org.eclipse.core.internal.expressions.ExpressionMessages;
import org.eclipse.core.internal.expressions.ExpressionPlugin;
import org.eclipse.core.internal.expressions.ExpressionStatus;
import org.eclipse.core.internal.expressions.Expressions;
import org.eclipse.core.internal.expressions.Messages;
import org.eclipse.core.internal.expressions.Property;
import org.eclipse.core.internal.expressions.PropertyCache;
import org.eclipse.core.internal.expressions.PropertyTesterDescriptor;
import org.eclipse.core.internal.expressions.TypeExtension;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;

public class TypeExtensionManager
implements IRegistryChangeListener {
    private String fExtensionPoint;
    private static boolean DEBUG = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.core.expressions/debug/TypeExtensionManager"));
    private static final String TYPE = "type";
    private static final IPropertyTester[] EMPTY_PROPERTY_TESTER_ARRAY = new IPropertyTester[0];
    private static final IPropertyTester NULL_PROPERTY_TESTER = new IPropertyTester(){

        public boolean handles(String namespace, String property) {
            return false;
        }

        public boolean isInstantiated() {
            return true;
        }

        public boolean isDeclaringPluginActive() {
            return true;
        }

        public IPropertyTester instantiate() throws CoreException {
            return this;
        }

        public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
            return false;
        }
    };
    private Map fTypeExtensionMap;
    private Map fConfigurationElementMap;
    private PropertyCache fPropertyCache;

    public TypeExtensionManager(String extensionPoint) {
        Assert.isNotNull((Object)extensionPoint);
        this.fExtensionPoint = extensionPoint;
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this);
        this.initializeCaches();
    }

    public Property getProperty(Object receiver, String namespace, String method) throws CoreException {
        return this.getProperty(receiver, namespace, method, false);
    }

    public synchronized Property getProperty(Object receiver, String namespace, String method, boolean forcePluginActivation) throws CoreException {
        TypeExtension extension;
        IPropertyTester extender;
        Class<?> clazz;
        Property result;
        Property cached;
        long start = 0L;
        if (Expressions.TRACING) {
            start = System.currentTimeMillis();
        }
        if ((cached = this.fPropertyCache.get(result = new Property(clazz = receiver instanceof Class ? (Class<?>)receiver : receiver.getClass(), namespace, method))) != null) {
            if (cached.isValidCacheEntry(forcePluginActivation)) {
                if (Expressions.TRACING) {
                    System.out.println("[Type Extension] - method " + clazz.getName() + "#" + method + " found in cache: " + (System.currentTimeMillis() - start) + " ms.");
                }
                return cached;
            }
            this.fPropertyCache.remove(cached);
        }
        if ((extender = (extension = this.get(clazz)).findTypeExtender(this, namespace, method, receiver instanceof Class, forcePluginActivation)) == TypeExtension.CONTINUE || extender == null) {
            Throwable t = null;
            if (DEBUG) {
                t = new Throwable("forcePluginActivation: " + forcePluginActivation + ", receiver: " + receiver).fillInStackTrace();
            }
            throw new CoreException((IStatus)new ExpressionStatus(201, Messages.format(ExpressionMessages.TypeExtender_unknownMethod, new String[]{String.valueOf(namespace) + '.' + method, clazz.toString()}), t));
        }
        result.setPropertyTester(extender);
        this.fPropertyCache.put(result);
        if (Expressions.TRACING) {
            System.out.println("[Type Extension] - method " + clazz.getName() + "#" + method + " not found in cache: " + (System.currentTimeMillis() - start) + " ms.");
        }
        return result;
    }

    TypeExtension get(Class clazz) {
        TypeExtension result = (TypeExtension)this.fTypeExtensionMap.get(clazz);
        if (result == null) {
            result = new TypeExtension(clazz);
            this.fTypeExtensionMap.put(clazz, result);
        }
        return result;
    }

    IPropertyTester[] loadTesters(Class type) {
        String typeName;
        List typeConfigs;
        if (this.fConfigurationElementMap == null) {
            this.fConfigurationElementMap = new HashMap();
            IExtensionRegistry registry = Platform.getExtensionRegistry();
            IConfigurationElement[] ces = registry.getConfigurationElementsFor(ExpressionPlugin.getPluginId(), this.fExtensionPoint);
            int i = 0;
            while (i < ces.length) {
                IConfigurationElement config = ces[i];
                String typeAttr = config.getAttribute(TYPE);
                ArrayList<IConfigurationElement> typeConfigs2 = (ArrayList<IConfigurationElement>)this.fConfigurationElementMap.get(typeAttr);
                if (typeConfigs2 == null) {
                    typeConfigs2 = new ArrayList<IConfigurationElement>();
                    this.fConfigurationElementMap.put(typeAttr, typeConfigs2);
                }
                typeConfigs2.add(config);
                ++i;
            }
        }
        if ((typeConfigs = (List)this.fConfigurationElementMap.get(typeName = type.getName())) == null) {
            return EMPTY_PROPERTY_TESTER_ARRAY;
        }
        IPropertyTester[] result = new IPropertyTester[typeConfigs.size()];
        int i = 0;
        while (i < result.length) {
            IConfigurationElement config = (IConfigurationElement)typeConfigs.get(i);
            try {
                result[i] = new PropertyTesterDescriptor(config);
            }
            catch (CoreException e) {
                ExpressionPlugin.getDefault().getLog().log(e.getStatus());
                result[i] = NULL_PROPERTY_TESTER;
            }
            ++i;
        }
        this.fConfigurationElementMap.remove(typeName);
        return result;
    }

    public void registryChanged(IRegistryChangeEvent event) {
        IExtensionDelta[] deltas = event.getExtensionDeltas(ExpressionPlugin.getPluginId(), this.fExtensionPoint);
        if (deltas.length > 0) {
            this.initializeCaches();
        }
    }

    private synchronized void initializeCaches() {
        this.fTypeExtensionMap = new HashMap();
        this.fConfigurationElementMap = null;
        this.fPropertyCache = new PropertyCache(1000);
    }
}

