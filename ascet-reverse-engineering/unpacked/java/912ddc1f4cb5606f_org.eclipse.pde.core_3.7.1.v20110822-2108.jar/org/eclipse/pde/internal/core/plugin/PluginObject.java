/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.pde.internal.core.plugin;

import java.io.PrintWriter;
import java.io.Serializable;
import java.util.Vector;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.pde.core.IModelChangeProvider;
import org.eclipse.pde.core.IModelChangedEvent;
import org.eclipse.pde.core.ISourceObject;
import org.eclipse.pde.core.ModelChangedEvent;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.ISharedPluginModel;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.ibundle.IBundlePluginModelProvider;
import org.eclipse.pde.internal.core.plugin.IWritableDelimiter;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.w3c.dom.Comment;
import org.w3c.dom.Node;

public abstract class PluginObject
extends PlatformObject
implements IPluginObject,
ISourceObject,
Serializable,
IWritableDelimiter {
    private static final long serialVersionUID = 1L;
    protected String fName;
    private transient String fTranslatedName;
    private transient IPluginObject fParent;
    private transient ISharedPluginModel fModel;
    private transient boolean fInTheModel;
    protected int fStartLine = 1;
    static /* synthetic */ Class class$0;

    public boolean isValid() {
        return true;
    }

    protected void ensureModelEditable() throws CoreException {
        if (!this.fModel.isEditable()) {
            this.throwCoreException(PDECoreMessages.PluginObject_readOnlyChange);
        }
    }

    public void setInTheModel(boolean value) {
        this.fInTheModel = value;
    }

    public boolean isInTheModel() {
        return this.fInTheModel;
    }

    protected void firePropertyChanged(String property, Object oldValue, Object newValue) {
        this.firePropertyChanged(this, property, oldValue, newValue);
    }

    protected void firePropertyChanged(IPluginObject object, String property, Object oldValue, Object newValue) {
        if (this.fModel.isEditable()) {
            ISharedPluginModel provider = this.fModel;
            provider.fireModelObjectChanged(object, property, oldValue, newValue);
        }
    }

    protected void fireStructureChanged(IPluginObject child, int changeType) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            ModelChangedEvent e = new ModelChangedEvent(model, changeType, new Object[]{child}, null);
            this.fireModelChanged(e);
        }
    }

    protected void fireStructureChanged(IPluginObject[] children, int changeType) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            ModelChangedEvent e = new ModelChangedEvent(model, changeType, children, null);
            this.fireModelChanged(e);
        }
    }

    protected void fireModelChanged(IModelChangedEvent e) {
        ISharedPluginModel model = this.getModel();
        if (model.isEditable() && model instanceof IModelChangeProvider) {
            IModelChangeProvider provider = model;
            provider.fireModelChanged(e);
        }
    }

    public ISharedPluginModel getModel() {
        return this.fModel;
    }

    public IPluginModelBase getPluginModel() {
        if (this.fModel instanceof IBundlePluginModelProvider) {
            return ((IBundlePluginModelProvider)((Object)this.fModel)).getBundlePluginModel();
        }
        return this.fModel instanceof IPluginModelBase ? (IPluginModelBase)this.fModel : null;
    }

    public String getName() {
        return this.fName;
    }

    public String getTranslatedName() {
        if (this.fTranslatedName != null && !this.fModel.isEditable()) {
            return this.fTranslatedName;
        }
        if (this.fTranslatedName == null && this.fName != null && this.fModel != null) {
            this.fTranslatedName = this.fModel.getResourceString(this.fName);
        }
        return this.fTranslatedName;
    }

    String getNodeAttribute(Node node, String name) {
        Node attribute = node.getAttributes().getNamedItem(name);
        if (attribute != null) {
            return attribute.getNodeValue();
        }
        return null;
    }

    public IPluginObject getParent() {
        return this.fParent;
    }

    public IPluginBase getPluginBase() {
        IPluginModelBase pluginModel = this.getPluginModel();
        return pluginModel != null ? pluginModel.getPluginBase() : null;
    }

    public String getResourceString(String key) {
        return this.fModel.getResourceString(key);
    }

    static boolean isNotEmpty(String text) {
        int i = 0;
        while (i < text.length()) {
            if (!Character.isWhitespace(text.charAt(i))) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("name")) {
            this.setName(newValue != null ? newValue.toString() : null);
        }
    }

    public void setModel(ISharedPluginModel model) {
        this.fModel = model;
        this.fTranslatedName = null;
    }

    public void setName(String name) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fName;
        this.fName = name;
        this.firePropertyChanged("name", oldValue, name);
    }

    public void setParent(IPluginObject parent) {
        this.fParent = parent;
    }

    protected void throwCoreException(String message) throws CoreException {
        Status status = new Status(4, "org.eclipse.pde.core", 0, message, null);
        CoreException ce = new CoreException((IStatus)status);
        ce.fillInStackTrace();
        throw ce;
    }

    public String toString() {
        String result = null;
        if (this.fName != null) {
            result = this.fName;
        }
        if ((result == null || result.indexOf(37) >= 0) && this.fModel != null) {
            result = this.fModel.toString();
        }
        if (result != null) {
            return result;
        }
        return super.toString();
    }

    public Vector addComments(Node node, Vector result) {
        Node prev = node.getPreviousSibling();
        while (prev != null) {
            if (prev.getNodeType() != 3) {
                if (!(prev instanceof Comment)) break;
                String comment = prev.getNodeValue();
                if (result == null) {
                    result = new Vector<String>();
                }
                result.add(0, comment);
            }
            prev = prev.getPreviousSibling();
        }
        return result;
    }

    void writeComments(PrintWriter writer, Vector source) {
        if (source == null) {
            return;
        }
        int i = 0;
        while (i < source.size()) {
            String comment = (String)source.elementAt(i);
            writer.println("<!--" + comment + "-->");
            ++i;
        }
    }

    protected boolean stringEqualWithNull(String a, String b) {
        return a == null && b == null || a != null && b != null && a.equals(b);
    }

    public String getWritableString(String source) {
        return PDEXMLHelper.getWritableString(source);
    }

    public int getStartLine() {
        return this.fStartLine;
    }

    public int getStopLine() {
        return this.fStartLine;
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.pde.core.plugin.IPluginModelBase");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this.getPluginModel();
        }
        return super.getAdapter(adapter);
    }

    public void reconnect(ISharedPluginModel model, IPluginObject parent) {
        this.fInTheModel = false;
        this.fModel = model;
        this.fParent = parent;
        this.fTranslatedName = null;
    }

    public void writeDelimeter(PrintWriter writer) {
    }
}

