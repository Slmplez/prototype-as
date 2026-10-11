/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.action;

import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.ExternalActionManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Widget;

public class ActionContributionItem
extends ContributionItem {
    public static int MODE_FORCE_TEXT = 1;
    private static final String ellipsis = "...";
    private Boolean result = null;
    private static boolean USE_COLOR_ICONS = true;
    private int mode = 0;
    private IAction action;
    private final IPropertyChangeListener actionTextListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            ActionContributionItem.this.update(event.getProperty());
        }
    };
    private LocalResourceManager imageManager;
    private Listener buttonListener;
    private Listener menuItemListener;
    private final IPropertyChangeListener propertyListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            ActionContributionItem.this.actionPropertyChange(event);
        }
    };
    private Listener toolItemListener;
    private Widget widget = null;
    private Listener menuCreatorListener;
    private Menu holdMenu = null;
    private boolean menuCreatorCalled = false;

    public static boolean getUseColorIconsInToolbars() {
        return USE_COLOR_ICONS;
    }

    public static void setUseColorIconsInToolbars(boolean useColorIcons) {
        USE_COLOR_ICONS = useColorIcons;
    }

    public ActionContributionItem(IAction action) {
        super(action.getId());
        this.action = action;
    }

    private void actionPropertyChange(final PropertyChangeEvent e) {
        if (this.isVisible() && this.widget != null) {
            Display display = this.widget.getDisplay();
            if (display.getThread() == Thread.currentThread()) {
                this.update(e.getProperty());
            } else {
                display.asyncExec(new Runnable(){

                    public void run() {
                        ActionContributionItem.this.update(e.getProperty());
                    }
                });
            }
        }
    }

    public boolean equals(Object o) {
        if (!(o instanceof ActionContributionItem)) {
            return false;
        }
        return this.action.equals(((ActionContributionItem)o).action);
    }

    public void fill(Composite parent) {
        if (this.widget == null && parent != null) {
            int flags = 8;
            if (this.action != null) {
                if (this.action.getStyle() == 2) {
                    flags = 2;
                }
                if (this.action.getStyle() == 8) {
                    flags = 16;
                }
            }
            Button b = new Button(parent, flags);
            b.setData((Object)this);
            b.addListener(12, this.getButtonListener());
            b.addListener(13, this.getButtonListener());
            if (this.action.getHelpListener() != null) {
                b.addHelpListener(this.action.getHelpListener());
            }
            this.widget = b;
            this.update(null);
            this.action.addPropertyChangeListener(this.propertyListener);
            if (this.action != null) {
                String commandId = this.action.getActionDefinitionId();
                ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                if (callback != null && commandId != null) {
                    callback.addPropertyChangeListener(commandId, this.actionTextListener);
                }
            }
        }
    }

    public void fill(Menu parent, int index) {
        if (this.widget == null && parent != null) {
            int flags = 8;
            if (this.action != null) {
                int style = this.action.getStyle();
                if (style == 2) {
                    flags = 32;
                } else if (style == 8) {
                    flags = 16;
                } else if (style == 4) {
                    flags = 64;
                }
            }
            MenuItem mi = null;
            mi = index >= 0 ? new MenuItem(parent, flags, index) : new MenuItem(parent, flags);
            this.widget = mi;
            mi.setData((Object)this);
            mi.addListener(12, this.getMenuItemListener());
            mi.addListener(13, this.getMenuItemListener());
            if (this.action.getHelpListener() != null) {
                mi.addHelpListener(this.action.getHelpListener());
            }
            if (flags == 64) {
                Menu subMenu = new Menu(parent);
                subMenu.addListener(22, this.getMenuCreatorListener());
                subMenu.addListener(23, this.getMenuCreatorListener());
                mi.setMenu(subMenu);
            }
            this.update(null);
            this.action.addPropertyChangeListener(this.propertyListener);
            if (this.action != null) {
                String commandId = this.action.getActionDefinitionId();
                ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                if (callback != null && commandId != null) {
                    callback.addPropertyChangeListener(commandId, this.actionTextListener);
                }
            }
        }
    }

    public void fill(ToolBar parent, int index) {
        if (this.widget == null && parent != null) {
            int flags = 8;
            if (this.action != null) {
                int style = this.action.getStyle();
                if (style == 2) {
                    flags = 32;
                } else if (style == 8) {
                    flags = 16;
                } else if (style == 4) {
                    flags = 4;
                }
            }
            ToolItem ti = null;
            ti = index >= 0 ? new ToolItem(parent, flags, index) : new ToolItem(parent, flags);
            ti.setData((Object)this);
            ti.addListener(13, this.getToolItemListener());
            ti.addListener(12, this.getToolItemListener());
            this.widget = ti;
            this.update(null);
            this.action.addPropertyChangeListener(this.propertyListener);
            if (this.action != null) {
                String commandId = this.action.getActionDefinitionId();
                ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                if (callback != null && commandId != null) {
                    callback.addPropertyChangeListener(commandId, this.actionTextListener);
                }
            }
        }
    }

    public IAction getAction() {
        return this.action;
    }

    private Listener getButtonListener() {
        if (this.buttonListener == null) {
            this.buttonListener = new Listener(){

                public void handleEvent(Event event) {
                    switch (event.type) {
                        case 12: {
                            ActionContributionItem.this.handleWidgetDispose(event);
                            break;
                        }
                        case 13: {
                            Widget ew = event.widget;
                            if (ew == null) break;
                            ActionContributionItem.this.handleWidgetSelection(event, ((Button)ew).getSelection());
                        }
                    }
                }
            };
        }
        return this.buttonListener;
    }

    private Listener getMenuItemListener() {
        if (this.menuItemListener == null) {
            this.menuItemListener = new Listener(){

                public void handleEvent(Event event) {
                    switch (event.type) {
                        case 12: {
                            ActionContributionItem.this.handleWidgetDispose(event);
                            break;
                        }
                        case 13: {
                            Widget ew = event.widget;
                            if (ew == null) break;
                            ActionContributionItem.this.handleWidgetSelection(event, ((MenuItem)ew).getSelection());
                        }
                    }
                }
            };
        }
        return this.menuItemListener;
    }

    public int getMode() {
        return this.mode;
    }

    private Listener getToolItemListener() {
        if (this.toolItemListener == null) {
            this.toolItemListener = new Listener(){

                public void handleEvent(Event event) {
                    switch (event.type) {
                        case 12: {
                            ActionContributionItem.this.handleWidgetDispose(event);
                            break;
                        }
                        case 13: {
                            Widget ew = event.widget;
                            if (ew == null) break;
                            ActionContributionItem.this.handleWidgetSelection(event, ((ToolItem)ew).getSelection());
                        }
                    }
                }
            };
        }
        return this.toolItemListener;
    }

    private void handleWidgetDispose(Event e) {
        if (e.widget == this.widget) {
            IMenuCreator mc;
            if (this.action.getStyle() == 4 && this.menuCreatorCalled && (mc = this.action.getMenuCreator()) != null) {
                mc.dispose();
            }
            this.action.removePropertyChangeListener(this.propertyListener);
            if (this.action != null) {
                String commandId = this.action.getActionDefinitionId();
                ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                if (callback != null && commandId != null) {
                    callback.removePropertyChangeListener(commandId, this.actionTextListener);
                }
            }
            this.widget = null;
            this.disposeOldImages();
        }
    }

    private void handleWidgetSelection(Event e, boolean selection) {
        Widget item = e.widget;
        if (item != null) {
            ExternalActionManager.ICallback obj;
            int style = item.getStyle();
            if ((style & 0x22) != 0) {
                if (this.action.getStyle() == 2) {
                    this.action.setChecked(selection);
                }
            } else if ((style & 0x10) != 0) {
                if (this.action.getStyle() == 8) {
                    this.action.setChecked(selection);
                }
            } else if ((style & 4) != 0 && e.detail == 4 && this.action.getStyle() == 4) {
                Menu m;
                IMenuCreator mc = this.action.getMenuCreator();
                this.menuCreatorCalled = true;
                ToolItem ti = (ToolItem)item;
                if (mc != null && (m = mc.getMenu((Control)ti.getParent())) != null) {
                    Point point = ti.getParent().toDisplay(new Point(e.x, e.y));
                    m.setLocation(point.x, point.y);
                    m.setVisible(true);
                    return;
                }
            }
            ExternalActionManager.IExecuteCallback callback = null;
            String actionDefinitionId = this.action.getActionDefinitionId();
            if (actionDefinitionId != null && (obj = ExternalActionManager.getInstance().getCallback()) instanceof ExternalActionManager.IExecuteCallback) {
                callback = (ExternalActionManager.IExecuteCallback)((Object)obj);
            }
            if (this.action.isEnabled()) {
                boolean trace = Policy.TRACE_ACTIONS;
                long ms = 0L;
                if (trace) {
                    ms = System.currentTimeMillis();
                    System.out.println("Running action: " + this.action.getText());
                }
                IPropertyChangeListener resultListener = null;
                if (callback != null) {
                    resultListener = new IPropertyChangeListener(){

                        public void propertyChange(PropertyChangeEvent event) {
                            if (event.getProperty().equals("result") && event.getNewValue() instanceof Boolean) {
                                ActionContributionItem.this.result = (Boolean)event.getNewValue();
                            }
                        }
                    };
                    this.action.addPropertyChangeListener(resultListener);
                    callback.preExecute(this.action, e);
                }
                this.action.runWithEvent(e);
                if (callback != null) {
                    if (this.result == null || this.result.equals(Boolean.TRUE)) {
                        callback.postExecuteSuccess(this.action, Boolean.TRUE);
                    } else {
                        callback.postExecuteFailure(this.action, new ExecutionException(String.valueOf(this.action.getText()) + " returned failure."));
                    }
                }
                if (resultListener != null) {
                    this.result = null;
                    this.action.removePropertyChangeListener(resultListener);
                }
                if (trace) {
                    System.out.println(String.valueOf(System.currentTimeMillis() - ms) + " ms to run action: " + this.action.getText());
                }
            } else if (callback != null) {
                callback.notEnabled(this.action, new NotEnabledException(String.valueOf(this.action.getText()) + " is not enabled."));
            }
        }
    }

    public int hashCode() {
        return this.action.hashCode();
    }

    private boolean hasImages(IAction actionToCheck) {
        return actionToCheck.getImageDescriptor() != null || actionToCheck.getHoverImageDescriptor() != null || actionToCheck.getDisabledImageDescriptor() != null;
    }

    private boolean isCommandActive() {
        IAction actionToCheck = this.getAction();
        if (actionToCheck != null) {
            String commandId = actionToCheck.getActionDefinitionId();
            ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
            if (callback != null) {
                return callback.isActive(commandId);
            }
        }
        return true;
    }

    public boolean isDynamic() {
        if (this.widget instanceof MenuItem) {
            boolean actionIsRadio;
            boolean itemIsCheck = (this.widget.getStyle() & 0x20) != 0;
            boolean actionIsCheck = this.getAction() != null && this.getAction().getStyle() == 2;
            boolean itemIsRadio = (this.widget.getStyle() & 0x10) != 0;
            boolean bl = actionIsRadio = this.getAction() != null && this.getAction().getStyle() == 8;
            return itemIsCheck != actionIsCheck || itemIsRadio != actionIsRadio;
        }
        return false;
    }

    public boolean isEnabled() {
        return this.action != null && this.action.isEnabled();
    }

    protected boolean isEnabledAllowed() {
        if (this.getParent() == null) {
            return true;
        }
        Boolean value = this.getParent().getOverrides().getEnabled(this);
        return value == null ? true : value;
    }

    public boolean isVisible() {
        return super.isVisible() && this.isCommandActive();
    }

    public void setMode(int mode) {
        this.mode = mode;
        this.update();
    }

    public final void update() {
        this.update(null);
    }

    public void update(String propertyName) {
        if (this.widget != null) {
            boolean checkChanged;
            boolean textChanged = propertyName == null || propertyName.equals("text");
            boolean imageChanged = propertyName == null || propertyName.equals("image");
            boolean tooltipTextChanged = propertyName == null || propertyName.equals("toolTipText");
            boolean enableStateChanged = propertyName == null || propertyName.equals("enabled") || propertyName.equals("enabled");
            boolean bl = checkChanged = !(this.action.getStyle() != 2 && this.action.getStyle() != 8 || propertyName != null && !propertyName.equals("checked"));
            if (this.widget instanceof ToolItem) {
                boolean showText;
                ToolItem ti = (ToolItem)this.widget;
                String text = this.action.getText();
                boolean bl2 = showText = text != null && ((this.getMode() & MODE_FORCE_TEXT) != 0 || !this.hasImages(this.action));
                if (showText && text != null) {
                    text = Action.removeAcceleratorText(text);
                    text = Action.removeMnemonics(text);
                }
                if (textChanged) {
                    boolean rightStyle;
                    String textToSet = showText ? text : "";
                    boolean bl3 = rightStyle = (ti.getParent().getStyle() & 0x20000) != 0;
                    if (rightStyle || !ti.getText().equals(textToSet)) {
                        ti.setText(textToSet);
                    }
                }
                if (imageChanged) {
                    this.updateImages(!showText);
                }
                if (tooltipTextChanged || textChanged) {
                    String acceleratorText;
                    String toolTip = this.action.getToolTipText();
                    if (toolTip == null || toolTip.length() == 0) {
                        toolTip = text;
                    }
                    ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                    String commandId = this.action.getActionDefinitionId();
                    if (callback != null && commandId != null && toolTip != null && (acceleratorText = callback.getAcceleratorText(commandId)) != null && acceleratorText.length() != 0) {
                        toolTip = JFaceResources.format("Toolbar_Tooltip_Accelerator", new Object[]{toolTip, acceleratorText});
                    }
                    if (!showText || toolTip != null && !toolTip.equals(text)) {
                        ti.setToolTipText(toolTip);
                    } else {
                        ti.setToolTipText(null);
                    }
                }
                if (enableStateChanged) {
                    boolean shouldBeEnabled;
                    boolean bl4 = shouldBeEnabled = this.action.isEnabled() && this.isEnabledAllowed();
                    if (ti.getEnabled() != shouldBeEnabled) {
                        ti.setEnabled(shouldBeEnabled);
                    }
                }
                if (checkChanged) {
                    boolean bv = this.action.isChecked();
                    if (ti.getSelection() != bv) {
                        ti.setSelection(bv);
                    }
                }
                return;
            }
            if (this.widget instanceof MenuItem) {
                MenuItem mi = (MenuItem)this.widget;
                if (textChanged) {
                    int accelerator = 0;
                    String acceleratorText = null;
                    IAction updatedAction = this.getAction();
                    String text = null;
                    accelerator = updatedAction.getAccelerator();
                    ExternalActionManager.ICallback callback = ExternalActionManager.getInstance().getCallback();
                    if (accelerator != 0 && callback != null && callback.isAcceleratorInUse(accelerator)) {
                        accelerator = 0;
                    }
                    String commandId = updatedAction.getActionDefinitionId();
                    if (Util.isGtk() && callback instanceof ExternalActionManager.IBindingManagerCallback && commandId != null) {
                        ExternalActionManager.IBindingManagerCallback bindingManagerCallback = (ExternalActionManager.IBindingManagerCallback)callback;
                        IKeyLookup lookup = KeyLookupFactory.getDefault();
                        TriggerSequence[] triggerSequences = bindingManagerCallback.getActiveBindingsFor(commandId);
                        int i = 0;
                        while (i < triggerSequences.length) {
                            Trigger trigger;
                            TriggerSequence triggerSequence = triggerSequences[i];
                            Trigger[] triggers = triggerSequence.getTriggers();
                            if (triggers.length == 1 && (trigger = triggers[0]) instanceof KeyStroke) {
                                KeyStroke currentKeyStroke = (KeyStroke)trigger;
                                int currentNaturalKey = currentKeyStroke.getNaturalKey();
                                if (currentKeyStroke.getModifierKeys() == (lookup.getCtrl() | lookup.getShift()) && (currentNaturalKey >= 48 && currentNaturalKey <= 57 || currentNaturalKey >= 65 && currentNaturalKey <= 70 || currentNaturalKey == 85)) {
                                    accelerator = currentKeyStroke.getModifierKeys() | currentNaturalKey;
                                    acceleratorText = triggerSequence.format();
                                    break;
                                }
                            }
                            ++i;
                        }
                    }
                    if (accelerator == 0 && callback != null && commandId != null) {
                        acceleratorText = callback.getAcceleratorText(commandId);
                    }
                    IContributionManagerOverrides overrides = null;
                    if (this.getParent() != null) {
                        overrides = this.getParent().getOverrides();
                    }
                    if (overrides != null) {
                        text = this.getParent().getOverrides().getText(this);
                    }
                    mi.setAccelerator(accelerator);
                    if (text == null) {
                        text = updatedAction.getText();
                    }
                    if (text != null && acceleratorText == null && (acceleratorText = LegacyActionTools.extractAcceleratorText(text)) == null && accelerator != 0) {
                        acceleratorText = Action.convertAccelerator(accelerator);
                    }
                    text = text == null ? "" : Action.removeAcceleratorText(text);
                    if (acceleratorText == null) {
                        mi.setText(text);
                    } else {
                        mi.setText(String.valueOf(text) + '\t' + acceleratorText);
                    }
                }
                if (imageChanged) {
                    this.updateImages(false);
                }
                if (enableStateChanged) {
                    boolean shouldBeEnabled;
                    boolean bl5 = shouldBeEnabled = this.action.isEnabled() && this.isEnabledAllowed();
                    if (mi.getEnabled() != shouldBeEnabled) {
                        mi.setEnabled(shouldBeEnabled);
                    }
                }
                if (checkChanged) {
                    boolean bv = this.action.isChecked();
                    if (mi.getSelection() != bv) {
                        mi.setSelection(bv);
                    }
                }
                return;
            }
            if (this.widget instanceof Button) {
                Button button = (Button)this.widget;
                if (imageChanged) {
                    this.updateImages(false);
                }
                if (textChanged) {
                    boolean showText;
                    String text = this.action.getText();
                    boolean bl6 = showText = text != null && ((this.getMode() & MODE_FORCE_TEXT) != 0 || !this.hasImages(this.action));
                    if (showText) {
                        text = Action.removeAcceleratorText(text);
                    }
                    String textToSet = showText ? text : "";
                    button.setText(textToSet);
                }
                if (tooltipTextChanged) {
                    button.setToolTipText(this.action.getToolTipText());
                }
                if (enableStateChanged) {
                    boolean shouldBeEnabled;
                    boolean bl7 = shouldBeEnabled = this.action.isEnabled() && this.isEnabledAllowed();
                    if (button.getEnabled() != shouldBeEnabled) {
                        button.setEnabled(shouldBeEnabled);
                    }
                }
                if (checkChanged) {
                    boolean bv = this.action.isChecked();
                    if (button.getSelection() != bv) {
                        button.setSelection(bv);
                    }
                }
                return;
            }
        }
    }

    private boolean updateImages(boolean forceImage) {
        ResourceManager parentResourceManager = JFaceResources.getResources();
        if (this.widget instanceof ToolItem) {
            if (USE_COLOR_ICONS) {
                ImageDescriptor image = this.action.getHoverImageDescriptor();
                if (image == null) {
                    image = this.action.getImageDescriptor();
                }
                ImageDescriptor disabledImage = this.action.getDisabledImageDescriptor();
                if (image == null && forceImage) {
                    image = ImageDescriptor.getMissingImageDescriptor();
                }
                LocalResourceManager localManager = new LocalResourceManager(parentResourceManager);
                ((ToolItem)this.widget).setDisabledImage(disabledImage == null ? null : localManager.createImageWithDefault(disabledImage));
                ((ToolItem)this.widget).setImage(image == null ? null : localManager.createImageWithDefault(image));
                this.disposeOldImages();
                this.imageManager = localManager;
                return image != null;
            }
            ImageDescriptor image = this.action.getImageDescriptor();
            ImageDescriptor hoverImage = this.action.getHoverImageDescriptor();
            ImageDescriptor disabledImage = this.action.getDisabledImageDescriptor();
            if (image == null && hoverImage != null) {
                image = ImageDescriptor.createWithFlags(this.action.getHoverImageDescriptor(), 2);
            } else if (hoverImage == null && image != null) {
                hoverImage = image;
                image = ImageDescriptor.createWithFlags(this.action.getImageDescriptor(), 2);
            }
            if (hoverImage == null && image == null && forceImage) {
                image = ImageDescriptor.getMissingImageDescriptor();
            }
            LocalResourceManager localManager = new LocalResourceManager(parentResourceManager);
            ((ToolItem)this.widget).setDisabledImage(disabledImage == null ? null : localManager.createImageWithDefault(disabledImage));
            ((ToolItem)this.widget).setHotImage(hoverImage == null ? null : localManager.createImageWithDefault(hoverImage));
            ((ToolItem)this.widget).setImage(image == null ? null : localManager.createImageWithDefault(image));
            this.disposeOldImages();
            this.imageManager = localManager;
            return image != null;
        }
        if (this.widget instanceof Item || this.widget instanceof Button) {
            ImageDescriptor image = this.action.getHoverImageDescriptor();
            if (image == null) {
                image = this.action.getImageDescriptor();
            }
            if (image == null && forceImage) {
                image = ImageDescriptor.getMissingImageDescriptor();
            }
            LocalResourceManager localManager = new LocalResourceManager(parentResourceManager);
            if (this.widget instanceof Item) {
                ((Item)this.widget).setImage(image == null ? null : localManager.createImageWithDefault(image));
            } else if (this.widget instanceof Button) {
                ((Button)this.widget).setImage(image == null ? null : localManager.createImageWithDefault(image));
            }
            this.disposeOldImages();
            this.imageManager = localManager;
            return image != null;
        }
        return false;
    }

    private void disposeOldImages() {
        if (this.imageManager != null) {
            this.imageManager.dispose();
            this.imageManager = null;
        }
    }

    protected String shortenText(String textValue, ToolItem item) {
        if (textValue == null) {
            return null;
        }
        GC gc = new GC((Drawable)item.getParent());
        int maxWidth = item.getImage().getBounds().width * 4;
        if (gc.textExtent((String)textValue).x < maxWidth) {
            gc.dispose();
            return textValue;
        }
        int i = textValue.length();
        while (i > 0) {
            String test = textValue.substring(0, i);
            test = String.valueOf(test) + ellipsis;
            if (gc.textExtent((String)test).x < maxWidth) {
                gc.dispose();
                return test;
            }
            --i;
        }
        gc.dispose();
        return textValue;
    }

    public void dispose() {
        if (this.widget != null) {
            this.widget.dispose();
            this.widget = null;
        }
        this.holdMenu = null;
    }

    private Listener getMenuCreatorListener() {
        if (this.menuCreatorListener == null) {
            this.menuCreatorListener = new Listener(){

                public void handleEvent(Event event) {
                    switch (event.type) {
                        case 22: {
                            ActionContributionItem.this.handleShowProxy((Menu)event.widget);
                            break;
                        }
                        case 23: {
                            ActionContributionItem.this.handleHideProxy((Menu)event.widget);
                        }
                    }
                }
            };
        }
        return this.menuCreatorListener;
    }

    private void handleShowProxy(Menu proxy) {
        proxy.removeListener(22, this.getMenuCreatorListener());
        IMenuCreator mc = this.action.getMenuCreator();
        this.menuCreatorCalled = true;
        if (mc == null) {
            return;
        }
        this.holdMenu = mc.getMenu(proxy.getParentMenu());
        if (this.holdMenu == null) {
            return;
        }
        this.copyMenu(this.holdMenu, proxy);
    }

    private void copyMenu(Menu realMenu, Menu proxy) {
        if (realMenu.isDisposed() || proxy.isDisposed()) {
            return;
        }
        realMenu.notifyListeners(22, null);
        Listener passThrough = new Listener(){

            public void handleEvent(Event event) {
                Widget realItem;
                if (!event.widget.isDisposed() && !(realItem = (Widget)event.widget.getData()).isDisposed()) {
                    int style = event.widget.getStyle();
                    if (event.type == 13 && (style & 0x32) != 0 && realItem instanceof MenuItem) {
                        ((MenuItem)realItem).setSelection(((MenuItem)event.widget).getSelection());
                    }
                    event.widget = realItem;
                    realItem.notifyListeners(event.type, event);
                }
            }
        };
        MenuItem[] items = realMenu.getItems();
        int i = 0;
        while (i < items.length) {
            MenuItem realItem = items[i];
            MenuItem proxyItem = new MenuItem(proxy, realItem.getStyle());
            proxyItem.setData((Object)realItem);
            proxyItem.setAccelerator(realItem.getAccelerator());
            proxyItem.setEnabled(realItem.getEnabled());
            proxyItem.setImage(realItem.getImage());
            proxyItem.setSelection(realItem.getSelection());
            proxyItem.setText(realItem.getText());
            proxyItem.addListener(13, passThrough);
            proxyItem.addListener(30, passThrough);
            proxyItem.addListener(28, passThrough);
            final Menu itemMenu = realItem.getMenu();
            if (itemMenu != null) {
                final Menu subMenu = new Menu(proxy);
                subMenu.setData((Object)itemMenu);
                proxyItem.setMenu(subMenu);
                subMenu.addListener(22, new Listener(){

                    public void handleEvent(Event event) {
                        event.widget.removeListener(22, (Listener)this);
                        if (event.type == 22) {
                            ActionContributionItem.this.copyMenu(itemMenu, subMenu);
                        }
                    }
                });
                subMenu.addListener(28, passThrough);
                subMenu.addListener(23, passThrough);
            }
            ++i;
        }
    }

    private void handleHideProxy(final Menu proxy) {
        proxy.removeListener(23, this.getMenuCreatorListener());
        proxy.getDisplay().asyncExec(new Runnable(){

            public void run() {
                if (!proxy.isDisposed()) {
                    MenuItem parentItem = proxy.getParentItem();
                    proxy.dispose();
                    parentItem.setMenu(ActionContributionItem.this.holdMenu);
                }
                if (ActionContributionItem.this.holdMenu != null && !ActionContributionItem.this.holdMenu.isDisposed()) {
                    ActionContributionItem.this.holdMenu.notifyListeners(23, null);
                }
                ActionContributionItem.this.holdMenu = null;
            }
        });
    }

    public Widget getWidget() {
        return this.widget;
    }
}

