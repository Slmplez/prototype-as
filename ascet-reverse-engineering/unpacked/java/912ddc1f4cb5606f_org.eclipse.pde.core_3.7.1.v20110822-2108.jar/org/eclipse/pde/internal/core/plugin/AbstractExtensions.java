/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IExtensions;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.plugin.PluginExtension;
import org.eclipse.pde.internal.core.plugin.PluginExtensionPoint;
import org.eclipse.pde.internal.core.plugin.PluginHandler;
import org.eclipse.pde.internal.core.plugin.PluginObject;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public abstract class AbstractExtensions
extends PluginObject
implements IExtensions {
    private static final long serialVersionUID = 1L;
    protected String fSchemaVersion;
    protected List fExtensions = null;
    protected List fExtensionPoints = null;
    boolean fCache = false;

    public AbstractExtensions(boolean readOnly) {
        this.fCache = !readOnly;
    }

    public void add(IPluginExtension extension) throws CoreException {
        this.ensureModelEditable();
        this.getExtensionsList().add(extension);
        ((PluginExtension)extension).setInTheModel(true);
        ((PluginExtension)extension).setParent(this);
        this.fireStructureChanged(extension, 1);
    }

    public void add(IPluginExtensionPoint extensionPoint) throws CoreException {
        this.ensureModelEditable();
        this.getExtensionPointsList().add(extensionPoint);
        ((PluginExtensionPoint)extensionPoint).setInTheModel(true);
        ((PluginExtensionPoint)extensionPoint).setParent(this);
        this.fireStructureChanged(extensionPoint, 1);
    }

    public IPluginExtensionPoint[] getExtensionPoints() {
        List extPoints = this.getExtensionPointsList();
        return extPoints.toArray(new IPluginExtensionPoint[extPoints.size()]);
    }

    public IPluginExtension[] getExtensions() {
        List extensions = this.getExtensionsList();
        return extensions.toArray(new IPluginExtension[extensions.size()]);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("extension_order")) {
            this.swap((IPluginExtension)oldValue, (IPluginExtension)newValue);
            return;
        }
        super.restoreProperty(name, oldValue, newValue);
    }

    public void load(IExtensions srcExtensions) {
        this.addArrayToVector(this.getExtensionsList(), srcExtensions.getExtensions());
        this.addArrayToVector(this.getExtensionPointsList(), srcExtensions.getExtensionPoints());
    }

    protected void addArrayToVector(List vector, Object[] array) {
        int i = 0;
        while (i < array.length) {
            Object obj = array[i];
            if (obj instanceof PluginObject) {
                ((PluginObject)obj).setParent(this);
            }
            vector.add(obj);
            ++i;
        }
    }

    public void remove(IPluginExtension extension) throws CoreException {
        this.ensureModelEditable();
        this.getExtensionsList().remove(extension);
        ((PluginExtension)extension).setInTheModel(false);
        this.fireStructureChanged(extension, 2);
    }

    public void remove(IPluginExtensionPoint extensionPoint) throws CoreException {
        this.ensureModelEditable();
        this.getExtensionPointsList().remove(extensionPoint);
        ((PluginExtensionPoint)extensionPoint).setInTheModel(false);
        this.fireStructureChanged(extensionPoint, 2);
    }

    public void reset() {
        this.resetExtensions();
    }

    public void resetExtensions() {
        this.fExtensions = null;
        this.fExtensionPoints = null;
    }

    public int getExtensionCount() {
        return this.getExtensionsList().size();
    }

    public int getIndexOf(IPluginExtension e) {
        return this.getExtensionsList().indexOf(e);
    }

    public void swap(IPluginExtension e1, IPluginExtension e2) throws CoreException {
        this.ensureModelEditable();
        List extensions = this.getExtensionsList();
        int index1 = extensions.indexOf(e1);
        int index2 = extensions.indexOf(e2);
        if (index1 == -1 || index2 == -1) {
            this.throwCoreException(PDECoreMessages.AbstractExtensions_extensionsNotFoundException);
        }
        extensions.set(index2, e1);
        extensions.set(index2, e2);
        this.firePropertyChanged(this, "extension_order", e1, e2);
    }

    protected void writeChildren(String indent, String tag, Object[] children, PrintWriter writer) {
        writer.println(String.valueOf(indent) + "<" + tag + ">");
        int i = 0;
        while (i < children.length) {
            IPluginObject obj = (IPluginObject)children[i];
            obj.write(String.valueOf(indent) + "   ", writer);
            ++i;
        }
        writer.println(String.valueOf(indent) + "</" + tag + ">");
    }

    protected boolean hasRequiredAttributes() {
        List extensions = this.getExtensionsList();
        int size = extensions.size();
        int i = 0;
        while (i < size) {
            IPluginExtension extension = (IPluginExtension)extensions.get(i);
            if (!extension.isValid()) {
                return false;
            }
            ++i;
        }
        List extPoints = this.getExtensionPointsList();
        size = extPoints.size();
        int i2 = 0;
        while (i2 < size) {
            IPluginExtensionPoint expoint = (IPluginExtensionPoint)extPoints.get(i2);
            if (!expoint.isValid()) {
                return false;
            }
            ++i2;
        }
        return true;
    }

    public String getSchemaVersion() {
        IResource res;
        ISharedPluginModel model;
        if (this.fSchemaVersion == null && (model = this.getModel()) != null && (res = model.getUnderlyingResource()) != null && res instanceof IFile) {
            try {
                BufferedInputStream stream = new BufferedInputStream(((IFile)res).getContents(true));
                PluginHandler handler = new PluginHandler(true);
                SAXParserFactory.newInstance().newSAXParser().parse((InputStream)stream, (DefaultHandler)handler);
                return handler.getSchemaVersion();
            }
            catch (CoreException coreException) {
            }
            catch (SAXException sAXException) {
            }
            catch (IOException iOException) {
            }
            catch (ParserConfigurationException parserConfigurationException) {}
        }
        return this.fSchemaVersion;
    }

    public void setSchemaVersion(String schemaVersion) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fSchemaVersion;
        this.fSchemaVersion = schemaVersion;
        this.firePropertyChanged("schema-version", oldValue, schemaVersion);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected List getExtensionsList() {
        if (this.fExtensions != null) return this.fExtensions;
        IPluginBase base = this.getPluginBase();
        if (base == null) return Collections.EMPTY_LIST;
        if (!this.fCache) return Arrays.asList(PDECore.getDefault().getExtensionsRegistry().findExtensionsForPlugin(base.getPluginModel()));
        this.fExtensions = new ArrayList<IPluginExtension>(Arrays.asList(PDECore.getDefault().getExtensionsRegistry().findExtensionsForPlugin(base.getPluginModel())));
        return this.fExtensions;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected List getExtensionPointsList() {
        if (this.fExtensionPoints != null) return this.fExtensionPoints;
        IPluginBase base = this.getPluginBase();
        if (base == null) return Collections.EMPTY_LIST;
        if (!this.fCache) return Arrays.asList(PDECore.getDefault().getExtensionsRegistry().findExtensionPointsForPlugin(base.getPluginModel()));
        this.fExtensionPoints = new ArrayList<IPluginExtensionPoint>(Arrays.asList(PDECore.getDefault().getExtensionsRegistry().findExtensionPointsForPlugin(base.getPluginModel())));
        return this.fExtensionPoints;
    }

    protected void processChild(Node child) {
        String name = child.getNodeName();
        if (this.fExtensions == null) {
            this.fExtensions = new ArrayList();
        }
        if (this.fExtensionPoints == null) {
            this.fExtensionPoints = new ArrayList();
        }
        if (name.equals("extension")) {
            PluginExtension extension = new PluginExtension();
            extension.setModel(this.getModel());
            extension.setParent(this);
            this.fExtensions.add(extension);
            extension.setInTheModel(true);
            extension.load(child);
        } else if (name.equals("extension-point")) {
            PluginExtensionPoint point = new PluginExtensionPoint();
            point.setModel(this.getModel());
            point.setParent(this);
            point.setInTheModel(true);
            this.fExtensionPoints.add(point);
            point.load(child);
        }
    }
}

