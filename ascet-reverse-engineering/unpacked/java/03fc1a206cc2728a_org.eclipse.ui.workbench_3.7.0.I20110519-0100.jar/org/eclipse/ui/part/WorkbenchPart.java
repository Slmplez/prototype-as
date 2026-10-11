/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.window.Window
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.part;

import com.ibm.icu.text.MessageFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IWorkbenchPart3;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.part.IWorkbenchPartOrientation;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public abstract class WorkbenchPart
extends EventManager
implements IWorkbenchPart3,
IExecutableExtension,
IWorkbenchPartOrientation {
    private String title = "";
    private ImageDescriptor imageDescriptor;
    private Image titleImage;
    private String toolTip = "";
    private IConfigurationElement configElement;
    private IWorkbenchPartSite partSite;
    private String partName = "";
    private String contentDescription = "";
    private ListenerList partChangeListeners = new ListenerList();
    private Map partProperties = new HashMap();

    protected WorkbenchPart() {
    }

    public void addPropertyListener(IPropertyListener l) {
        this.addListenerObject(l);
    }

    public abstract void createPartControl(Composite var1);

    public void dispose() {
        if (this.imageDescriptor != null) {
            JFaceResources.getResources().destroyImage(this.imageDescriptor);
        }
        this.clearListeners();
        this.partChangeListeners.clear();
    }

    protected void firePropertyChange(int propertyId) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            IPropertyListener l = (IPropertyListener)array[nX];
            try {
                l.propertyChanged(this, propertyId);
            }
            catch (RuntimeException e) {
                WorkbenchPlugin.log(e);
            }
            ++nX;
        }
    }

    public Object getAdapter(Class adapter) {
        return Platform.getAdapterManager().getAdapter((Object)this, adapter);
    }

    protected IConfigurationElement getConfigurationElement() {
        return this.configElement;
    }

    protected Image getDefaultImage() {
        return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_DEF_VIEW");
    }

    public IWorkbenchPartSite getSite() {
        return this.partSite;
    }

    public String getTitle() {
        return this.title;
    }

    public Image getTitleImage() {
        if (this.titleImage != null) {
            return this.titleImage;
        }
        return this.getDefaultImage();
    }

    public String getTitleToolTip() {
        return this.toolTip;
    }

    public void removePropertyListener(IPropertyListener l) {
        this.removeListenerObject(l);
    }

    public abstract void setFocus();

    public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
        this.configElement = cfig;
        this.title = this.partName = Util.safeString(cfig.getAttribute("name"));
        String strIcon = cfig.getAttribute("icon");
        if (strIcon == null) {
            return;
        }
        this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.configElement.getNamespace(), strIcon);
        if (this.imageDescriptor == null) {
            return;
        }
        this.titleImage = JFaceResources.getResources().createImageWithDefault(this.imageDescriptor);
    }

    protected void setSite(IWorkbenchPartSite site) {
        this.checkSite(site);
        this.partSite = site;
    }

    protected void checkSite(IWorkbenchPartSite site) {
    }

    protected void setTitle(String title) {
        if (Util.equals(this.title, title = Util.safeString(title))) {
            return;
        }
        this.title = title;
        this.firePropertyChange(1);
    }

    protected void setTitleImage(Image titleImage) {
        Assert.isTrue((titleImage == null || !titleImage.isDisposed() ? 1 : 0) != 0);
        if (this.titleImage == titleImage) {
            return;
        }
        this.titleImage = titleImage;
        this.firePropertyChange(1);
        if (this.imageDescriptor != null) {
            JFaceResources.getResources().destroyImage(this.imageDescriptor);
            this.imageDescriptor = null;
        }
    }

    protected void setTitleToolTip(String toolTip) {
        if (Util.equals(this.toolTip, toolTip = Util.safeString(toolTip))) {
            return;
        }
        this.toolTip = toolTip;
        this.firePropertyChange(1);
    }

    public void showBusy(boolean busy) {
    }

    public String getPartName() {
        return this.partName;
    }

    protected void setPartName(String partName) {
        this.internalSetPartName(partName);
        this.setDefaultTitle();
    }

    void setDefaultTitle() {
        String name;
        String description = this.getContentDescription();
        String newTitle = name = this.getPartName();
        if (!Util.equals(description, "")) {
            newTitle = MessageFormat.format((String)WorkbenchMessages.WorkbenchPart_AutoTitleFormat, (Object[])new String[]{name, description});
        }
        this.setTitle(newTitle);
    }

    public String getContentDescription() {
        return this.contentDescription;
    }

    protected void setContentDescription(String description) {
        this.internalSetContentDescription(description);
        this.setDefaultTitle();
    }

    void internalSetContentDescription(String description) {
        Assert.isNotNull((Object)description);
        if (Util.equals(this.contentDescription, description)) {
            return;
        }
        this.contentDescription = description;
        this.firePropertyChange(261);
    }

    void internalSetPartName(String partName) {
        partName = Util.safeString(partName);
        Assert.isNotNull((Object)partName);
        if (Util.equals(this.partName, partName)) {
            return;
        }
        this.partName = partName;
        this.firePropertyChange(260);
    }

    public int getOrientation() {
        return Window.getDefaultOrientation();
    }

    public void addPartPropertyListener(IPropertyChangeListener listener) {
        this.partChangeListeners.add((Object)listener);
    }

    public void removePartPropertyListener(IPropertyChangeListener listener) {
        this.partChangeListeners.remove((Object)listener);
    }

    protected void firePartPropertyChanged(String key, String oldValue, String newValue) {
        PropertyChangeEvent event = new PropertyChangeEvent((Object)this, key, (Object)oldValue, (Object)newValue);
        Object[] l = this.partChangeListeners.getListeners();
        int i = 0;
        while (i < l.length) {
            try {
                ((IPropertyChangeListener)l[i]).propertyChange(event);
            }
            catch (RuntimeException e) {
                WorkbenchPlugin.log(e);
            }
            ++i;
        }
    }

    public void setPartProperty(String key, String value) {
        String oldValue = (String)this.partProperties.get(key);
        if (value == null) {
            this.partProperties.remove(key);
        } else {
            this.partProperties.put(key, value);
        }
        this.firePartPropertyChanged(key, oldValue, value);
    }

    public String getPartProperty(String key) {
        return (String)this.partProperties.get(key);
    }

    public Map getPartProperties() {
        return Collections.unmodifiableMap(this.partProperties);
    }
}

