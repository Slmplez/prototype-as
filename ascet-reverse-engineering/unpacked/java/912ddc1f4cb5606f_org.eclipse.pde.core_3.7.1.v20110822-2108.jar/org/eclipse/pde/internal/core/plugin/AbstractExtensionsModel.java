/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.osgi.service.resolver.BundleDescription
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IExtensionsModel;
import org.eclipse.pde.core.plugin.IExtensionsModelFactory;
import org.eclipse.pde.core.plugin.IPluginAttribute;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.internal.core.AbstractNLModel;
import org.eclipse.pde.internal.core.PDEState;
import org.eclipse.pde.internal.core.plugin.Extensions;
import org.eclipse.pde.internal.core.plugin.PluginAttribute;
import org.eclipse.pde.internal.core.plugin.PluginElement;
import org.eclipse.pde.internal.core.plugin.PluginExtension;
import org.eclipse.pde.internal.core.plugin.PluginExtensionPoint;
import org.eclipse.pde.internal.core.plugin.PluginHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public abstract class AbstractExtensionsModel
extends AbstractNLModel
implements IExtensionsModel,
IExtensionsModelFactory {
    private static final long serialVersionUID = 1L;
    protected Extensions fExtensions;

    public IExtensionsModelFactory getFactory() {
        return this;
    }

    protected Extensions createExtensions() {
        Extensions extensions = new Extensions(!this.isEditable());
        extensions.setModel(this);
        return extensions;
    }

    public IExtensions getExtensions() {
        return this.getExtensions(true);
    }

    public IExtensions getExtensions(boolean createIfMissing) {
        if (this.fExtensions == null && createIfMissing) {
            this.fExtensions = this.createExtensions();
            this.setLoaded(true);
        }
        return this.fExtensions;
    }

    public abstract URL getNLLookupLocation();

    protected URL[] getNLLookupLocations() {
        URL[] locations = new URL[]{this.getNLLookupLocation()};
        return locations;
    }

    public synchronized void load(InputStream stream, boolean outOfSync) throws CoreException {
        if (this.fExtensions == null) {
            this.fExtensions = this.createExtensions();
            this.fExtensions.setModel(this);
        }
        this.fExtensions.reset();
        this.setLoaded(false);
        try {
            SAXParser parser = this.getSaxParser();
            PluginHandler handler = new PluginHandler(true);
            parser.parse(stream, (DefaultHandler)handler);
            this.fExtensions.load(handler.getSchemaVersion());
            this.setLoaded(true);
            if (!outOfSync) {
                this.updateTimeStamp();
            }
        }
        catch (ParserConfigurationException parserConfigurationException) {
        }
        catch (SAXException sAXException) {
        }
        catch (FactoryConfigurationError factoryConfigurationError) {
        }
        catch (IOException iOException) {}
    }

    public void load(BundleDescription desc, PDEState state) {
        this.fExtensions = this.createExtensions();
        this.fExtensions.setModel(this);
        this.updateTimeStamp();
        this.setLoaded(true);
    }

    public void reload(InputStream stream, boolean outOfSync) throws CoreException {
        this.load(stream, outOfSync);
        this.fireModelChanged(new ModelChangedEvent(this, 99, new Object[]{this.fExtensions}, null));
    }

    protected abstract void updateTimeStamp();

    public IPluginAttribute createAttribute(IPluginElement element) {
        PluginAttribute attribute = new PluginAttribute();
        attribute.setModel(this);
        attribute.setParent(element);
        return attribute;
    }

    public IPluginElement createElement(IPluginObject parent) {
        PluginElement element = new PluginElement();
        element.setModel(this);
        element.setParent(parent);
        return element;
    }

    public IPluginExtension createExtension() {
        PluginExtension extension = new PluginExtension();
        extension.setParent(this.getExtensions());
        extension.setModel(this);
        return extension;
    }

    public IPluginExtensionPoint createExtensionPoint() {
        PluginExtensionPoint extensionPoint = new PluginExtensionPoint();
        extensionPoint.setModel(this);
        extensionPoint.setParent(this.getExtensions());
        return extensionPoint;
    }

    public boolean isValid() {
        if (!this.isLoaded()) {
            return false;
        }
        if (this.fExtensions == null) {
            return false;
        }
        return this.fExtensions.isValid();
    }
}

