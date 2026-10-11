/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.bindings.BindingManagerEvent
 *  org.eclipse.jface.bindings.IBindingManagerListener
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.resource.DeviceResourceException
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.ui.menus;

import java.util.Map;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.bindings.BindingManagerEvent;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.resource.DeviceResourceException;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Widget;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.commands.ICommandImageService;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementReference;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.handlers.HandlerProxy;
import org.eclipse.ui.internal.menus.CommandMessages;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.services.IWorkbenchLocationService;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.menus.CommandContributionItemParameter;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.statushandlers.StatusManager;

public class CommandContributionItem
extends ContributionItem {
    public static final int STYLE_PUSH = 8;
    public static final int STYLE_CHECK = 32;
    public static final int STYLE_RADIO = 16;
    public static final int STYLE_PULLDOWN = 4;
    public static int MODE_FORCE_TEXT = 1;
    private LocalResourceManager localResourceManager;
    private Listener menuItemListener;
    private Widget widget;
    private IMenuService menuService;
    private ICommandService commandService;
    private IHandlerService handlerService;
    private IBindingService bindingService;
    private ParameterizedCommand command;
    private ImageDescriptor icon;
    private String label;
    private String tooltip;
    private ImageDescriptor disabledIcon;
    private ImageDescriptor hoverIcon;
    private String mnemonic;
    private IElementReference elementRef;
    private boolean checkedState;
    private int style;
    private ICommandListener commandListener;
    private String dropDownMenuOverride;
    private IWorkbenchHelpSystem workbenchHelpSystem;
    private String helpContextId;
    private int mode = 0;
    private boolean visibleEnabled;
    private Display display;
    private String contributedLabel;
    private ImageDescriptor contributedIcon;
    private ImageDescriptor contributedDisabledIcon;
    private ImageDescriptor contributedHoverIcon;
    private IServiceLocator serviceLocator;
    private IBindingManagerListener bindingManagerListener = new IBindingManagerListener(){

        public void bindingManagerChanged(BindingManagerEvent event) {
            if (event.isActiveBindingsChanged() && event.isActiveBindingsChangedFor(CommandContributionItem.this.getCommand())) {
                CommandContributionItem.this.update();
            }
        }
    };
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;

    public CommandContributionItem(CommandContributionItemParameter contributionParameters) {
        super(contributionParameters.id);
        this.contributedLabel = contributionParameters.label;
        this.contributedIcon = contributionParameters.icon;
        this.contributedDisabledIcon = contributionParameters.disabledIcon;
        this.contributedHoverIcon = contributionParameters.hoverIcon;
        this.icon = contributionParameters.icon;
        this.disabledIcon = contributionParameters.disabledIcon;
        this.hoverIcon = contributionParameters.hoverIcon;
        this.label = contributionParameters.label;
        this.mnemonic = contributionParameters.mnemonic;
        this.tooltip = contributionParameters.tooltip;
        this.style = contributionParameters.style;
        this.helpContextId = contributionParameters.helpContextId;
        this.visibleEnabled = contributionParameters.visibleEnabled;
        this.mode = contributionParameters.mode;
        this.serviceLocator = contributionParameters.serviceLocator;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.menuService = (IMenuService)this.serviceLocator.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandService = (ICommandService)this.serviceLocator.getService(clazz2);
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.handlerService = (IHandlerService)this.serviceLocator.getService(clazz3);
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bindingService = (IBindingService)this.serviceLocator.getService(clazz4);
        IServiceLocator iServiceLocator = contributionParameters.serviceLocator;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IWorkbenchLocationService workbenchLocationService = (IWorkbenchLocationService)iServiceLocator.getService(clazz5);
        this.display = workbenchLocationService.getWorkbench().getDisplay();
        this.createCommand(contributionParameters.commandId, contributionParameters.parameters);
        if (this.command != null) {
            try {
                IWorkbenchLocationService wls;
                IWorkbench workbench;
                Class<?> clazz6;
                UIElement callback = new UIElement(contributionParameters.serviceLocator){

                    public void setChecked(boolean checked) {
                        CommandContributionItem.this.setChecked(checked);
                    }

                    public void setDisabledIcon(ImageDescriptor desc) {
                        CommandContributionItem.this.setDisabledIcon(desc);
                    }

                    public void setHoverIcon(ImageDescriptor desc) {
                        CommandContributionItem.this.setHoverIcon(desc);
                    }

                    public void setIcon(ImageDescriptor desc) {
                        CommandContributionItem.this.setIcon(desc);
                    }

                    public void setText(String text) {
                        CommandContributionItem.this.setText(text);
                    }

                    public void setTooltip(String text) {
                        CommandContributionItem.this.setTooltip(text);
                    }

                    public void setDropDownId(String id) {
                        CommandContributionItem.this.dropDownMenuOverride = id;
                    }
                };
                this.elementRef = this.commandService.registerElementForCommand(this.command, callback);
                this.command.getCommand().addCommandListener(this.getCommandListener());
                this.setImages(contributionParameters.serviceLocator, contributionParameters.iconStyle);
                if (contributionParameters.helpContextId == null) {
                    try {
                        this.helpContextId = this.commandService.getHelpContextId(contributionParameters.commandId);
                    }
                    catch (NotDefinedException notDefinedException) {}
                }
                if ((clazz6 = class$4) == null) {
                    try {
                        clazz6 = class$4 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((workbench = (wls = (IWorkbenchLocationService)this.serviceLocator.getService(clazz6)).getWorkbench()) != null && this.helpContextId != null) {
                    this.workbenchHelpSystem = workbench.getHelpSystem();
                }
            }
            catch (NotDefinedException notDefinedException) {
                StatusManager.getManager().handle(StatusUtil.newStatus(4, "Unable to register menu item \"" + this.getId() + "\", command \"" + contributionParameters.commandId + "\" not defined", null));
            }
        }
    }

    public CommandContributionItem(IServiceLocator serviceLocator, String id, String commandId, Map parameters, ImageDescriptor icon, ImageDescriptor disabledIcon, ImageDescriptor hoverIcon, String label, String mnemonic, String tooltip, int style) {
        this(new CommandContributionItemParameter(serviceLocator, id, commandId, parameters, icon, disabledIcon, hoverIcon, label, mnemonic, tooltip, style, null, false));
    }

    private void setImages(IServiceLocator locator, String iconStyle) {
        if (this.icon == null) {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ICommandImageService service = (ICommandImageService)locator.getService(clazz);
            this.icon = service.getImageDescriptor(this.command.getId(), 0, iconStyle);
            this.disabledIcon = service.getImageDescriptor(this.command.getId(), 1, iconStyle);
            this.hoverIcon = service.getImageDescriptor(this.command.getId(), 2, iconStyle);
            if (this.contributedIcon == null) {
                this.contributedIcon = this.icon;
            }
            if (this.contributedDisabledIcon == null) {
                this.contributedDisabledIcon = this.disabledIcon;
            }
            if (this.contributedHoverIcon == null) {
                this.contributedHoverIcon = this.hoverIcon;
            }
        }
    }

    private ICommandListener getCommandListener() {
        if (this.commandListener == null) {
            this.commandListener = new ICommandListener(){

                public void commandChanged(CommandEvent commandEvent) {
                    if (commandEvent.isHandledChanged() || commandEvent.isEnabledChanged() || commandEvent.isDefinedChanged()) {
                        CommandContributionItem.this.updateCommandProperties(commandEvent);
                    }
                }
            };
        }
        return this.commandListener;
    }

    private void updateCommandProperties(final CommandEvent commandEvent) {
        if (commandEvent.isHandledChanged()) {
            this.dropDownMenuOverride = null;
        }
        Runnable update = new Runnable(){

            public void run() {
                if (commandEvent.isEnabledChanged() || commandEvent.isHandledChanged()) {
                    IHandler handler;
                    IContributionManager parent;
                    if (CommandContributionItem.this.visibleEnabled && (parent = CommandContributionItem.this.getParent()) != null) {
                        parent.update(true);
                    }
                    if (CommandContributionItem.this.shouldRestoreAppearance(handler = commandEvent.getCommand().getHandler())) {
                        CommandContributionItem.this.label = CommandContributionItem.this.contributedLabel;
                        CommandContributionItem.this.icon = CommandContributionItem.this.contributedIcon;
                        CommandContributionItem.this.disabledIcon = CommandContributionItem.this.contributedDisabledIcon;
                        CommandContributionItem.this.hoverIcon = CommandContributionItem.this.contributedHoverIcon;
                    }
                }
                if (commandEvent.getCommand().isDefined()) {
                    CommandContributionItem.this.update(null);
                }
            }
        };
        if (this.display.getThread() == Thread.currentThread()) {
            update.run();
        } else {
            this.display.asyncExec(update);
        }
    }

    private boolean shouldRestoreAppearance(IHandler handler) {
        if (handler == null) {
            return true;
        }
        if (!(handler instanceof IElementUpdater)) {
            return true;
        }
        if (handler instanceof HandlerProxy) {
            HandlerProxy handlerProxy = (HandlerProxy)handler;
            IHandler actualHandler = handlerProxy.getHandler();
            return this.shouldRestoreAppearance(actualHandler);
        }
        return false;
    }

    public ParameterizedCommand getCommand() {
        return this.command;
    }

    void createCommand(String commandId, Map parameters) {
        if (commandId == null) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Unable to create menu item \"" + this.getId() + "\", no command id", null));
            return;
        }
        Command cmd = this.commandService.getCommand(commandId);
        if (!cmd.isDefined()) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Unable to create menu item \"" + this.getId() + "\", command \"" + commandId + "\" not defined", null));
            return;
        }
        this.command = ParameterizedCommand.generateCommand((Command)cmd, (Map)parameters);
    }

    public void fill(Menu parent, int index) {
        if (this.command == null) {
            return;
        }
        if (this.widget != null || parent == null) {
            return;
        }
        int tmpStyle = this.style;
        if (tmpStyle == 4) {
            tmpStyle = 8;
        }
        MenuItem item = null;
        item = index >= 0 ? new MenuItem(parent, tmpStyle, index) : new MenuItem(parent, tmpStyle);
        item.setData((Object)this);
        if (this.workbenchHelpSystem != null) {
            this.workbenchHelpSystem.setHelp(item, this.helpContextId);
        }
        item.addListener(12, this.getItemListener());
        item.addListener(13, this.getItemListener());
        this.widget = item;
        this.update(null);
        this.updateIcons();
        this.bindingService.addBindingManagerListener(this.bindingManagerListener);
    }

    public void fill(Composite parent) {
        if (this.command == null) {
            return;
        }
        if (this.widget != null || parent == null) {
            return;
        }
        int tmpStyle = this.style;
        if (tmpStyle == 4) {
            tmpStyle = 8;
        }
        Button item = new Button(parent, tmpStyle);
        item.setData((Object)this);
        if (this.workbenchHelpSystem != null) {
            this.workbenchHelpSystem.setHelp((Control)item, this.helpContextId);
        }
        item.addListener(12, this.getItemListener());
        item.addListener(13, this.getItemListener());
        this.widget = item;
        this.update(null);
        this.updateIcons();
        this.bindingService.addBindingManagerListener(this.bindingManagerListener);
    }

    public void fill(ToolBar parent, int index) {
        if (this.command == null) {
            return;
        }
        if (this.widget != null || parent == null) {
            return;
        }
        ToolItem item = null;
        item = index >= 0 ? new ToolItem(parent, this.style, index) : new ToolItem(parent, this.style);
        item.setData((Object)this);
        item.addListener(13, this.getItemListener());
        item.addListener(12, this.getItemListener());
        this.widget = item;
        this.update(null);
        this.updateIcons();
        this.bindingService.addBindingManagerListener(this.bindingManagerListener);
    }

    public void update() {
        this.update(null);
    }

    public void update(String id) {
        if (this.widget != null) {
            if (this.widget instanceof MenuItem) {
                this.updateMenuItem();
            } else if (this.widget instanceof ToolItem) {
                this.updateToolItem();
            } else if (this.widget instanceof Button) {
                this.updateButton();
            }
        }
    }

    private void updateMenuItem() {
        TriggerSequence binding;
        MenuItem item = (MenuItem)this.widget;
        String text = this.label;
        if (text == null && this.command != null) {
            try {
                text = this.command.getCommand().getName();
            }
            catch (NotDefinedException e) {
                StatusManager.getManager().handle(StatusUtil.newStatus(4, "Update item failed " + this.getId(), (Throwable)e));
            }
        }
        text = this.updateMnemonic(text);
        String keyBindingText = null;
        if (this.command != null && (binding = this.bindingService.getBestActiveBindingFor(this.command)) != null) {
            keyBindingText = binding.format();
        }
        if (text != null) {
            if (keyBindingText == null) {
                item.setText(text);
            } else {
                item.setText(String.valueOf(text) + '\t' + keyBindingText);
            }
        }
        if (item.getSelection() != this.checkedState) {
            item.setSelection(this.checkedState);
        }
        boolean shouldBeEnabled = this.isEnabled();
        if (!item.isDisposed() && item.getEnabled() != shouldBeEnabled) {
            item.setEnabled(shouldBeEnabled);
        }
    }

    private void updateToolItem() {
        ToolItem item = (ToolItem)this.widget;
        String text = this.label;
        String tooltip = this.label;
        if (text == null && this.command != null) {
            try {
                text = this.command.getCommand().getName();
                tooltip = this.command.getCommand().getDescription();
                if (tooltip == null || tooltip.trim().length() == 0) {
                    tooltip = text;
                }
            }
            catch (NotDefinedException e) {
                StatusManager.getManager().handle(StatusUtil.newStatus(4, "Update item failed " + this.getId(), (Throwable)e));
            }
        }
        if ((this.icon == null || (this.mode & MODE_FORCE_TEXT) == MODE_FORCE_TEXT) && text != null) {
            item.setText(text);
        }
        String toolTipText = this.getToolTipText(tooltip);
        item.setToolTipText(toolTipText);
        if (item.getSelection() != this.checkedState) {
            item.setSelection(this.checkedState);
        }
        boolean shouldBeEnabled = this.isEnabled();
        if (!item.isDisposed() && item.getEnabled() != shouldBeEnabled) {
            item.setEnabled(shouldBeEnabled);
        }
    }

    private void updateButton() {
        Button item = (Button)this.widget;
        String text = this.label;
        if (text == null && this.command != null) {
            try {
                text = this.command.getCommand().getName();
            }
            catch (NotDefinedException e) {
                StatusManager.getManager().handle(StatusUtil.newStatus(4, "Update item failed " + this.getId(), (Throwable)e));
            }
        }
        if (text != null) {
            item.setText(text);
        }
        String toolTipText = this.getToolTipText(text);
        item.setToolTipText(toolTipText);
        if (item.getSelection() != this.checkedState) {
            item.setSelection(this.checkedState);
        }
        boolean shouldBeEnabled = this.isEnabled();
        if (!item.isDisposed() && item.getEnabled() != shouldBeEnabled) {
            item.setEnabled(shouldBeEnabled);
        }
    }

    private String getToolTipText(String text) {
        String acceleratorText;
        TriggerSequence activeBinding;
        String tooltipText = this.tooltip;
        if (this.tooltip == null) {
            tooltipText = text != null ? text : "";
        }
        if ((activeBinding = this.bindingService.getBestActiveBindingFor(this.command)) != null && !activeBinding.isEmpty() && (acceleratorText = activeBinding.format()) != null && acceleratorText.length() != 0) {
            tooltipText = NLS.bind((String)CommandMessages.Tooltip_Accelerator, (Object)tooltipText, (Object)acceleratorText);
        }
        return tooltipText;
    }

    private String updateMnemonic(String s) {
        if (this.mnemonic == null || s == null) {
            return s;
        }
        int idx = s.indexOf(this.mnemonic);
        if (idx == -1) {
            return s;
        }
        return String.valueOf(s.substring(0, idx)) + '&' + s.substring(idx);
    }

    private void handleWidgetDispose(Event event) {
        if (event.widget == this.widget) {
            this.widget.removeListener(13, this.getItemListener());
            this.widget.removeListener(12, this.getItemListener());
            this.widget = null;
            this.disposeOldImages();
        }
    }

    public void dispose() {
        if (this.widget != null) {
            this.widget.dispose();
            this.widget = null;
        }
        if (this.elementRef != null) {
            this.commandService.unregisterElement(this.elementRef);
            this.elementRef = null;
        }
        if (this.commandListener != null) {
            this.command.getCommand().removeCommandListener(this.commandListener);
            this.commandListener = null;
        }
        if (this.bindingService != null) {
            this.bindingService.removeBindingManagerListener(this.bindingManagerListener);
        }
        this.command = null;
        this.commandService = null;
        this.bindingService = null;
        this.menuService = null;
        this.handlerService = null;
        this.disposeOldImages();
        super.dispose();
    }

    private void disposeOldImages() {
        if (this.localResourceManager != null) {
            this.localResourceManager.dispose();
            this.localResourceManager = null;
        }
    }

    private Listener getItemListener() {
        if (this.menuItemListener == null) {
            this.menuItemListener = new Listener(){

                public void handleEvent(Event event) {
                    switch (event.type) {
                        case 12: {
                            CommandContributionItem.this.handleWidgetDispose(event);
                            break;
                        }
                        case 13: {
                            if (event.widget == null) break;
                            CommandContributionItem.this.handleWidgetSelection(event);
                        }
                    }
                }
            };
        }
        return this.menuItemListener;
    }

    private void handleWidgetSelection(Event event) {
        if (this.openDropDownMenu(event)) {
            return;
        }
        if ((this.style & 0x22) != 0) {
            if (event.widget instanceof ToolItem) {
                this.checkedState = ((ToolItem)event.widget).getSelection();
            } else if (event.widget instanceof MenuItem) {
                this.checkedState = ((MenuItem)event.widget).getSelection();
            }
        }
        try {
            this.handlerService.executeCommand(this.command, event);
        }
        catch (ExecutionException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Failed to execute item " + this.getId(), (Throwable)e));
        }
        catch (NotDefinedException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Failed to execute item " + this.getId(), (Throwable)e));
        }
        catch (NotEnabledException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Failed to execute item " + this.getId(), (Throwable)e));
        }
        catch (NotHandledException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(4, "Failed to execute item " + this.getId(), (Throwable)e));
        }
    }

    private boolean openDropDownMenu(Event event) {
        int style;
        Widget item = event.widget;
        if (item != null && ((style = item.getStyle()) & 4) != 0 && event.detail == 4) {
            ToolItem ti = (ToolItem)item;
            final MenuManager menuManager = new MenuManager();
            Menu menu = menuManager.createContextMenu((Control)ti.getParent());
            if (this.workbenchHelpSystem != null) {
                this.workbenchHelpSystem.setHelp(menu, this.helpContextId);
            }
            menuManager.addMenuListener(new IMenuListener(){

                public void menuAboutToShow(IMenuManager manager) {
                    String id = CommandContributionItem.this.getId();
                    if (CommandContributionItem.this.dropDownMenuOverride != null) {
                        id = CommandContributionItem.this.dropDownMenuOverride;
                    }
                    CommandContributionItem.this.menuService.populateContributionManager((ContributionManager)menuManager, "menu:" + id);
                }
            });
            Point point = ti.getParent().toDisplay(new Point(event.x, event.y));
            menu.setLocation(point.x, point.y);
            menu.setVisible(true);
            return true;
        }
        return false;
    }

    private void setIcon(ImageDescriptor desc) {
        this.icon = desc;
        this.updateIcons();
    }

    private void updateIcons() {
        if (this.widget instanceof MenuItem) {
            MenuItem item = (MenuItem)this.widget;
            LocalResourceManager m = new LocalResourceManager(JFaceResources.getResources());
            try {
                item.setImage(this.icon == null ? null : m.createImage(this.icon));
            }
            catch (DeviceResourceException e) {
                this.icon = ImageDescriptor.getMissingImageDescriptor();
                item.setImage(m.createImage(this.icon));
                StatusManager.getManager().handle((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, "Failed to load image", (Throwable)e));
            }
            this.disposeOldImages();
            this.localResourceManager = m;
        } else if (this.widget instanceof ToolItem) {
            ToolItem item = (ToolItem)this.widget;
            LocalResourceManager m = new LocalResourceManager(JFaceResources.getResources());
            item.setDisabledImage(this.disabledIcon == null ? null : m.createImage(this.disabledIcon));
            item.setHotImage(this.hoverIcon == null ? null : m.createImage(this.hoverIcon));
            item.setImage(this.icon == null ? null : m.createImage(this.icon));
            this.disposeOldImages();
            this.localResourceManager = m;
        }
    }

    private void setText(String text) {
        this.label = text;
        this.update(null);
    }

    private void setChecked(boolean checked) {
        if (this.checkedState == checked) {
            return;
        }
        this.checkedState = checked;
        if (this.widget instanceof MenuItem) {
            ((MenuItem)this.widget).setSelection(this.checkedState);
        } else if (this.widget instanceof ToolItem) {
            ((ToolItem)this.widget).setSelection(this.checkedState);
        }
    }

    private void setTooltip(String text) {
        this.tooltip = text;
        if (this.widget instanceof ToolItem) {
            ((ToolItem)this.widget).setToolTipText(text);
        }
    }

    private void setDisabledIcon(ImageDescriptor desc) {
        this.disabledIcon = desc;
        this.updateIcons();
    }

    private void setHoverIcon(ImageDescriptor desc) {
        this.hoverIcon = desc;
        this.updateIcons();
    }

    public boolean isEnabled() {
        if (this.command != null) {
            this.command.getCommand().setEnabled((Object)this.menuService.getCurrentState());
            return this.command.getCommand().isEnabled();
        }
        return false;
    }

    public boolean isVisible() {
        if (this.visibleEnabled) {
            return super.isVisible() && this.isEnabled();
        }
        return super.isVisible();
    }

    public CommandContributionItemParameter getData() {
        CommandContributionItemParameter data = new CommandContributionItemParameter(this.serviceLocator, this.getId(), null, this.style);
        data.icon = this.contributedIcon;
        data.disabledIcon = this.contributedDisabledIcon;
        data.hoverIcon = this.contributedHoverIcon;
        data.label = this.contributedLabel;
        data.helpContextId = this.helpContextId;
        data.mnemonic = this.mnemonic;
        data.tooltip = this.tooltip;
        return data;
    }
}

