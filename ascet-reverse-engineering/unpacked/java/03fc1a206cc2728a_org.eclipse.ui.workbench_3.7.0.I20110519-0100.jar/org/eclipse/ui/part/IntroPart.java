/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.part;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.intro.IntroMessages;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.intro.IIntroPart;
import org.eclipse.ui.intro.IIntroSite;
import org.eclipse.ui.plugin.AbstractUIPlugin;

public abstract class IntroPart
extends EventManager
implements IIntroPart,
IExecutableExtension {
    private IConfigurationElement configElement;
    private ImageDescriptor imageDescriptor;
    private IIntroSite partSite;
    private Image titleImage;
    private String titleLabel;

    protected IntroPart() {
    }

    public void addPropertyListener(IPropertyListener l) {
        this.addListenerObject(l);
    }

    public abstract void createPartControl(Composite var1);

    public void dispose() {
        if (this.titleImage != null) {
            JFaceResources.getResources().destroyImage(this.imageDescriptor);
            this.titleImage = null;
        }
        this.clearListeners();
    }

    protected void firePropertyChange(final int propertyId) {
        Object[] array = this.getListeners();
        int nX = 0;
        while (nX < array.length) {
            final IPropertyListener l = (IPropertyListener)array[nX];
            Platform.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.propertyChanged((Object)this, propertyId);
                }
            });
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

    public final IIntroSite getIntroSite() {
        return this.partSite;
    }

    public Image getTitleImage() {
        if (this.titleImage != null) {
            return this.titleImage;
        }
        return this.getDefaultImage();
    }

    public String getTitle() {
        if (this.titleLabel != null) {
            return this.titleLabel;
        }
        return this.getDefaultTitle();
    }

    private String getDefaultTitle() {
        return IntroMessages.Intro_default_title;
    }

    public void init(IIntroSite site, IMemento memento) throws PartInitException {
        this.setSite(site);
    }

    protected void setSite(IIntroSite site) {
        this.partSite = site;
    }

    public void removePropertyListener(IPropertyListener l) {
        this.removeListenerObject(l);
    }

    public void saveState(IMemento memento) {
    }

    public abstract void setFocus();

    public void setInitializationData(IConfigurationElement cfig, String propertyName, Object data) {
        Image image;
        this.configElement = cfig;
        this.titleLabel = cfig.getAttribute("label");
        String strIcon = cfig.getAttribute("icon");
        if (strIcon == null) {
            return;
        }
        this.imageDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(this.configElement.getNamespace(), strIcon);
        if (this.imageDescriptor == null) {
            return;
        }
        this.titleImage = image = JFaceResources.getResources().createImageWithDefault(this.imageDescriptor);
    }

    protected void setTitleImage(Image titleImage) {
        Assert.isTrue((titleImage == null || !titleImage.isDisposed() ? 1 : 0) != 0);
        if (this.titleImage == titleImage) {
            return;
        }
        this.titleImage = titleImage;
        this.firePropertyChange(1);
    }

    protected void setTitle(String titleLabel) {
        Assert.isNotNull((Object)titleLabel);
        if (Util.equals(this.titleLabel, titleLabel)) {
            return;
        }
        this.titleLabel = titleLabel;
        this.firePropertyChange(1);
    }
}

