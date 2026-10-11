/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.dialogs.DialogTray
 *  org.eclipse.jface.dialogs.ErrorSupportProvider
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.Policy
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.ui.internal.statushandlers;

import java.util.Map;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.dialogs.DialogTray;
import org.eclipse.jface.dialogs.ErrorSupportProvider;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.internal.statushandlers.StackTraceSupportArea;
import org.eclipse.ui.statushandlers.AbstractStatusAreaProvider;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class SupportTray
extends DialogTray
implements ISelectionChangedListener {
    private Map dialogState;
    private IContributionItem closeAction;
    private Listener closeListener;
    private boolean hideSupportButtons;
    private Image normal;
    private Image hover;
    private Composite supportArea;
    private Composite supportAreaContent;
    private StatusAdapter lastSelectedStatus;
    private AbstractStatusAreaProvider userSupportProvider;

    public SupportTray(Map dialogState, Listener listener) {
        this.closeListener = listener;
        this.dialogState = dialogState;
        this.hideSupportButtons = this.getBooleanValue(IStatusDialogConstants.HIDE_SUPPORT_BUTTON);
        this.lastSelectedStatus = this.getCurrentStatusAdapter();
    }

    protected Control createContents(Composite parent) {
        Composite container = new Composite(parent, 0);
        if (this.providesSupport(this.getCurrentStatusAdapter()) == null) {
            this.getBooleanValue(IStatusDialogConstants.TRAY_OPENED);
        }
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        container.setLayout((Layout)layout);
        GridData layoutData = new GridData(4, 4, true, true);
        container.setLayoutData((Object)layoutData);
        container.addListener(12, new Listener(){

            public void handleEvent(Event event) {
                SupportTray.this.destroyImages();
            }
        });
        if (!this.hideSupportButtons) {
            ToolBarManager toolBarManager = new ToolBarManager(0x800000);
            toolBarManager.createControl(container);
            GridData gd = new GridData(128);
            gd.grabExcessHorizontalSpace = true;
            toolBarManager.getControl().setLayoutData((Object)gd);
            Label separator = new Label(container, 258);
            gd = new GridData(256);
            gd.heightHint = 1;
            separator.setLayoutData((Object)gd);
            this.createActions();
            toolBarManager.add(this.closeAction);
            toolBarManager.update(true);
        }
        this.supportArea = new Composite(container, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        this.supportArea.setLayout((Layout)layout);
        GridData gd = new GridData(272);
        gd.horizontalSpan = 1;
        gd.grabExcessHorizontalSpace = true;
        gd.grabExcessVerticalSpace = true;
        this.supportArea.setLayoutData((Object)gd);
        if (this.lastSelectedStatus != null) {
            this.createSupportArea(this.supportArea, this.lastSelectedStatus);
        }
        Point shellSize = this.supportArea.getShell().getSize();
        Point desiredSize = this.supportArea.getShell().computeSize(-1, -1);
        if (desiredSize.y > shellSize.y) {
            this.supportArea.getShell().setSize(shellSize.x, Math.min(desiredSize.y, 500));
        }
        return container;
    }

    private void createImages() {
        Display display = Display.getCurrent();
        int[] shape = new int[]{3, 3, 5, 3, 7, 5, 8, 5, 10, 3, 12, 3, 12, 5, 10, 7, 10, 8, 12, 10, 12, 12, 10, 12, 8, 10, 7, 10, 5, 12, 3, 12, 3, 10, 5, 8, 5, 7, 3, 5};
        Color border = display.getSystemColor(17);
        Color background = display.getSystemColor(25);
        Color backgroundHot = new Color((Device)display, new RGB(252, 160, 160));
        Color transparent = display.getSystemColor(11);
        PaletteData palette = new PaletteData(new RGB[]{transparent.getRGB(), border.getRGB(), background.getRGB(), backgroundHot.getRGB()});
        ImageData data = new ImageData(16, 16, 8, palette);
        data.transparentPixel = 0;
        this.normal = new Image((Device)display, data);
        this.normal.setBackground(transparent);
        GC gc = new GC((Drawable)this.normal);
        gc.setBackground(background);
        gc.fillPolygon(shape);
        gc.setForeground(border);
        gc.drawPolygon(shape);
        gc.dispose();
        this.hover = new Image((Device)display, data);
        this.hover.setBackground(transparent);
        gc = new GC((Drawable)this.hover);
        gc.setBackground(backgroundHot);
        gc.fillPolygon(shape);
        gc.setForeground(border);
        gc.drawPolygon(shape);
        gc.dispose();
        backgroundHot.dispose();
    }

    private void createActions() {
        this.createImages();
        this.closeAction = new ContributionItem(){

            public void fill(ToolBar parent, int index) {
                ToolItem item = new ToolItem(parent, 8);
                item.setImage(SupportTray.this.normal);
                item.setHotImage(SupportTray.this.hover);
                item.setToolTipText(JFaceResources.getString((String)"close"));
                item.addListener(13, SupportTray.this.closeListener);
            }
        };
    }

    private void destroyImages() {
        if (this.normal != null) {
            this.normal.dispose();
        }
        if (this.hover != null) {
            this.hover.dispose();
        }
    }

    private void createSupportArea(Composite parent, StatusAdapter statusAdapter) {
        ErrorSupportProvider provider = this.getSupportProvider();
        if (provider == null) {
            return;
        }
        if (this.supportAreaContent != null) {
            this.supportAreaContent.dispose();
        }
        this.supportAreaContent = new Composite(parent, 4);
        GridData supportData = new GridData(4, 4, true, true);
        this.supportAreaContent.setLayoutData((Object)supportData);
        if (this.supportAreaContent.getLayout() == null) {
            GridLayout layout = new GridLayout();
            layout.marginWidth = 0;
            layout.marginHeight = 0;
            this.supportAreaContent.setLayout((Layout)layout);
        }
        if (provider instanceof AbstractStatusAreaProvider) {
            ((AbstractStatusAreaProvider)provider).createSupportArea(this.supportAreaContent, statusAdapter);
        } else {
            provider.createSupportArea(this.supportAreaContent, statusAdapter.getStatus());
        }
    }

    public ErrorSupportProvider getSupportProvider() {
        ErrorSupportProvider provider = Policy.getErrorSupportProvider();
        if (this.userSupportProvider != null) {
            provider = this.userSupportProvider;
        }
        if (this.getBooleanValue(IStatusDialogConstants.ENABLE_DEFAULT_SUPPORT_AREA) && provider == null) {
            provider = new StackTraceSupportArea();
        }
        return provider;
    }

    private StatusAdapter getStatusAdapterFromEvent(SelectionChangedEvent event) {
        StructuredSelection structuredSelection;
        Object element;
        ISelection selection = event.getSelection();
        if (selection instanceof StructuredSelection && (element = (structuredSelection = (StructuredSelection)selection).getFirstElement()) instanceof StatusAdapter) {
            return (StatusAdapter)element;
        }
        return null;
    }

    public ErrorSupportProvider providesSupport(StatusAdapter adapter) {
        ErrorSupportProvider provider = this.getSupportProvider();
        if (provider instanceof AbstractStatusAreaProvider) {
            AbstractStatusAreaProvider areaProvider = (AbstractStatusAreaProvider)provider;
            if (areaProvider.validFor(adapter)) {
                return areaProvider;
            }
            return null;
        }
        return provider;
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.lastSelectedStatus = this.getStatusAdapterFromEvent(event);
        if (this.supportArea != null && !this.supportArea.isDisposed() && this.lastSelectedStatus != null) {
            this.createSupportArea(this.supportArea, this.lastSelectedStatus);
            this.supportArea.layout(true);
        }
    }

    public Composite getSupportArea() {
        return this.supportArea;
    }

    private boolean getBooleanValue(Object key) {
        Boolean b = (Boolean)this.dialogState.get(key);
        if (b == null) {
            return false;
        }
        return b;
    }

    private StatusAdapter getCurrentStatusAdapter() {
        return (StatusAdapter)this.dialogState.get(IStatusDialogConstants.CURRENT_STATUS_ADAPTER);
    }
}

