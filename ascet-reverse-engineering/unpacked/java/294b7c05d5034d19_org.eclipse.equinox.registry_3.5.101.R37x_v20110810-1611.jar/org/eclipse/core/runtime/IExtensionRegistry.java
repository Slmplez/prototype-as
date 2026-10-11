/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.InputStream;
import java.util.ResourceBundle;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IRegistryEventListener;

public interface IExtensionRegistry {
    public void addRegistryChangeListener(IRegistryChangeListener var1, String var2);

    public void addRegistryChangeListener(IRegistryChangeListener var1);

    public IConfigurationElement[] getConfigurationElementsFor(String var1);

    public IConfigurationElement[] getConfigurationElementsFor(String var1, String var2);

    public IConfigurationElement[] getConfigurationElementsFor(String var1, String var2, String var3);

    public IExtension getExtension(String var1);

    public IExtension getExtension(String var1, String var2);

    public IExtension getExtension(String var1, String var2, String var3);

    public IExtensionPoint getExtensionPoint(String var1);

    public IExtensionPoint getExtensionPoint(String var1, String var2);

    public IExtensionPoint[] getExtensionPoints();

    public IExtensionPoint[] getExtensionPoints(String var1);

    public IExtensionPoint[] getExtensionPoints(IContributor var1);

    public IExtension[] getExtensions(String var1);

    public IExtension[] getExtensions(IContributor var1);

    public String[] getNamespaces();

    public void removeRegistryChangeListener(IRegistryChangeListener var1);

    public boolean addContribution(InputStream var1, IContributor var2, boolean var3, String var4, ResourceBundle var5, Object var6) throws IllegalArgumentException;

    public boolean removeExtension(IExtension var1, Object var2) throws IllegalArgumentException;

    public boolean removeExtensionPoint(IExtensionPoint var1, Object var2) throws IllegalArgumentException;

    public void stop(Object var1) throws IllegalArgumentException;

    public void addListener(IRegistryEventListener var1);

    public void addListener(IRegistryEventListener var1, String var2);

    public void removeListener(IRegistryEventListener var1);

    public boolean isMultiLanguage();
}

