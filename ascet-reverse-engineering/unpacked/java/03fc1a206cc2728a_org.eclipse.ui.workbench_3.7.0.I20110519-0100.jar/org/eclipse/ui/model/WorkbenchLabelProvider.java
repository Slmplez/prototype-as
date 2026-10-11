/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ColorDescriptor
 *  org.eclipse.jface.resource.DeviceResourceDescriptor
 *  org.eclipse.jface.resource.FontDescriptor
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.DecoratingLabelProvider
 *  org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider$IStyledLabelProvider
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.IColorProvider
 *  org.eclipse.jface.viewers.IFontProvider
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.LabelProviderChangedEvent
 *  org.eclipse.jface.viewers.StyledCellLabelProvider
 *  org.eclipse.jface.viewers.StyledString
 *  org.eclipse.jface.viewers.StyledString$Styler
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.model;

import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.jface.resource.DeviceResourceDescriptor;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.DecoratingLabelProvider;
import org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IFontProvider;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.LabelProviderChangedEvent;
import org.eclipse.jface.viewers.StyledCellLabelProvider;
import org.eclipse.jface.viewers.StyledString;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.model.IWorkbenchAdapter2;
import org.eclipse.ui.model.IWorkbenchAdapter3;

public class WorkbenchLabelProvider
extends LabelProvider
implements IColorProvider,
IFontProvider,
DelegatingStyledCellLabelProvider.IStyledLabelProvider {
    private IPropertyListener editorRegistryListener = new IPropertyListener(){

        public void propertyChanged(Object source, int propId) {
            if (propId == 1) {
                WorkbenchLabelProvider.this.fireLabelProviderChanged(new LabelProviderChangedEvent((IBaseLabelProvider)WorkbenchLabelProvider.this));
            }
        }
    };
    private ResourceManager resourceManager;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public static ILabelProvider getDecoratingWorkbenchLabelProvider() {
        return new DecoratingLabelProvider((ILabelProvider)new WorkbenchLabelProvider(), PlatformUI.getWorkbench().getDecoratorManager().getLabelDecorator());
    }

    public WorkbenchLabelProvider() {
        PlatformUI.getWorkbench().getEditorRegistry().addPropertyListener(this.editorRegistryListener);
    }

    protected ImageDescriptor decorateImage(ImageDescriptor input, Object element) {
        return input;
    }

    protected String decorateText(String input, Object element) {
        return input;
    }

    public void dispose() {
        PlatformUI.getWorkbench().getEditorRegistry().removePropertyListener(this.editorRegistryListener);
        if (this.resourceManager != null) {
            this.resourceManager.dispose();
        }
        this.resourceManager = null;
        super.dispose();
    }

    protected final IWorkbenchAdapter getAdapter(Object o) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWorkbenchAdapter)Util.getAdapter(o, clazz);
    }

    protected final IWorkbenchAdapter2 getAdapter2(Object o) {
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter2");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWorkbenchAdapter2)Util.getAdapter(o, clazz);
    }

    protected final IWorkbenchAdapter3 getAdapter3(Object o) {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter3");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IWorkbenchAdapter3)Util.getAdapter(o, clazz);
    }

    private ResourceManager getResourceManager() {
        if (this.resourceManager == null) {
            this.resourceManager = new LocalResourceManager(JFaceResources.getResources());
        }
        return this.resourceManager;
    }

    public final Image getImage(Object element) {
        IWorkbenchAdapter adapter = this.getAdapter(element);
        if (adapter == null) {
            return null;
        }
        ImageDescriptor descriptor = adapter.getImageDescriptor(element);
        if (descriptor == null) {
            return null;
        }
        descriptor = this.decorateImage(descriptor, element);
        return (Image)this.getResourceManager().get((DeviceResourceDescriptor)descriptor);
    }

    public StyledString getStyledText(Object element) {
        IWorkbenchAdapter3 adapter = this.getAdapter3(element);
        if (adapter == null) {
            return new StyledString(this.getText(element));
        }
        StyledString styledString = adapter.getStyledText(element);
        String decorated = this.decorateText(styledString.getString(), element);
        StyledString.Styler styler = this.getDecorationStyle(element);
        return StyledCellLabelProvider.styleDecoratedString((String)decorated, (StyledString.Styler)styler, (StyledString)styledString);
    }

    protected StyledString.Styler getDecorationStyle(Object element) {
        return StyledString.DECORATIONS_STYLER;
    }

    public final String getText(Object element) {
        IWorkbenchAdapter adapter = this.getAdapter(element);
        if (adapter == null) {
            return "";
        }
        String label = adapter.getLabel(element);
        return this.decorateText(label, element);
    }

    public Color getForeground(Object element) {
        return this.getColor(element, true);
    }

    public Color getBackground(Object element) {
        return this.getColor(element, false);
    }

    public Font getFont(Object element) {
        IWorkbenchAdapter2 adapter = this.getAdapter2(element);
        if (adapter == null) {
            return null;
        }
        FontData descriptor = adapter.getFont(element);
        if (descriptor == null) {
            return null;
        }
        return (Font)this.getResourceManager().get((DeviceResourceDescriptor)FontDescriptor.createFrom((FontData)descriptor));
    }

    private Color getColor(Object element, boolean forground) {
        RGB descriptor;
        IWorkbenchAdapter2 adapter = this.getAdapter2(element);
        if (adapter == null) {
            return null;
        }
        RGB rGB = descriptor = forground ? adapter.getForeground(element) : adapter.getBackground(element);
        if (descriptor == null) {
            return null;
        }
        return (Color)this.getResourceManager().get((DeviceResourceDescriptor)ColorDescriptor.createFrom((RGB)descriptor));
    }
}

