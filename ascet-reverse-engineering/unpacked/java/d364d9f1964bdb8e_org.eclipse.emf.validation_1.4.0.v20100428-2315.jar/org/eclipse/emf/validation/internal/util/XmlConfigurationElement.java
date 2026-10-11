/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IContributor
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.osgi.framework.Bundle
 */
package org.eclipse.emf.validation.internal.util;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.util.XmlConfig;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class XmlConfigurationElement
implements IConfigurationElement {
    private final String myName;
    private final IExtension extension;
    private final URL baseUrl;
    private String value;
    private final Map<String, String> attributes;
    private final List<IConfigurationElement> children = new ArrayList<IConfigurationElement>();
    private Object parent;

    XmlConfigurationElement(String name, IExtension extension, URL baseUrl) {
        this(name, new HashMap<String, String>(), extension, baseUrl);
    }

    XmlConfigurationElement(String name, Map<String, String> attributes, IExtension extension, URL baseUrl) {
        this.myName = name;
        this.extension = extension;
        this.baseUrl = baseUrl;
        this.attributes = attributes;
    }

    public Object createExecutableExtension(String propertyName) throws CoreException {
        String message = EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.XML_CREATE_EXTENSION_MSG, this.getName());
        CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 90, message, null));
        Trace.throwing(this.getClass(), "createExecutableExtension", ce);
        throw ce;
    }

    public String getAttribute(String name) {
        return this.attributes.get(name);
    }

    public String getAttributeAsIs(String name) {
        return this.getAttribute(name);
    }

    public String[] getAttributeNames() {
        return this.attributes.keySet().toArray(new String[this.attributes.size()]);
    }

    protected final void putAttribute(String name, String newValue) {
        this.attributes.put(name, newValue);
    }

    public IConfigurationElement[] getChildren() {
        return this.children.toArray(new IConfigurationElement[this.children.size()]);
    }

    public IConfigurationElement[] getChildren(String name) {
        ArrayList<IConfigurationElement> result = new ArrayList<IConfigurationElement>(this.children.size());
        for (IConfigurationElement next : this.children) {
            if (!next.getName().equals(name)) continue;
            result.add(next);
        }
        return result.toArray(new IConfigurationElement[result.size()]);
    }

    protected final void addChild(IConfigurationElement child) {
        this.children.add(child);
        if (child instanceof XmlConfigurationElement) {
            ((XmlConfigurationElement)child).setParent(this);
        }
    }

    protected final void removeChild(IConfigurationElement child) {
        this.children.remove(child);
    }

    public IExtension getDeclaringExtension() {
        return this.extension;
    }

    public String getName() {
        return this.myName;
    }

    public String getValue() {
        return this.value;
    }

    protected final void setValue(String value) {
        this.value = value;
    }

    public String getValueAsIs() {
        return this.getValue();
    }

    public void flatten(IConfigurationElement[] constraintses) throws CoreException {
        IConfigurationElement[] iConfigurationElementArray = constraintses;
        int n = constraintses.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            this.flatten(element);
            this.removeChild(element);
            ++n2;
        }
    }

    private void flatten(IConfigurationElement constraints) throws CoreException {
        IConfigurationElement flattened = XmlConfig.parseConstraintsWithIncludes(constraints);
        this.absorb(flattened);
    }

    public void include(IConfigurationElement[] includes) throws CoreException {
        IConfigurationElement[] iConfigurationElementArray = includes;
        int n = includes.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            this.include(element);
            ++n2;
        }
    }

    private void include(IConfigurationElement include) throws CoreException {
        URL url;
        String path = include.getAttribute("path");
        assert (path != null);
        Bundle contributor = Platform.getBundle((String)this.getDeclaringExtension().getNamespaceIdentifier());
        if (this.getBaseUrl() == null || path.startsWith("/")) {
            url = FileLocator.find((Bundle)contributor, (IPath)new Path(path), null);
        } else {
            try {
                url = new URL(this.getBaseUrl(), path);
            }
            catch (MalformedURLException malformedURLException) {
                url = null;
            }
        }
        if (url == null) {
            String message = EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.XML_INCLUDE_FILE_MSG, contributor.getSymbolicName(), path);
            CoreException ce = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 90, message, null));
            Trace.throwing(this.getClass(), "createExecutableExtension", ce);
            throw ce;
        }
        try {
            IConfigurationElement includedConstraints = XmlConfig.load(this, url);
            this.absorb(includedConstraints);
        }
        catch (CoreException e) {
            Trace.catching(this.getClass(), "include", e);
            Log.log(e.getStatus());
        }
    }

    private void absorb(IConfigurationElement includedConstraints) {
        IConfigurationElement[] elements;
        IConfigurationElement[] iConfigurationElementArray = elements = includedConstraints.getChildren();
        int n = elements.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            this.addChild(element);
            ++n2;
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer(64);
        result.append("ConfigurationElement[");
        result.append(this.getName());
        result.append(": ");
        result.append(this.attributes);
        result.append("]");
        return result.toString();
    }

    public URL getBaseUrl() {
        return this.baseUrl;
    }

    public String getFileName() {
        return this.getBaseUrl().getFile();
    }

    public Object getParent() {
        return this.parent;
    }

    void setParent(Object parent) {
        this.parent = parent;
    }

    public String getNamespace() throws InvalidRegistryObjectException {
        return null;
    }

    public boolean isValid() {
        return false;
    }

    public String getNamespaceIdentifier() throws InvalidRegistryObjectException {
        return null;
    }

    public IContributor getContributor() throws InvalidRegistryObjectException {
        return null;
    }

    public String getAttribute(String attrName, String locale) throws InvalidRegistryObjectException {
        return null;
    }

    public String getValue(String locale) throws InvalidRegistryObjectException {
        return null;
    }
}

