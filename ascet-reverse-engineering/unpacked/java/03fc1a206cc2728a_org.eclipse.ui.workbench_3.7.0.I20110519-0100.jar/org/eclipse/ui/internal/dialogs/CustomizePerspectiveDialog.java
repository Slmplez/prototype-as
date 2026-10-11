/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.CoolBarManager
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IContributionManager
 *  org.eclipse.jface.action.ICoolBarManager
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.StatusLineManager
 *  org.eclipse.jface.action.SubContributionItem
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.internal.provisional.action.IToolBarContributionItem
 *  org.eclipse.jface.internal.provisional.action.ToolBarContributionItem2
 *  org.eclipse.jface.layout.GridDataFactory
 *  org.eclipse.jface.preference.PreferenceDialog
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.ArrayContentProvider
 *  org.eclipse.jface.viewers.CheckStateChangedEvent
 *  org.eclipse.jface.viewers.CheckboxTableViewer
 *  org.eclipse.jface.viewers.CheckboxTreeViewer
 *  org.eclipse.jface.viewers.ComboViewer
 *  org.eclipse.jface.viewers.IBaseLabelProvider
 *  org.eclipse.jface.viewers.ICheckStateListener
 *  org.eclipse.jface.viewers.ICheckStateProvider
 *  org.eclipse.jface.viewers.ICheckable
 *  org.eclipse.jface.viewers.IColorProvider
 *  org.eclipse.jface.viewers.IContentProvider
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.ITreeContentProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.StructuredViewer
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.TreeViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerCell
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.jface.window.ToolTip
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.SashForm
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Resource
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Link
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.MessageBox
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.TabFolder
 *  org.eclipse.swt.widgets.TabItem
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableColumn
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 *  org.eclipse.swt.widgets.Tree
 *  org.eclipse.swt.widgets.TreeItem
 */
package org.eclipse.ui.internal.dialogs;

import java.net.URL;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.CoolBarManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManager;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.StatusLineManager;
import org.eclipse.jface.action.SubContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.internal.provisional.action.IToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.ToolBarContributionItem2;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.preference.PreferenceDialog;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.ArrayContentProvider;
import org.eclipse.jface.viewers.CheckStateChangedEvent;
import org.eclipse.jface.viewers.CheckboxTableViewer;
import org.eclipse.jface.viewers.CheckboxTreeViewer;
import org.eclipse.jface.viewers.ComboViewer;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICheckStateListener;
import org.eclipse.jface.viewers.ICheckStateProvider;
import org.eclipse.jface.viewers.ICheckable;
import org.eclipse.jface.viewers.IColorProvider;
import org.eclipse.jface.viewers.IContentProvider;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.ITreeContentProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.StructuredViewer;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.TreeViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerCell;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.jface.window.ToolTip;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.SashForm;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.MessageBox;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TabFolder;
import org.eclipse.swt.widgets.TabItem;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableColumn;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.TreeItem;
import org.eclipse.ui.IActionBars2;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.OpenPerspectiveAction;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.application.IWorkbenchWindowConfigurer;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.dialogs.PreferencesUtil;
import org.eclipse.ui.internal.ActionSetActionBars;
import org.eclipse.ui.internal.ActionSetContributionItem;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.PluginActionCoolBarContributionItem;
import org.eclipse.ui.internal.PluginActionSet;
import org.eclipse.ui.internal.PluginActionSetBuilder;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.actions.NewWizardShortcutAction;
import org.eclipse.ui.internal.dialogs.DialogUtil;
import org.eclipse.ui.internal.dialogs.TreeManager;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.internal.keys.BindingService;
import org.eclipse.ui.internal.provisional.application.IActionBarConfigurer2;
import org.eclipse.ui.internal.registry.ActionSetDescriptor;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.model.WorkbenchViewerComparator;
import org.eclipse.ui.part.PageBook;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.views.IViewCategory;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class CustomizePerspectiveDialog
extends TrayDialog {
    private static final String TOOLBAR_ICON = "$nl$/icons/full/obj16/toolbar.gif";
    private static final String SUBMENU_ICON = "$nl$/icons/full/obj16/submenu.gif";
    private static final String MENU_ICON = "$nl$/icons/full/obj16/menu.gif";
    private static final String WARNING_ICON = "$nl$/icons/full/obj16/warn_tsk.gif";
    private static final String SHORTCUT_CONTRIBUTION_ITEM_ID_OPEN_PERSPECTIVE = "openPerspective";
    private static final String SHORTCUT_CONTRIBUTION_ITEM_ID_SHOW_VIEW = "showView";
    private static final String KEYS_PREFERENCE_PAGE_ID = "org.eclipse.ui.preferencePages.Keys";
    private static final String NEW_LINE = System.getProperty("line.separator");
    private static final int MIN_TOOLTIP_WIDTH = 160;
    private WorkbenchWindow window;
    private Perspective perspective;
    private TabFolder tabFolder;
    private static final int TAB_WIDTH_IN_DLUS = 490;
    private static final int TAB_HEIGHT_IN_DLUS = 230;
    private final String[] shortcutMenuColumnHeaders = new String[]{WorkbenchMessages.ActionSetSelection_menuColumnHeader, WorkbenchMessages.ActionSetSelection_descriptionColumnHeader};
    private int[] shortcutMenuColumnWidths = new int[]{125, 300};
    ImageDescriptor menuImageDescriptor = null;
    ImageDescriptor submenuImageDescriptor = null;
    ImageDescriptor toolbarImageDescriptor = null;
    ImageDescriptor warningImageDescriptor = null;
    private TreeManager treeManager;
    private DisplayItem menuItems;
    private DisplayItem toolBarItems;
    private Category shortcuts;
    private DisplayItem wizards;
    private DisplayItem perspectives;
    private DisplayItem views;
    private Map idToActionSet = new HashMap();
    private final List actionSets = new ArrayList();
    private IWorkbenchWindowConfigurer configurer;
    private TabItem actionSetTab;
    private CheckboxTableViewer actionSetAvailabilityTable;
    private CheckboxTreeViewer menuStructureViewer1;
    private CheckboxTreeViewer menuStructureViewer2;
    private CheckboxTreeViewer toolbarStructureViewer1;
    private CheckboxTreeViewer toolbarStructureViewer2;
    private Set toDispose;
    private CustomizeActionBars customizeActionBars;
    private Font tooltipHeading;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    private static ActionContributionItem getIContributionItem(IWizardDescriptor descriptor, IWorkbenchWindow window) {
        NewWizardShortcutAction action = new NewWizardShortcutAction(window, descriptor);
        return new ActionContributionItem((IAction)action);
    }

    private static ActionContributionItem getIContributionItem(IPerspectiveDescriptor descriptor, IWorkbenchWindow window) {
        OpenPerspectiveAction action = new OpenPerspectiveAction(window, descriptor, null);
        return new ActionContributionItem((IAction)action);
    }

    private static ActionContributionItem getIContributionItem(IWorkbenchWindow window) {
        ActionFactory.IWorkbenchAction action = ActionFactory.SHOW_VIEW_MENU.create(window);
        return new ActionContributionItem((IAction)action);
    }

    public CustomizePerspectiveDialog(IWorkbenchWindowConfigurer configurer, Perspective persp) {
        super(configurer.getWindow().getShell());
        this.treeManager = new TreeManager();
        this.configurer = configurer;
        this.perspective = persp;
        this.window = (WorkbenchWindow)configurer.getWindow();
        this.toDispose = new HashSet();
        this.initializeIcons();
        this.initializeActionSetInput();
        this.loadMenuAndToolbarStructure();
    }

    protected void configureShell(Shell shell) {
        super.configureShell(shell);
        String title = this.perspective.getDesc().getLabel();
        title = NLS.bind((String)WorkbenchMessages.ActionSetSelection_customize, (Object)title);
        shell.setText(title);
        this.window.getWorkbench().getHelpSystem().setHelp((Control)shell, "org.eclipse.ui.action_set_selection_dialog_context");
    }

    protected Control createDialogArea(Composite parent) {
        FontData[] defaultFont = JFaceResources.getDefaultFont().getFontData();
        FontData boldFontData = new FontData(defaultFont[0].getName(), defaultFont[0].getHeight(), 1);
        this.tooltipHeading = new Font((Device)parent.getDisplay(), boldFontData);
        Composite composite = (Composite)super.createDialogArea(parent);
        this.tabFolder = new TabFolder(composite, 0);
        GridData gd = new GridData(4, 4, true, true);
        gd.widthHint = this.convertHorizontalDLUsToPixels(490);
        gd.heightHint = this.convertVerticalDLUsToPixels(230);
        this.tabFolder.setLayoutData((Object)gd);
        TabItem tab = new TabItem(this.tabFolder, 0);
        tab.setText(WorkbenchMessages.HideToolBarItems_toolBarItemsTab);
        tab.setControl((Control)this.createToolBarVisibilityPage((Composite)this.tabFolder));
        tab = new TabItem(this.tabFolder, 0);
        tab.setControl((Control)this.createMenuVisibilityPage((Composite)this.tabFolder));
        tab.setText(WorkbenchMessages.HideMenuItems_menuItemsTab);
        this.actionSetTab = new TabItem(this.tabFolder, 0);
        this.actionSetTab.setText(WorkbenchMessages.ActionSetSelection_actionSetsTab);
        this.actionSetTab.setControl((Control)this.createActionSetAvailabilityPage((Composite)this.tabFolder));
        if (this.showShortcutTab()) {
            TabItem item1 = new TabItem(this.tabFolder, 0);
            item1.setText(WorkbenchMessages.Shortcuts_shortcutTab);
            item1.setControl((Control)this.createShortCutsPage((Composite)this.tabFolder));
        }
        CustomizePerspectiveDialog.applyDialogFont((Control)this.tabFolder);
        return composite;
    }

    private Composite createShortCutsPage(Composite parent) {
        Composite menusComposite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        menusComposite.setLayout((Layout)layout);
        Label label = new Label(menusComposite, 64);
        label.setText(NLS.bind((String)WorkbenchMessages.Shortcuts_selectShortcutsLabel, (Object)this.perspective.getDesc().getLabel()));
        GridData data = new GridData(4, 0x1000000, true, false);
        label.setLayoutData((Object)data);
        Label sep = new Label(menusComposite, 258);
        sep.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        SashForm sashComposite = new SashForm(menusComposite, 256);
        data = new GridData(4, 4, true, true);
        sashComposite.setLayoutData((Object)data);
        Composite menusGroup = new Composite((Composite)sashComposite, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        menusGroup.setLayout((Layout)layout);
        menusGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        label = new Label(menusGroup, 64);
        label.setText(WorkbenchMessages.Shortcuts_availableMenus);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        Combo menusCombo = new Combo(menusGroup, 8);
        menusCombo.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        ComboViewer menusViewer = new ComboViewer(menusCombo);
        menusViewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        menusViewer.setLabelProvider(TreeManager.getLabelProvider());
        label = new Label(menusGroup, 64);
        label.setText(WorkbenchMessages.Shortcuts_availableCategories);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final CheckboxTreeViewer menuCategoriesViewer = new CheckboxTreeViewer(menusGroup);
        menuCategoriesViewer.getControl().setLayoutData((Object)new GridData(4, 4, true, true));
        menuCategoriesViewer.setLabelProvider(TreeManager.getLabelProvider());
        menuCategoriesViewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        menuCategoriesViewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        menuCategoriesViewer.setCheckStateProvider((ICheckStateProvider)new CategoryCheckProvider());
        menuCategoriesViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                Category category = (Category)event.getElement();
                category.setItemsState(event.getChecked());
                CustomizePerspectiveDialog.this.updateCategoryAndParents((StructuredViewer)menuCategoriesViewer, category);
            }
        });
        this.treeManager.addListener(new TreeManager.CheckListener(){

            public void checkChanged(TreeManager.TreeItem changedItem) {
                ShortcutItem item;
                if (changedItem instanceof Category) {
                    menuCategoriesViewer.update((Object)changedItem, null);
                } else if (changedItem instanceof ShortcutItem && (item = (ShortcutItem)changedItem).getCategory() != null) {
                    item.getCategory().update();
                    CustomizePerspectiveDialog.this.updateCategoryAndParents((StructuredViewer)menuCategoriesViewer, item.getCategory());
                }
            }
        });
        Composite menuItemsGroup = new Composite((Composite)sashComposite, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        menuItemsGroup.setLayout((Layout)layout);
        menuItemsGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        label = new Label(menuItemsGroup, 64);
        label.setText(WorkbenchMessages.Shortcuts_allShortcuts);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final CheckboxTableViewer menuItemsViewer = CheckboxTableViewer.newCheckList((Composite)menuItemsGroup, (int)2816);
        Table menuTable = menuItemsViewer.getTable();
        menuTable.setLayoutData((Object)new GridData(4, 4, true, true));
        menuItemsViewer.setLabelProvider((IBaseLabelProvider)new ShortcutLabelProvider());
        menuItemsViewer.setCheckStateProvider(TreeManager.getCheckStateProvider());
        menuItemsViewer.addCheckStateListener(this.treeManager.getViewerCheckStateListener());
        this.treeManager.getCheckListener((ICheckable)menuItemsViewer);
        menuItemsViewer.setContentProvider((IContentProvider)new TreeManager.TreeItemContentProvider(){

            public Object[] getChildren(Object parentElement) {
                if (parentElement instanceof Category) {
                    return ((Category)parentElement).getContributionItems().toArray();
                }
                return super.getChildren(parentElement);
            }
        });
        menuItemsViewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        menusViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                Category category = (Category)((IStructuredSelection)event.getSelection()).getFirstElement();
                menuCategoriesViewer.setInput((Object)category);
                menuItemsViewer.setInput((Object)category);
                if (category.getChildren().size() != 0) {
                    CustomizePerspectiveDialog.this.setSelectionOn((Viewer)menuCategoriesViewer, category.getChildren().get(0));
                }
            }
        });
        menuCategoriesViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                Category category = (Category)((IStructuredSelection)event.getSelection()).getFirstElement();
                menuItemsViewer.setInput((Object)category);
            }
        });
        menuTable.setHeaderVisible(true);
        int[] columnWidths = new int[this.shortcutMenuColumnWidths.length];
        int i = 0;
        while (i < this.shortcutMenuColumnWidths.length) {
            columnWidths[i] = this.convertHorizontalDLUsToPixels(this.shortcutMenuColumnWidths[i]);
            ++i;
        }
        i = 0;
        while (i < this.shortcutMenuColumnHeaders.length) {
            TableColumn tc = new TableColumn(menuTable, 0, i);
            tc.setResizable(true);
            tc.setText(this.shortcutMenuColumnHeaders[i]);
            tc.setWidth(columnWidths[i]);
            ++i;
        }
        sashComposite.setWeights(new int[]{30, 70});
        menusViewer.setInput((Object)this.shortcuts);
        if (this.shortcuts.getChildren().size() > 0) {
            this.setSelectionOn((Viewer)menusViewer, this.shortcuts.getChildren().get(0));
        }
        return menusComposite;
    }

    private Composite createActionSetAvailabilityPage(Composite parent) {
        CheckboxTableViewer actionSetsViewer;
        Composite actionSetsComposite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        actionSetsComposite.setLayout((Layout)layout);
        Label label = new Label(actionSetsComposite, 64);
        label.setText(NLS.bind((String)WorkbenchMessages.ActionSetSelection_selectActionSetsLabel, (Object)this.perspective.getDesc().getLabel()));
        GridData data = new GridData(4, 0x1000000, true, false);
        label.setLayoutData((Object)data);
        Label sep = new Label(actionSetsComposite, 258);
        sep.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        SashForm sashComposite = new SashForm(actionSetsComposite, 256);
        data = new GridData(4, 4, true, true);
        sashComposite.setLayoutData((Object)data);
        Composite actionSetGroup = new Composite((Composite)sashComposite, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        actionSetGroup.setLayout((Layout)layout);
        actionSetGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        label = new Label(actionSetGroup, 64);
        label.setText(WorkbenchMessages.ActionSetSelection_availableActionSets);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.actionSetAvailabilityTable = actionSetsViewer = CheckboxTableViewer.newCheckList((Composite)actionSetGroup, (int)2816);
        actionSetsViewer.getTable().setLayoutData((Object)new GridData(4, 4, true, true));
        actionSetsViewer.setLabelProvider((IBaseLabelProvider)new LabelProvider());
        actionSetsViewer.setContentProvider((IContentProvider)new ArrayContentProvider());
        actionSetsViewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        actionSetsViewer.setCheckStateProvider(new ICheckStateProvider(){

            public boolean isChecked(Object element) {
                return ((ActionSet)element).isActive();
            }

            public boolean isGrayed(Object element) {
                return false;
            }
        });
        actionSetsViewer.setInput((Object)this.actionSets.toArray());
        Table table = actionSetsViewer.getTable();
        new TableToolTip(table);
        final ActionSet[] selectedActionSet = new ActionSet[1];
        ViewerFilter setFilter = new ViewerFilter(){

            public boolean select(Viewer viewer, Object parentElement, Object element) {
                if (selectedActionSet[0] == null) {
                    return false;
                }
                return CustomizePerspectiveDialog.includeInSetStructure((DisplayItem)element, selectedActionSet[0]);
            }
        };
        actionSetsViewer.addCheckStateListener(new ICheckStateListener(){

            public void checkStateChanged(CheckStateChangedEvent event) {
                ActionSet actionSet = (ActionSet)event.getElement();
                if (event.getChecked()) {
                    actionSet.setActive(true);
                    Iterator i = actionSet.contributionItems.iterator();
                    while (i.hasNext()) {
                        DisplayItem item = (DisplayItem)i.next();
                        item.setCheckState(true);
                    }
                } else {
                    actionSet.setActive(false);
                }
            }
        });
        Composite actionGroup = new Composite((Composite)sashComposite, 0);
        layout = new GridLayout();
        layout.numColumns = 2;
        layout.makeColumnsEqualWidth = true;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = 0;
        actionGroup.setLayout((Layout)layout);
        actionGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        Composite menubarGroup = new Composite(actionGroup, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        menubarGroup.setLayout((Layout)layout);
        menubarGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        label = new Label(menubarGroup, 64);
        label.setText(WorkbenchMessages.ActionSetSelection_menubarActions);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final TreeViewer actionSetMenuViewer = new TreeViewer(menubarGroup);
        actionSetMenuViewer.setAutoExpandLevel(-1);
        actionSetMenuViewer.getControl().setLayoutData((Object)new GridData(4, 4, true, true));
        actionSetMenuViewer.setUseHashlookup(true);
        actionSetMenuViewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        actionSetMenuViewer.setLabelProvider(TreeManager.getLabelProvider());
        actionSetMenuViewer.addFilter(setFilter);
        actionSetMenuViewer.setInput((Object)this.menuItems);
        Tree tree = actionSetMenuViewer.getTree();
        new ItemDetailToolTip(actionSetMenuViewer, tree, false, true, setFilter);
        Composite toolbarGroup = new Composite(actionGroup, 0);
        layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        toolbarGroup.setLayout((Layout)layout);
        toolbarGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        label = new Label(toolbarGroup, 64);
        label.setText(WorkbenchMessages.ActionSetSelection_toolbarActions);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final TreeViewer actionSetToolbarViewer = new TreeViewer(toolbarGroup);
        actionSetToolbarViewer.setAutoExpandLevel(-1);
        actionSetToolbarViewer.getControl().setLayoutData((Object)new GridData(4, 4, true, true));
        actionSetToolbarViewer.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        actionSetToolbarViewer.setLabelProvider(TreeManager.getLabelProvider());
        actionSetToolbarViewer.addFilter(setFilter);
        actionSetToolbarViewer.setInput((Object)this.toolBarItems);
        tree = actionSetToolbarViewer.getTree();
        new ItemDetailToolTip(actionSetToolbarViewer, tree, false, true, setFilter);
        actionSetsViewer.addSelectionChangedListener(new ISelectionChangedListener(){

            public void selectionChanged(SelectionChangedEvent event) {
                selectedActionSet[0] = (ActionSet)((IStructuredSelection)event.getSelection()).getFirstElement();
                actionSetMenuViewer.setInput((Object)CustomizePerspectiveDialog.this.menuItems);
                actionSetToolbarViewer.setInput((Object)CustomizePerspectiveDialog.this.toolBarItems);
            }
        });
        sashComposite.setWeights(new int[]{30, 70});
        return actionSetsComposite;
    }

    private Composite createMenuVisibilityPage(Composite parent) {
        Composite hideMenuItemsComposite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        hideMenuItemsComposite.setLayout((Layout)layout);
        Label label = new Label(hideMenuItemsComposite, 64);
        label.setText(WorkbenchMessages.HideMenuItems_chooseMenuItemsLabel);
        GridData data = new GridData(4, 0x1000000, true, false);
        label.setLayoutData((Object)data);
        Label sep = new Label(hideMenuItemsComposite, 258);
        sep.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final PageBook book = new PageBook(hideMenuItemsComposite, 0);
        data = new GridData(1808);
        book.setLayoutData(data);
        final Composite simpleComposite = CustomizePerspectiveDialog.createItemStructureGroup(book, WorkbenchMessages.HideMenuItems_menuStructure);
        this.menuStructureViewer1 = this.initStructureViewer(simpleComposite, new TreeManager.ViewerCheckStateListener(), null);
        this.treeManager.getCheckListener((ICheckable)this.menuStructureViewer1);
        this.menuStructureViewer1.setCheckStateProvider(TreeManager.getCheckStateProvider());
        this.menuStructureViewer1.setInput((Object)this.menuItems);
        final SashForm advancedComposite = new SashForm((Composite)book, 256);
        data = new GridData(4, 4, true, true);
        advancedComposite.setLayoutData((Object)data);
        final TableViewer actionSetViewer = this.initActionSetViewer(CustomizePerspectiveDialog.createActionSetGroup((Composite)advancedComposite));
        actionSetViewer.addFilter((ViewerFilter)new ShowUsedActionSetsFilter(this.menuItems));
        actionSetViewer.setInput((Object)this.actionSets.toArray());
        ActionSetFilter menuStructureFilterByActionSet = new ActionSetFilter();
        Composite menuStructureComposite = CustomizePerspectiveDialog.createItemStructureGroup((Composite)advancedComposite, WorkbenchMessages.HideMenuItems_menuStructure);
        FilteredViewerCheckListener menuStructureFilter = new FilteredViewerCheckListener(TreeManager.getTreeContentProvider(), menuStructureFilterByActionSet);
        this.menuStructureViewer2 = this.initStructureViewer(menuStructureComposite, menuStructureFilter, menuStructureFilterByActionSet);
        this.treeManager.addListener(new FilteredModelCheckListener(menuStructureFilterByActionSet, (StructuredViewer)this.menuStructureViewer2));
        this.menuStructureViewer2.addFilter((ViewerFilter)menuStructureFilterByActionSet);
        actionSetViewer.addSelectionChangedListener((ISelectionChangedListener)new ActionSetSelectionChangedListener((TreeViewer)this.menuStructureViewer2, menuStructureFilterByActionSet));
        this.menuStructureViewer2.setCheckStateProvider((ICheckStateProvider)new FilteredTreeCheckProvider(TreeManager.getTreeContentProvider(), menuStructureFilterByActionSet));
        this.menuStructureViewer2.setInput((Object)this.menuItems);
        this.treeManager.addListener(new TreeManager.CheckListener(){

            public void checkChanged(TreeManager.TreeItem changedItem) {
                if (!(changedItem instanceof DisplayItem)) {
                    return;
                }
                if (!changedItem.getState()) {
                    return;
                }
                if (CustomizePerspectiveDialog.isAvailable((DisplayItem)changedItem)) {
                    return;
                }
                changedItem.setCheckState(false);
            }
        });
        final Button showCommandGroupFilterButton = new Button(hideMenuItemsComposite, 32);
        showCommandGroupFilterButton.setText(WorkbenchMessages.HideItems_turnOnActionSets);
        showCommandGroupFilterButton.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent e) {
            }

            public void widgetSelected(SelectionEvent e) {
                if (showCommandGroupFilterButton.getSelection()) {
                    Object o = ((StructuredSelection)CustomizePerspectiveDialog.this.menuStructureViewer1.getSelection()).getFirstElement();
                    ActionSet initSelectAS = null;
                    DisplayItem initSelectCI = null;
                    if (o instanceof DisplayItem) {
                        initSelectCI = (DisplayItem)o;
                        initSelectAS = initSelectCI.getActionSet();
                    }
                    if (initSelectAS == null) {
                        initSelectAS = (ActionSet)actionSetViewer.getElementAt(0);
                    }
                    CustomizePerspectiveDialog.this.setSelectionOn((Viewer)actionSetViewer, initSelectAS);
                    actionSetViewer.reveal((Object)initSelectAS);
                    if (initSelectCI != null) {
                        CustomizePerspectiveDialog.this.setSelectionOn((Viewer)CustomizePerspectiveDialog.this.menuStructureViewer2, initSelectCI);
                        CustomizePerspectiveDialog.this.menuStructureViewer2.reveal((Object)initSelectCI);
                    }
                    book.showPage((Control)advancedComposite);
                } else {
                    book.showPage((Control)simpleComposite);
                }
            }
        });
        book.showPage((Control)simpleComposite);
        advancedComposite.setWeights(new int[]{30, 70});
        return hideMenuItemsComposite;
    }

    private Composite createToolBarVisibilityPage(Composite parent) {
        Composite hideToolbarItemsComposite = new Composite(parent, 0);
        GridLayout layout = new GridLayout();
        hideToolbarItemsComposite.setLayout((Layout)layout);
        Label label = new Label(hideToolbarItemsComposite, 64);
        label.setText(WorkbenchMessages.HideToolBarItems_chooseToolBarItemsLabel);
        GridData data = new GridData(4, 0x1000000, true, false);
        label.setLayoutData((Object)data);
        Label sep = new Label(hideToolbarItemsComposite, 258);
        sep.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        final PageBook book = new PageBook(hideToolbarItemsComposite, 0);
        data = new GridData(1808);
        book.setLayoutData(data);
        final Composite simpleComposite = CustomizePerspectiveDialog.createItemStructureGroup(book, WorkbenchMessages.HideToolBarItems_toolBarStructure);
        this.toolbarStructureViewer1 = this.initStructureViewer(simpleComposite, new TreeManager.ViewerCheckStateListener(), null);
        this.treeManager.getCheckListener((ICheckable)this.toolbarStructureViewer1);
        this.toolbarStructureViewer1.setCheckStateProvider(TreeManager.getCheckStateProvider());
        this.toolbarStructureViewer1.setInput((Object)this.toolBarItems);
        final SashForm advancedComposite = new SashForm((Composite)book, 256);
        data = new GridData(4, 4, true, true);
        advancedComposite.setLayoutData((Object)data);
        final TableViewer actionSetViewer = this.initActionSetViewer(CustomizePerspectiveDialog.createActionSetGroup((Composite)advancedComposite));
        actionSetViewer.addFilter((ViewerFilter)new ShowUsedActionSetsFilter(this.toolBarItems));
        actionSetViewer.setInput((Object)this.actionSets.toArray());
        ActionSetFilter toolbarStructureFilterByActionSet = new ActionSetFilter();
        Composite toolbarStructureComposite = CustomizePerspectiveDialog.createItemStructureGroup((Composite)advancedComposite, WorkbenchMessages.HideToolBarItems_toolBarStructure);
        FilteredViewerCheckListener toolbarStructureFilter = new FilteredViewerCheckListener(TreeManager.getTreeContentProvider(), toolbarStructureFilterByActionSet);
        this.toolbarStructureViewer2 = this.initStructureViewer(toolbarStructureComposite, toolbarStructureFilter, toolbarStructureFilterByActionSet);
        this.toolbarStructureViewer2.addFilter((ViewerFilter)toolbarStructureFilterByActionSet);
        this.treeManager.addListener(new FilteredModelCheckListener(toolbarStructureFilterByActionSet, (StructuredViewer)this.toolbarStructureViewer2));
        actionSetViewer.addSelectionChangedListener((ISelectionChangedListener)new ActionSetSelectionChangedListener((TreeViewer)this.toolbarStructureViewer2, toolbarStructureFilterByActionSet));
        this.toolbarStructureViewer2.setCheckStateProvider((ICheckStateProvider)new FilteredTreeCheckProvider(TreeManager.getTreeContentProvider(), toolbarStructureFilterByActionSet));
        this.toolbarStructureViewer2.setInput((Object)this.toolBarItems);
        this.treeManager.addListener(new TreeManager.CheckListener(){

            public void checkChanged(TreeManager.TreeItem changedItem) {
                if (!(changedItem instanceof DisplayItem)) {
                    return;
                }
                if (!changedItem.getState()) {
                    return;
                }
                if (CustomizePerspectiveDialog.isAvailable((DisplayItem)changedItem)) {
                    return;
                }
                changedItem.setCheckState(false);
            }
        });
        final Button showCommandGroupFilterButton = new Button(hideToolbarItemsComposite, 32);
        showCommandGroupFilterButton.setText(WorkbenchMessages.HideItems_turnOnActionSets);
        showCommandGroupFilterButton.addSelectionListener(new SelectionListener(){

            public void widgetDefaultSelected(SelectionEvent e) {
            }

            public void widgetSelected(SelectionEvent e) {
                if (showCommandGroupFilterButton.getSelection()) {
                    Object o = ((StructuredSelection)CustomizePerspectiveDialog.this.toolbarStructureViewer1.getSelection()).getFirstElement();
                    ActionSet initSelectAS = null;
                    DisplayItem initSelectCI = null;
                    if (o instanceof DisplayItem) {
                        initSelectCI = (DisplayItem)o;
                        initSelectAS = initSelectCI.getActionSet();
                    }
                    if (initSelectAS == null) {
                        initSelectAS = (ActionSet)actionSetViewer.getElementAt(0);
                    }
                    CustomizePerspectiveDialog.this.setSelectionOn((Viewer)actionSetViewer, initSelectAS);
                    actionSetViewer.reveal((Object)initSelectAS);
                    if (initSelectCI != null) {
                        CustomizePerspectiveDialog.this.setSelectionOn((Viewer)CustomizePerspectiveDialog.this.toolbarStructureViewer2, initSelectCI);
                        CustomizePerspectiveDialog.this.toolbarStructureViewer2.reveal((Object)initSelectCI);
                    }
                    book.showPage((Control)advancedComposite);
                } else {
                    book.showPage((Control)simpleComposite);
                }
            }
        });
        book.showPage((Control)simpleComposite);
        advancedComposite.setWeights(new int[]{30, 70});
        return hideToolbarItemsComposite;
    }

    private TableViewer initActionSetViewer(Composite parent) {
        TableViewer actionSetViewer = new TableViewer(parent, 2816);
        actionSetViewer.getTable().setLayoutData((Object)new GridData(1808));
        actionSetViewer.setLabelProvider((IBaseLabelProvider)new LabelProvider());
        actionSetViewer.setComparator((ViewerComparator)new WorkbenchViewerComparator());
        actionSetViewer.setContentProvider((IContentProvider)new ArrayContentProvider());
        Table table = actionSetViewer.getTable();
        new TableToolTip(table);
        return actionSetViewer;
    }

    private CheckboxTreeViewer initStructureViewer(Composite parent, ICheckStateListener checkStateListener, ViewerFilter filter) {
        CheckboxTreeViewer ctv = new CheckboxTreeViewer(parent, 2816);
        ctv.getControl().setLayoutData((Object)new GridData(1808));
        ctv.setUseHashlookup(true);
        ctv.setContentProvider((IContentProvider)TreeManager.getTreeContentProvider());
        ctv.addCheckStateListener((ICheckStateListener)new UnavailableContributionItemCheckListener(ctv, checkStateListener));
        ctv.setLabelProvider((IBaseLabelProvider)new GrayOutUnavailableLabelProvider(parent.getDisplay(), filter));
        new ItemDetailToolTip((TreeViewer)ctv, ctv.getTree(), true, true, filter);
        return ctv;
    }

    private static Composite createItemStructureGroup(Composite composite, String labelText) {
        GridLayout layout = new GridLayout();
        Composite menubarGroup = new Composite(composite, 0);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        menubarGroup.setLayout((Layout)layout);
        menubarGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        Label label = new Label(menubarGroup, 64);
        label.setText(labelText);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        return menubarGroup;
    }

    private static Composite createActionSetGroup(Composite composite) {
        Composite actionSetGroup = new Composite(composite, 0);
        GridLayout layout = new GridLayout();
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        actionSetGroup.setLayout((Layout)layout);
        actionSetGroup.setLayoutData((Object)new GridData(4, 4, true, true));
        Label label = new Label(actionSetGroup, 64);
        label.setText(WorkbenchMessages.HideItems_commandGroupTitle);
        label.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        return actionSetGroup;
    }

    private void setSelectionOn(Viewer viewer, Object selected) {
        viewer.setSelection((ISelection)new StructuredSelection(selected), true);
    }

    private static boolean includeInSetStructure(DisplayItem item, ActionSet set) {
        if (item.actionSet != null && item.actionSet.equals(set)) {
            return true;
        }
        Iterator i = item.getChildren().iterator();
        while (i.hasNext()) {
            DisplayItem child = (DisplayItem)i.next();
            if (!CustomizePerspectiveDialog.includeInSetStructure(child, set)) continue;
            return true;
        }
        return false;
    }

    private static boolean isAvailable(DisplayItem item) {
        if (item.getActionSet() == null) {
            return true;
        }
        if (item.getActionSet().isActive()) {
            return true;
        }
        Iterator i = item.getChildren().iterator();
        while (i.hasNext()) {
            DisplayItem child = (DisplayItem)i.next();
            if (!CustomizePerspectiveDialog.isAvailable(child)) continue;
            return true;
        }
        return false;
    }

    private static boolean isEffectivelyAvailable(DisplayItem item, ViewerFilter filter) {
        DisplayItem child;
        if (!CustomizePerspectiveDialog.isAvailable(item)) {
            return false;
        }
        List children = item.getChildren();
        if (children.isEmpty()) {
            return true;
        }
        Iterator i = children.iterator();
        while (i.hasNext()) {
            child = (DisplayItem)i.next();
            if (filter != null && !filter.select(null, null, (Object)child) || !CustomizePerspectiveDialog.isAvailable(child)) continue;
            return true;
        }
        i = children.iterator();
        while (i.hasNext()) {
            child = (DisplayItem)i.next();
            if (filter != null && !filter.select(null, null, (Object)child) || !CustomizePerspectiveDialog.isEffectivelyAvailable(child, filter)) continue;
            return true;
        }
        return false;
    }

    private static void collectDescendantCommandGroups(Collection collection, DisplayItem item, ViewerFilter filter) {
        List children = item.getChildren();
        Iterator i = children.iterator();
        while (i.hasNext()) {
            DisplayItem child = (DisplayItem)i.next();
            if ((filter == null || filter.select(null, null, (Object)child)) && child.getActionSet() != null) {
                collection.add(child.getActionSet());
            }
            CustomizePerspectiveDialog.collectDescendantCommandGroups(collection, child, filter);
        }
    }

    private Binding[] getKeyBindings(DisplayItem item) {
        IBindingService bindingService;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!((bindingService = (IBindingService)this.window.getService(clazz)) instanceof BindingService)) {
            return new Binding[0];
        }
        String id = CustomizePerspectiveDialog.getCommandID(item);
        String param = CustomizePerspectiveDialog.getParamID(item);
        BindingManager bindingManager = ((BindingService)bindingService).getBindingManager();
        Collection allBindings = bindingManager.getActiveBindingsDisregardingContextFlat();
        ArrayList<Binding> foundBindings = new ArrayList<Binding>(2);
        Iterator i = allBindings.iterator();
        while (i.hasNext()) {
            Binding binding = (Binding)i.next();
            if (binding.getParameterizedCommand() == null || binding.getParameterizedCommand().getId() == null || !binding.getParameterizedCommand().getId().equals(id)) continue;
            if (param == null) {
                foundBindings.add(binding);
                continue;
            }
            Map m = binding.getParameterizedCommand().getParameterMap();
            String key = null;
            if (CustomizePerspectiveDialog.isNewWizard(item)) {
                key = "newWizardId";
            } else if (CustomizePerspectiveDialog.isShowView(item)) {
                key = "org.eclipse.ui.views.showView.viewId";
            } else if (CustomizePerspectiveDialog.isShowPerspective(item)) {
                key = "org.eclipse.ui.perspectives.showPerspective.perspectiveId";
            }
            if (key == null || !param.equals(m.get(key))) continue;
            foundBindings.add(binding);
        }
        Binding[] bindings = foundBindings.toArray(new Binding[foundBindings.size()]);
        return bindings;
    }

    private String keyBindingsAsString(Binding[] bindings) {
        String keybindings = null;
        int i = 0;
        while (i < bindings.length) {
            boolean alreadyRecorded = false;
            int j = 0;
            while (j < i && !alreadyRecorded) {
                if (bindings[i].getTriggerSequence().equals((Object)bindings[j].getTriggerSequence())) {
                    alreadyRecorded = true;
                }
                ++j;
            }
            if (!alreadyRecorded) {
                String keybinding = bindings[i].getTriggerSequence().format();
                keybindings = i == 0 ? keybinding : Util.createList(keybindings, keybinding);
            }
            ++i;
        }
        return keybindings;
    }

    private void actionSetAvailabilityChanged() {
        this.menuStructureViewer1.refresh();
        this.menuStructureViewer2.refresh();
        this.toolbarStructureViewer1.refresh();
        this.toolbarStructureViewer2.refresh();
    }

    private void initializeActionSetInput() {
        ActionSetRegistry reg = WorkbenchPlugin.getDefault().getActionSetRegistry();
        IActionSetDescriptor[] sets = reg.getActionSets();
        IActionSetDescriptor[] actionSetDescriptors = ((WorkbenchPage)this.window.getActivePage()).getActionSets();
        List<IActionSetDescriptor> initiallyAvailableActionSets = Arrays.asList(actionSetDescriptors);
        int i = 0;
        while (i < sets.length) {
            ActionSetDescriptor actionSetDesc = (ActionSetDescriptor)sets[i];
            if (!WorkbenchActivityHelper.filterItem(actionSetDesc)) {
                ActionSet actionSet = new ActionSet(actionSetDesc, initiallyAvailableActionSets.contains(actionSetDesc));
                this.idToActionSet.put(actionSetDesc.getId(), actionSet);
                this.actionSets.add(actionSet);
            }
            ++i;
        }
    }

    private void initializeIcons() {
        String iconPath = MENU_ICON;
        URL url = BundleUtility.find("org.eclipse.ui", iconPath);
        this.menuImageDescriptor = ImageDescriptor.createFromURL((URL)url);
        iconPath = SUBMENU_ICON;
        url = BundleUtility.find("org.eclipse.ui", iconPath);
        this.submenuImageDescriptor = ImageDescriptor.createFromURL((URL)url);
        iconPath = TOOLBAR_ICON;
        url = BundleUtility.find("org.eclipse.ui", iconPath);
        this.toolbarImageDescriptor = ImageDescriptor.createFromURL((URL)url);
        iconPath = WARNING_ICON;
        url = BundleUtility.find("org.eclipse.ui", iconPath);
        this.warningImageDescriptor = ImageDescriptor.createFromURL((URL)url);
    }

    private void initializeNewWizardsMenu(DisplayItem menu, Category parentCategory, IWizardCategory element, List activeIds) {
        Category category = new Category(this, element.getLabel());
        parentCategory.addChild(category);
        IWizardDescriptor[] wizards = element.getWizards();
        int i = 0;
        while (i < wizards.length) {
            WorkbenchWizardElement wizard = (WorkbenchWizardElement)wizards[i];
            ShortcutItem item = new ShortcutItem(wizard.getLabel(), wizard);
            item.setLabel(wizard.getLabel());
            item.setDescription(wizard.getDescription());
            if (wizard.getImageDescriptor() != null) {
                item.setImageDescriptor(wizard.getImageDescriptor());
            }
            item.setCheckState(activeIds.contains(wizard.getId()));
            menu.addChild(item);
            category.addShortcutItem(item);
            ++i;
        }
        IWizardCategory[] children = element.getCategories();
        int i2 = 0;
        while (i2 < children.length) {
            this.initializeNewWizardsMenu(menu, category, children[i2], activeIds);
            ++i2;
        }
    }

    private void initializeNewWizardsMenu(DisplayItem menu) {
        Category rootForNewWizards = new Category(this, WorkbenchMessages.ActionSetDialogInput_wizardCategory);
        this.shortcuts.addChild(rootForNewWizards);
        IWizardCategory wizardCollection = WorkbenchPlugin.getDefault().getNewWizardRegistry().getRootCategory();
        IWizardCategory[] wizardCategories = wizardCollection.getCategories();
        List<String> activeIDs = Arrays.asList(this.perspective.getNewWizardShortcuts());
        int i = 0;
        while (i < wizardCategories.length) {
            IWizardCategory element = wizardCategories[i];
            if (!WorkbenchActivityHelper.filterItem(element)) {
                this.initializeNewWizardsMenu(menu, rootForNewWizards, element, activeIDs);
            }
            ++i;
        }
    }

    private void initializePerspectivesMenu(DisplayItem menu) {
        Category rootForPerspectives = new Category(this, WorkbenchMessages.ActionSetDialogInput_perspectiveCategory);
        this.shortcuts.addChild(rootForPerspectives);
        IPerspectiveRegistry perspReg = WorkbenchPlugin.getDefault().getPerspectiveRegistry();
        IPerspectiveDescriptor[] persps = perspReg.getPerspectives();
        List<String> activeIds = Arrays.asList(this.perspective.getPerspectiveShortcuts());
        int i = 0;
        while (i < persps.length) {
            IPerspectiveDescriptor perspective = persps[i];
            if (!WorkbenchActivityHelper.filterItem(perspective)) {
                ShortcutItem child = new ShortcutItem(perspective.getLabel(), perspective);
                child.setImageDescriptor(perspective.getImageDescriptor());
                child.setDescription(perspective.getDescription());
                child.setCheckState(activeIds.contains(perspective.getId()));
                menu.addChild(child);
                rootForPerspectives.addShortcutItem(child);
            }
            ++i;
        }
    }

    private void initializeViewsMenu(DisplayItem menu) {
        Category rootForViews = new Category(this, WorkbenchMessages.ActionSetDialogInput_viewCategory);
        this.shortcuts.addChild(rootForViews);
        IViewRegistry viewReg = WorkbenchPlugin.getDefault().getViewRegistry();
        IViewCategory[] categories = viewReg.getCategories();
        List<String> activeIds = Arrays.asList(this.perspective.getShowViewShortcuts());
        int i = 0;
        while (i < categories.length) {
            IViewCategory category = categories[i];
            if (!WorkbenchActivityHelper.filterItem(category)) {
                Category viewCategory = new Category(this, category.getLabel());
                rootForViews.addChild(viewCategory);
                IViewDescriptor[] views = category.getViews();
                if (views != null) {
                    int j = 0;
                    while (j < views.length) {
                        IViewDescriptor view = views[j];
                        if (!view.getId().equals("org.eclipse.ui.internal.introview") && !WorkbenchActivityHelper.filterItem(view)) {
                            ShortcutItem child = new ShortcutItem(view.getLabel(), view);
                            child.setImageDescriptor(view.getImageDescriptor());
                            child.setDescription(view.getDescription());
                            child.setCheckState(activeIds.contains(view.getId()));
                            menu.addChild(child);
                            viewCategory.addShortcutItem(child);
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
    }

    private void loadMenuAndToolbarStructure() {
        WorkbenchWindow workbenchWindow = (WorkbenchWindow)PlatformUI.getWorkbench().getActiveWorkbenchWindow();
        this.customizeActionBars = new CustomizeActionBars(this.configurer);
        this.window.fillActionBars(this.customizeActionBars, 7);
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IMenuService menuService = (IMenuService)this.window.getService(clazz);
        menuService.populateContributionManager((ContributionManager)this.customizeActionBars.getMenuManager(), "menu:org.eclipse.ui.main.menu");
        ICoolBarManager coolbar = this.customizeActionBars.getCoolBarManager();
        if (coolbar != null) {
            menuService.populateContributionManager((ContributionManager)coolbar, "toolbar:org.eclipse.ui.main.toolbar");
        }
        Iterator i = this.actionSets.iterator();
        while (i.hasNext()) {
            ActionSet actionSet = (ActionSet)i.next();
            ActionSetDescriptor descriptor = actionSet.descriptor;
            PluginActionSet pluginActionSet = this.buildMenusAndToolbarsFor(this.customizeActionBars, descriptor);
            if (pluginActionSet == null) continue;
            pluginActionSet.dispose();
        }
        this.customizeActionBars.menuManager.setVisible(true);
        CustomizePerspectiveDialog.makeAllContributionsVisible((IContributionManager)this.customizeActionBars.menuManager);
        Menu menu = this.customizeActionBars.menuManager.createMenuBar((Decorations)workbenchWindow.getShell());
        CoolBar cb = this.customizeActionBars.coolBarManager.createControl((Composite)workbenchWindow.getShell());
        cb.equals(cb);
        this.customizeActionBars.menuManager.updateAll(true);
        this.customizeActionBars.coolBarManager.update(true);
        this.shortcuts = new Category(this, "");
        this.toolBarItems = this.createToolBarStructure(cb);
        this.menuItems = this.createMenuStructure(menu);
    }

    private PluginActionSet buildMenusAndToolbarsFor(CustomizeActionBars customizeActionBars, ActionSetDescriptor actionSetDesc) {
        String id = actionSetDesc.getId();
        ActionSetActionBars bars = new ActionSetActionBars(customizeActionBars, this.window, customizeActionBars, id);
        bars.getMenuManager().setVisible(true);
        PluginActionSetBuilder builder = new PluginActionSetBuilder();
        PluginActionSet actionSet = null;
        try {
            actionSet = (PluginActionSet)actionSetDesc.createActionSet();
            actionSet.init(null, bars);
        }
        catch (CoreException ex) {
            WorkbenchPlugin.log("Unable to create action set " + actionSetDesc.getId(), ex);
            return null;
        }
        builder.buildMenuAndToolBarStructure(actionSet, this.window);
        return actionSet;
    }

    private static String getCommandID(DisplayItem item) {
        IContributionItem object = item.getIContributionItem();
        if (item instanceof ShortcutItem && CustomizePerspectiveDialog.isShowView(item)) {
            return "org.eclipse.ui.views.showView";
        }
        return CustomizePerspectiveDialog.getIDFromIContributionItem(object);
    }

    public static String getIDFromIContributionItem(Object object) {
        if (object instanceof ActionContributionItem) {
            ActionContributionItem item = (ActionContributionItem)object;
            IAction action = item.getAction();
            if (action == null) {
                return null;
            }
            if (action instanceof NewWizardShortcutAction) {
                return "org.eclipse.ui.newWizard";
            }
            if (action instanceof OpenPerspectiveAction) {
                return "org.eclipse.ui.perspectives.showPerspective";
            }
            String id = action.getActionDefinitionId();
            if (id != null) {
                return id;
            }
            return action.getId();
        }
        if (object instanceof ActionSetContributionItem) {
            ActionSetContributionItem item = (ActionSetContributionItem)object;
            IContributionItem subitem = item.getInnerItem();
            return CustomizePerspectiveDialog.getIDFromIContributionItem(subitem);
        }
        if (object instanceof CommandContributionItem) {
            CommandContributionItem item = (CommandContributionItem)((Object)object);
            ParameterizedCommand command = item.getCommand();
            if (command == null) {
                return null;
            }
            return command.getId();
        }
        if (object instanceof IPerspectiveDescriptor) {
            return ((IPerspectiveDescriptor)object).getId();
        }
        if (object instanceof IViewDescriptor) {
            return ((IViewDescriptor)object).getId();
        }
        if (object instanceof WorkbenchWizardElement) {
            return ((WorkbenchWizardElement)object).getLocalId();
        }
        if (object instanceof IContributionItem) {
            String id = ((IContributionItem)object).getId();
            if (id != null) {
                return id;
            }
            return object.getClass().getName();
        }
        return null;
    }

    private static String getDescription(Object object) {
        if (object instanceof DisplayItem) {
            DisplayItem item = (DisplayItem)object;
            if (CustomizePerspectiveDialog.isNewWizard(item)) {
                ShortcutItem shortcut = (ShortcutItem)item;
                IWizardDescriptor descriptor = (IWizardDescriptor)shortcut.getDescriptor();
                return descriptor.getDescription();
            }
            if (CustomizePerspectiveDialog.isShowPerspective(item)) {
                ShortcutItem shortcut = (ShortcutItem)item;
                IPerspectiveDescriptor descriptor = (IPerspectiveDescriptor)shortcut.getDescriptor();
                return descriptor.getDescription();
            }
            if (CustomizePerspectiveDialog.isShowView(item)) {
                ShortcutItem shortcut = (ShortcutItem)item;
                IViewDescriptor descriptor = (IViewDescriptor)shortcut.getDescriptor();
                return descriptor.getDescription();
            }
            if (item instanceof DynamicContributionItem) {
                return WorkbenchMessages.HideItems_dynamicItemDescription;
            }
            IContributionItem contrib = item.getIContributionItem();
            return CustomizePerspectiveDialog.getDescription(contrib);
        }
        if (object instanceof ActionSet) {
            ActionSet actionSet = (ActionSet)object;
            return actionSet.descriptor.getDescription();
        }
        return null;
    }

    private static String getDescription(IContributionItem item) {
        if (item instanceof ActionContributionItem) {
            ActionContributionItem aci = (ActionContributionItem)item;
            IAction action = aci.getAction();
            if (action == null) {
                return null;
            }
            return action.getDescription();
        }
        if (item instanceof ActionSetContributionItem) {
            ActionSetContributionItem asci = (ActionSetContributionItem)item;
            IContributionItem subitem = asci.getInnerItem();
            return CustomizePerspectiveDialog.getDescription(subitem);
        }
        return null;
    }

    private static String getParamID(DisplayItem object) {
        if (object instanceof ShortcutItem) {
            ShortcutItem shortcutItem = (ShortcutItem)object;
            if (CustomizePerspectiveDialog.isNewWizard(shortcutItem)) {
                ActionContributionItem item = (ActionContributionItem)object.getIContributionItem();
                NewWizardShortcutAction nwsa = (NewWizardShortcutAction)item.getAction();
                return nwsa.getLocalId();
            }
            if (CustomizePerspectiveDialog.isShowPerspective(shortcutItem)) {
                ActionContributionItem item = (ActionContributionItem)object.getIContributionItem();
                OpenPerspectiveAction opa = (OpenPerspectiveAction)item.getAction();
                return opa.getLocalId();
            }
            if (CustomizePerspectiveDialog.isShowView(shortcutItem)) {
                IViewDescriptor descriptor = (IViewDescriptor)shortcutItem.getDescriptor();
                return descriptor.getId();
            }
        }
        return null;
    }

    private static boolean isNewWizard(DisplayItem item) {
        if (!(item instanceof ShortcutItem)) {
            return false;
        }
        return ((ShortcutItem)item).getDescriptor() instanceof IWizardDescriptor;
    }

    private static boolean isShowPerspective(DisplayItem item) {
        if (!(item instanceof ShortcutItem)) {
            return false;
        }
        return ((ShortcutItem)item).getDescriptor() instanceof IPerspectiveDescriptor;
    }

    private static boolean isShowView(DisplayItem item) {
        if (!(item instanceof ShortcutItem)) {
            return false;
        }
        return ((ShortcutItem)item).getDescriptor() instanceof IViewDescriptor;
    }

    private static String getActionSetID(IContributionItem item) {
        if (item instanceof ActionSetContributionItem) {
            ActionSetContributionItem asci = (ActionSetContributionItem)item;
            return asci.getActionSetId();
        }
        if (item instanceof PluginActionCoolBarContributionItem) {
            PluginActionCoolBarContributionItem pacbci = (PluginActionCoolBarContributionItem)item;
            return pacbci.getActionSetId();
        }
        return null;
    }

    private static void makeAllContributionsVisible(IContributionManager manager) {
        IContributionItem[] items = manager.getItems();
        int i = 0;
        while (i < items.length) {
            CustomizePerspectiveDialog.makeContributionVisible(items[i]);
            ++i;
        }
    }

    private static void makeContributionVisible(IContributionItem item) {
        item.setVisible(true);
        if (item instanceof IContributionManager) {
            CustomizePerspectiveDialog.makeAllContributionsVisible((IContributionManager)item);
        }
        if (item instanceof SubContributionItem) {
            CustomizePerspectiveDialog.makeContributionVisible(((SubContributionItem)item).getInnerItem());
        }
    }

    private DisplayItem createMenuStructure(Menu menu) {
        DisplayItem root = new DisplayItem(this, "", null);
        this.createMenuEntries(menu, root, true);
        return root;
    }

    private void createMenuEntries(Menu menu, DisplayItem parent, boolean trackDynamics) {
        Object data;
        if (menu == null) {
            return;
        }
        MenuItem[] menuItems = menu.getItems();
        HashMap<IContributionItem, IContributionItem> findDynamics = new HashMap<IContributionItem, IContributionItem>();
        DisplayItem dynamicEntry = null;
        if (trackDynamics && menu.getParentItem() != null && (data = menu.getParentItem().getData()) instanceof IContributionManager) {
            IContributionManager manager = (IContributionManager)data;
            IContributionItem[] items = manager.getItems();
            int i = 0;
            while (i < items.length) {
                if (items[i].isDynamic()) {
                    findDynamics.put(i > 0 ? items[i - 1] : null, items[i]);
                }
                ++i;
            }
            if (findDynamics.containsKey(null)) {
                IContributionItem item = (IContributionItem)findDynamics.get(null);
                dynamicEntry = new DynamicContributionItem(item);
                parent.addChild(dynamicEntry);
            }
        }
        int i = 0;
        while (i < menuItems.length) {
            if (!menuItems[i].getText().equals("")) {
                IContributionItem contributionItem = (IContributionItem)menuItems[i].getData();
                if (dynamicEntry != null && contributionItem.equals(dynamicEntry.getIContributionItem())) {
                    ((DynamicContributionItem)dynamicEntry).addCurrentItem(menuItems[i]);
                } else {
                    DisplayItem menuEntry = new DisplayItem(this, menuItems[i].getText(), contributionItem);
                    Image image = menuItems[i].getImage();
                    if (image != null) {
                        menuEntry.setImageDescriptor(ImageDescriptor.createFromImage((Image)image));
                    }
                    menuEntry.setActionSet((ActionSet)this.idToActionSet.get(CustomizePerspectiveDialog.getActionSetID(contributionItem)));
                    parent.addChild(menuEntry);
                    if (ActionFactory.NEW.getId().equals(((IContributionItem)menuItems[i].getData()).getId())) {
                        this.initializeNewWizardsMenu(menuEntry);
                        this.wizards = menuEntry;
                    } else if (SHORTCUT_CONTRIBUTION_ITEM_ID_OPEN_PERSPECTIVE.equals(((IContributionItem)menuItems[i].getData()).getId())) {
                        this.initializePerspectivesMenu(menuEntry);
                        this.perspectives = menuEntry;
                    } else if (SHORTCUT_CONTRIBUTION_ITEM_ID_SHOW_VIEW.equals(((IContributionItem)menuItems[i].getData()).getId())) {
                        this.initializeViewsMenu(menuEntry);
                        this.views = menuEntry;
                    } else {
                        this.createMenuEntries(menuItems[i].getMenu(), menuEntry, trackDynamics);
                    }
                    if (menuEntry.getChildren().isEmpty()) {
                        menuEntry.setCheckState(this.getMenuItemIsVisible(menuEntry));
                    }
                    if (image == null) {
                        if (parent != null && parent.getParent() == null) {
                            menuEntry.setImageDescriptor(this.menuImageDescriptor);
                        } else if (menuEntry.getChildren().size() > 0) {
                            menuEntry.setImageDescriptor(this.submenuImageDescriptor);
                        }
                    }
                }
                if (trackDynamics && findDynamics.containsKey(menuItems[i].getData())) {
                    IContributionItem item = (IContributionItem)findDynamics.get(menuItems[i].getData());
                    dynamicEntry = new DynamicContributionItem(item);
                    dynamicEntry.setCheckState(this.getMenuItemIsVisible(dynamicEntry));
                    parent.addChild(dynamicEntry);
                }
            }
            ++i;
        }
    }

    private boolean getMenuItemIsVisible(DisplayItem item) {
        return CustomizePerspectiveDialog.isAvailable(item) && !this.perspective.getHiddenMenuItems().contains(CustomizePerspectiveDialog.getCommandID(item));
    }

    private boolean getToolbarItemIsVisible(DisplayItem item) {
        return CustomizePerspectiveDialog.isAvailable(item) && !this.perspective.getHiddenToolbarItems().contains(CustomizePerspectiveDialog.getCommandID(item));
    }

    private void updateCategoryAndParents(StructuredViewer viewer, Category category) {
        while (category.getParent() != this.shortcuts) {
            viewer.update((Object)category, null);
            category = (Category)category.getParent();
        }
    }

    private DisplayItem createToolBarStructure(CoolBar coolbar) {
        DisplayItem root = new DisplayItem(this, null, null);
        this.createToolbarEntries(coolbar, root);
        return root;
    }

    private void createToolbarEntries(CoolBar coolbar, DisplayItem parent) {
        if (coolbar == null) {
            return;
        }
        CoolItem[] items = coolbar.getItems();
        ArrayList<DisplayItem> entries = new ArrayList<DisplayItem>(items.length);
        int i = 0;
        while (i < items.length) {
            String text;
            IContributionItem contributionItem = (IContributionItem)items[i].getData();
            if (contributionItem instanceof IToolBarContributionItem) {
                IToolBarContributionItem item = (IToolBarContributionItem)contributionItem;
                text = this.window.getToolbarLabel(item.getId());
                if (text == null || text.equals("")) {
                    text = items[i].getText();
                }
            } else {
                text = items[i].getText();
            }
            DisplayItem toolBarEntry = new DisplayItem(this, text, contributionItem);
            if (items[i].getImage() == null) {
                toolBarEntry.setImageDescriptor(this.toolbarImageDescriptor);
            }
            toolBarEntry.setActionSet((ActionSet)this.idToActionSet.get(CustomizePerspectiveDialog.getActionSetID(contributionItem)));
            parent.addChild(toolBarEntry);
            Control control = items[i].getControl();
            if (control instanceof ToolBar) {
                ToolItem[] toolitems = ((ToolBar)control).getItems();
                this.createToolbarEntries(toolitems, toolBarEntry);
            }
            entries.add(toolBarEntry);
            ++i;
        }
    }

    private void createToolbarEntries(ToolItem[] toolitems, DisplayItem parent) {
        if (toolitems == null) {
            return;
        }
        int i = 0;
        while (i < toolitems.length) {
            IContributionItem contributionItem = (IContributionItem)toolitems[i].getData();
            if (!contributionItem.isGroupMarker() && !contributionItem.isSeparator()) {
                DisplayItem toolBarEntry = new DisplayItem(this, toolitems[i].getToolTipText(), contributionItem);
                Image image = toolitems[i].getImage();
                if (image != null) {
                    toolBarEntry.setImageDescriptor(ImageDescriptor.createFromImage((Image)image));
                }
                toolBarEntry.setActionSet((ActionSet)this.idToActionSet.get(CustomizePerspectiveDialog.getActionSetID(contributionItem)));
                contributionItem.setVisible(true);
                toolBarEntry.setCheckState(this.getToolbarItemIsVisible(toolBarEntry));
                parent.addChild(toolBarEntry);
            }
            ++i;
        }
    }

    private boolean showShortcutTab() {
        return this.window.containsSubmenu(4) || this.window.containsSubmenu(2) || this.window.containsSubmenu(1);
    }

    private ArrayList getVisibleIDs(TreeManager.TreeItem root) {
        if (root == null) {
            return new ArrayList();
        }
        ArrayList<String> ids = new ArrayList<String>(root.getChildren().size());
        Iterator i = root.getChildren().iterator();
        while (i.hasNext()) {
            DisplayItem object = (DisplayItem)i.next();
            if (!(object instanceof ShortcutItem) || !object.getState()) continue;
            ids.add(CustomizePerspectiveDialog.getParamID(object));
        }
        return ids;
    }

    private void getChangedIds(DisplayItem item, List invisible, List visible) {
        if (item instanceof ShortcutItem) {
            return;
        }
        if (item == this.wizards || item == this.perspectives || item == this.views) {
            return;
        }
        if (item.getChildren().size() > 0) {
            if (item.isChangedByUser()) {
                String id = CustomizePerspectiveDialog.getCommandID(item);
                if (item.getState()) {
                    visible.add(id);
                } else {
                    invisible.add(id);
                }
            }
            Iterator i = item.getChildren().iterator();
            while (i.hasNext()) {
                this.getChangedIds((DisplayItem)i.next(), invisible, visible);
            }
        } else if (item.isChangedByUser()) {
            String id = CustomizePerspectiveDialog.getCommandID(item);
            if (item.getState()) {
                visible.add(id);
            } else {
                invisible.add(id);
            }
        }
    }

    private boolean updateHiddenElements(DisplayItem items, Collection currentHidden) {
        Object id;
        boolean hasChanges = false;
        ArrayList changedAndVisible = new ArrayList();
        ArrayList changedAndInvisible = new ArrayList();
        this.getChangedIds(items, changedAndInvisible, changedAndVisible);
        Iterator iterator = changedAndVisible.iterator();
        while (iterator.hasNext()) {
            id = iterator.next();
            if (!currentHidden.contains(id)) continue;
            hasChanges = true;
            currentHidden.remove(id);
        }
        iterator = changedAndInvisible.iterator();
        while (iterator.hasNext()) {
            id = iterator.next();
            if (currentHidden.contains(id)) continue;
            hasChanges = true;
            currentHidden.add(id);
        }
        return hasChanges;
    }

    protected void okPressed() {
        if (this.showShortcutTab()) {
            this.perspective.setNewWizardActionIds(this.getVisibleIDs(this.wizards));
            this.perspective.setPerspectiveActionIds(this.getVisibleIDs(this.perspectives));
            this.perspective.setShowViewActionIds(this.getVisibleIDs(this.views));
        }
        boolean requiresUpdate = false;
        ArrayList<ActionSetDescriptor> toAdd = new ArrayList<ActionSetDescriptor>();
        ArrayList<ActionSetDescriptor> toRemove = new ArrayList<ActionSetDescriptor>();
        Iterator i = this.actionSets.iterator();
        while (i.hasNext()) {
            ActionSet actionSet = (ActionSet)i.next();
            if (!actionSet.wasChanged()) continue;
            requiresUpdate = true;
            if (actionSet.isActive()) {
                toAdd.add(actionSet.descriptor);
                continue;
            }
            toRemove.add(actionSet.descriptor);
        }
        this.perspective.turnOnActionSets(toAdd.toArray(new IActionSetDescriptor[toAdd.size()]));
        this.perspective.turnOffActionSets(toRemove.toArray(new IActionSetDescriptor[toRemove.size()]));
        requiresUpdate |= this.updateHiddenElements(this.menuItems, this.perspective.getHiddenMenuItems());
        if (requiresUpdate |= this.updateHiddenElements(this.toolBarItems, this.perspective.getHiddenToolbarItems())) {
            this.perspective.updateActionBars();
        }
        super.okPressed();
    }

    public boolean close() {
        this.tooltipHeading.dispose();
        Iterator i = this.toDispose.iterator();
        while (i.hasNext()) {
            Resource resource = (Resource)i.next();
            resource.dispose();
        }
        this.treeManager.dispose();
        this.customizeActionBars.dispose();
        return super.close();
    }

    private String removeShortcut(String label) {
        if (label == null) {
            return label;
        }
        int end = label.lastIndexOf(64);
        if (end >= 0) {
            label = label.substring(0, end);
        }
        if ((end = label.lastIndexOf(9)) >= 0) {
            label = label.substring(0, end);
        }
        return label;
    }

    protected boolean applyDialogFont() {
        return false;
    }

    protected boolean isResizable() {
        return true;
    }

    private void viewActionSet(DisplayItem item) {
        this.viewActionSet(item.getActionSet());
    }

    private void viewActionSet(ActionSet actionSet) {
        this.tabFolder.setSelection(this.actionSetTab);
        this.actionSetAvailabilityTable.reveal((Object)actionSet);
        this.setSelectionOn((Viewer)this.actionSetAvailabilityTable, actionSet);
        this.actionSetAvailabilityTable.getControl().setFocus();
    }

    private static int getLeafStates(TreeManager.TreeItem item, ITreeContentProvider provider, ViewerFilter filter) {
        Object[] children = provider.getChildren((Object)item);
        boolean checkedFound = false;
        boolean uncheckedFound = false;
        int i = 0;
        while (i < children.length) {
            if (filter.select(null, null, children[i])) {
                TreeManager.TreeItem child = (TreeManager.TreeItem)children[i];
                switch (CustomizePerspectiveDialog.getLeafStates(child, provider, filter)) {
                    case 2: {
                        checkedFound = true;
                        break;
                    }
                    case 1: {
                        uncheckedFound = true;
                        checkedFound = true;
                        break;
                    }
                    case 0: {
                        uncheckedFound = true;
                    }
                }
                if (checkedFound && uncheckedFound) {
                    return 1;
                }
            }
            ++i;
        }
        if (!checkedFound && !uncheckedFound) {
            return item.getState() ? 2 : 0;
        }
        return checkedFound ? 2 : 0;
    }

    private static void setAllLeafs(DisplayItem item, boolean value, ITreeContentProvider provider, ViewerFilter filter) {
        Object[] children = provider.getChildren((Object)item);
        boolean isLeaf = true;
        int i = 0;
        while (i < children.length) {
            isLeaf = false;
            if (filter.select(null, null, children[i])) {
                DisplayItem child = (DisplayItem)children[i];
                CustomizePerspectiveDialog.setAllLeafs(child, value, provider, filter);
            }
            ++i;
        }
        if (isLeaf) {
            item.setCheckState(value);
        }
    }

    static /* synthetic */ Map access$13(CustomizePerspectiveDialog customizePerspectiveDialog) {
        return customizePerspectiveDialog.idToActionSet;
    }

    static /* synthetic */ void access$15(CustomizePerspectiveDialog customizePerspectiveDialog, ActionSet actionSet) {
        customizePerspectiveDialog.viewActionSet(actionSet);
    }

    private class ActionSet {
        private ActionSetDescriptor descriptor;
        private List contributionItems;
        private boolean active;
        private boolean wasChanged = false;

        public ActionSet(ActionSetDescriptor descriptor, boolean active) {
            this.descriptor = descriptor;
            this.active = active;
            this.contributionItems = new ArrayList();
        }

        public void addItem(DisplayItem item) {
            this.contributionItems.add(item);
        }

        public String toString() {
            return this.descriptor.getLabel();
        }

        public boolean isActive() {
            return this.active;
        }

        public boolean wasChanged() {
            return this.wasChanged;
        }

        public void setActive(boolean active) {
            boolean wasActive = this.active;
            this.active = active;
            if (!active) {
                Iterator i = this.contributionItems.iterator();
                while (i.hasNext()) {
                    DisplayItem item = (DisplayItem)i.next();
                    item.setCheckState(false);
                }
            }
            if (wasActive != active) {
                CustomizePerspectiveDialog.this.actionSetAvailabilityChanged();
            }
            this.wasChanged = true;
        }
    }

    private static class ActionSetFilter
    extends ViewerFilter {
        private ActionSet actionSet;

        private ActionSetFilter() {
        }

        public void setActionSet(ActionSet actionSet) {
            this.actionSet = actionSet;
        }

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            if (!(element instanceof DisplayItem)) {
                return false;
            }
            if (this.actionSet == null) {
                return false;
            }
            return CustomizePerspectiveDialog.includeInSetStructure((DisplayItem)element, this.actionSet);
        }
    }

    private static final class ActionSetSelectionChangedListener
    implements ISelectionChangedListener {
        private final TreeViewer filterViewer;
        private final ActionSetFilter filter;

        public ActionSetSelectionChangedListener(TreeViewer viewer, ActionSetFilter menuStructureFilterByActionSet) {
            this.filterViewer = viewer;
            this.filter = menuStructureFilterByActionSet;
        }

        public void selectionChanged(SelectionChangedEvent event) {
            Object element = ((IStructuredSelection)event.getSelection()).getFirstElement();
            this.filter.setActionSet((ActionSet)element);
            this.filterViewer.refresh();
            this.filterViewer.expandAll();
        }
    }

    private class Category
    extends TreeManager.TreeItem {
        private List contributionItems;
        final /* synthetic */ CustomizePerspectiveDialog this$0;

        public Category(CustomizePerspectiveDialog customizePerspectiveDialog, String label) {
            TreeManager treeManager = customizePerspectiveDialog.treeManager;
            treeManager.getClass();
            super(treeManager, label == null ? null : DialogUtil.removeAccel(customizePerspectiveDialog.removeShortcut(label)));
            this.this$0 = customizePerspectiveDialog;
            this.contributionItems = new ArrayList();
        }

        public List getContributionItems() {
            return this.contributionItems;
        }

        public void addShortcutItem(ShortcutItem item) {
            this.contributionItems.add(item);
            item.setCategory(this);
        }

        public void update() {
            Iterator i = this.contributionItems.iterator();
            while (i.hasNext()) {
                DisplayItem item = (DisplayItem)i.next();
                if (!item.getState()) continue;
                this.setCheckState(true);
                return;
            }
            this.setCheckState(false);
        }

        public void setItemsState(boolean state) {
            Iterator i = this.contributionItems.iterator();
            while (i.hasNext()) {
                DisplayItem item = (DisplayItem)i.next();
                item.setCheckState(state);
            }
            i = this.getChildren().iterator();
            while (i.hasNext()) {
                Category category = (Category)i.next();
                category.setItemsState(state);
            }
        }
    }

    private static class CategoryCheckProvider
    implements ICheckStateProvider {
        private CategoryCheckProvider() {
        }

        public boolean isChecked(Object element) {
            Category category = (Category)element;
            if (category.getChildren().isEmpty() && category.getContributionItems().isEmpty()) {
                return false;
            }
            Iterator i = category.getChildren().iterator();
            while (i.hasNext()) {
                Category child = (Category)i.next();
                if (!this.isChecked(child)) continue;
                return true;
            }
            i = category.getContributionItems().iterator();
            while (i.hasNext()) {
                DisplayItem item = (DisplayItem)i.next();
                if (!item.getState()) continue;
                return true;
            }
            return false;
        }

        public boolean isGrayed(Object element) {
            boolean hasChecked = false;
            boolean hasUnchecked = false;
            Category category = (Category)element;
            Iterator i = category.getChildren().iterator();
            while (i.hasNext()) {
                Category child = (Category)i.next();
                if (this.isGrayed(child)) {
                    return true;
                }
                if (this.isChecked(child)) {
                    hasChecked = true;
                } else {
                    hasUnchecked = true;
                }
                if (!hasChecked || !hasUnchecked) continue;
                return true;
            }
            i = category.getContributionItems().iterator();
            while (i.hasNext()) {
                DisplayItem item = (DisplayItem)i.next();
                if (item.getState()) {
                    hasChecked = true;
                } else {
                    hasUnchecked = true;
                }
                if (!hasChecked || !hasUnchecked) continue;
                return true;
            }
            return false;
        }
    }

    public class CustomizeActionBars
    implements IActionBarConfigurer2,
    IActionBars2 {
        IWorkbenchWindowConfigurer configurer;
        private MenuManager menuManager = new MenuManager();
        private CoolBarManager coolBarManager = new CoolBarManager();
        private StatusLineManager statusLineManager = new StatusLineManager();

        public CustomizeActionBars(IWorkbenchWindowConfigurer configurer) {
            this.configurer = configurer;
        }

        public IWorkbenchWindowConfigurer getWindowConfigurer() {
            return this.configurer;
        }

        public IMenuManager getMenuManager() {
            return this.menuManager;
        }

        public IStatusLineManager getStatusLineManager() {
            return this.statusLineManager;
        }

        public ICoolBarManager getCoolBarManager() {
            return this.coolBarManager;
        }

        public IToolBarManager getToolBarManager() {
            return null;
        }

        public void setGlobalActionHandler(String actionID, IAction handler) {
        }

        public void updateActionBars() {
        }

        public void clearGlobalActionHandlers() {
        }

        public IAction getGlobalActionHandler(String actionId) {
            return null;
        }

        public void registerGlobalAction(IAction action) {
        }

        public void dispose() {
            this.coolBarManager.dispose();
            this.menuManager.dispose();
            this.statusLineManager.dispose();
        }

        public final IServiceLocator getServiceLocator() {
            return this.configurer.getWindow();
        }

        public IToolBarContributionItem createToolBarContributionItem(IToolBarManager toolBarManager, String id) {
            return new ToolBarContributionItem2(toolBarManager, id);
        }

        public IToolBarManager createToolBarManager() {
            return new ToolBarManager();
        }
    }

    private class DisplayItem
    extends TreeManager.TreeItem {
        private IContributionItem item;
        private ActionSet actionSet;
        final /* synthetic */ CustomizePerspectiveDialog this$0;

        public DisplayItem(CustomizePerspectiveDialog customizePerspectiveDialog, String label, IContributionItem item) {
            TreeManager treeManager = customizePerspectiveDialog.treeManager;
            treeManager.getClass();
            super(treeManager, label == null ? null : DialogUtil.removeAccel(customizePerspectiveDialog.removeShortcut(label)));
            this.this$0 = customizePerspectiveDialog;
            this.item = item;
        }

        public void setActionSet(ActionSet actionSet) {
            this.actionSet = actionSet;
            if (actionSet != null) {
                actionSet.addItem(this);
            }
        }

        public ActionSet getActionSet() {
            return this.actionSet;
        }

        public IContributionItem getIContributionItem() {
            return this.item;
        }
    }

    private class DynamicContributionItem
    extends DisplayItem {
        private List preview = new ArrayList();

        public DynamicContributionItem(IContributionItem item) {
            super(CustomizePerspectiveDialog.this, WorkbenchMessages.HideItems_dynamicItemName, item);
        }

        public void addCurrentItem(MenuItem item) {
            this.preview.add(item);
        }

        public List getCurrentItems() {
            return this.preview;
        }
    }

    private final class FilteredModelCheckListener
    implements TreeManager.CheckListener {
        private final ActionSetFilter filter;
        private final StructuredViewer viewer;

        private FilteredModelCheckListener(ActionSetFilter filter, StructuredViewer viewer) {
            this.filter = filter;
            this.viewer = viewer;
        }

        public void checkChanged(TreeManager.TreeItem changedItem) {
            TreeManager.TreeItem item = changedItem;
            boolean update = false;
            while (item != null) {
                boolean bl = update = update || this.filter.select(null, null, item);
                if (update) {
                    this.viewer.update((Object)item, null);
                }
                item = item.getParent();
            }
        }
    }

    private static class FilteredTreeCheckProvider
    implements ICheckStateProvider {
        private ITreeContentProvider contentProvider;
        private ViewerFilter filter;

        public FilteredTreeCheckProvider(ITreeContentProvider contentProvider, ViewerFilter filter) {
            this.contentProvider = contentProvider;
            this.filter = filter;
        }

        public boolean isChecked(Object element) {
            TreeManager.TreeItem treeItem = (TreeManager.TreeItem)element;
            return CustomizePerspectiveDialog.getLeafStates(treeItem, this.contentProvider, this.filter) != 0;
        }

        public boolean isGrayed(Object element) {
            TreeManager.TreeItem treeItem = (TreeManager.TreeItem)element;
            return CustomizePerspectiveDialog.getLeafStates(treeItem, this.contentProvider, this.filter) == 1;
        }
    }

    private static class FilteredViewerCheckListener
    implements ICheckStateListener {
        private ITreeContentProvider contentProvider;
        private ViewerFilter filter;

        public FilteredViewerCheckListener(ITreeContentProvider contentProvider, ViewerFilter filter) {
            this.contentProvider = contentProvider;
            this.filter = filter;
        }

        public void checkStateChanged(CheckStateChangedEvent event) {
            CustomizePerspectiveDialog.setAllLeafs((DisplayItem)event.getElement(), event.getChecked(), this.contentProvider, this.filter);
        }
    }

    private class GrayOutUnavailableLabelProvider
    extends TreeManager.TreeItemLabelProvider
    implements IColorProvider {
        private Display display;
        private ViewerFilter filter;

        public GrayOutUnavailableLabelProvider(Display display, ViewerFilter filter) {
            this.display = display;
            this.filter = filter;
        }

        public Color getBackground(Object element) {
            return null;
        }

        public Color getForeground(Object element) {
            if (!CustomizePerspectiveDialog.isEffectivelyAvailable((DisplayItem)element, this.filter)) {
                return this.display.getSystemColor(15);
            }
            return null;
        }

        public Image getImage(Object element) {
            DisplayItem item;
            Image actual = super.getImage(element);
            if (element instanceof DisplayItem && actual != null && !CustomizePerspectiveDialog.isEffectivelyAvailable(item = (DisplayItem)element, this.filter)) {
                ImageDescriptor original = ImageDescriptor.createFromImage((Image)actual);
                ImageDescriptor disable = ImageDescriptor.createWithFlags((ImageDescriptor)original, (int)1);
                Image newImage = disable.createImage();
                CustomizePerspectiveDialog.this.toDispose.add(newImage);
                return newImage;
            }
            return actual;
        }
    }

    private class ItemDetailToolTip
    extends NameAndDescriptionToolTip {
        private Tree tree;
        private boolean showActionSet;
        private boolean showKeyBindings;
        private ViewerFilter filter;
        private TreeViewer v;

        private ItemDetailToolTip(TreeViewer v, Tree tree, boolean showActionSet, boolean showKeyBindings, ViewerFilter filter) {
            super((Control)tree, 2);
            this.tree = tree;
            this.v = v;
            this.showActionSet = showActionSet;
            this.showKeyBindings = showKeyBindings;
            this.filter = filter;
            this.setHideOnMouseDown(false);
        }

        public Point getLocation(Point tipSize, Event event) {
            ViewerCell cell = this.v.getCell(new Point(event.x, event.y));
            if (cell != null) {
                return this.tree.toDisplay(event.x, cell.getBounds().y + cell.getBounds().height);
            }
            return super.getLocation(tipSize, event);
        }

        protected Object getToolTipArea(Event event) {
            return this.v.getCell(new Point(event.x, event.y));
        }

        protected void addContent(Composite destination, Object modelElement) {
            DisplayItem item = (DisplayItem)modelElement;
            if (this.showActionSet) {
                String actionSetName;
                String text = null;
                Image image = null;
                if (CustomizePerspectiveDialog.isEffectivelyAvailable(item, this.filter)) {
                    if (item.actionSet != null) {
                        actionSetName = item.getActionSet().descriptor.getLabel();
                        text = NLS.bind((String)WorkbenchMessages.HideItems_itemInActionSet, (Object)actionSetName);
                    }
                } else {
                    image = CustomizePerspectiveDialog.this.warningImageDescriptor.createImage();
                    if (item.getChildren().isEmpty()) {
                        actionSetName = item.getActionSet().descriptor.getLabel();
                        text = NLS.bind((String)WorkbenchMessages.HideItems_itemInUnavailableActionSet, (Object)actionSetName);
                    } else {
                        LinkedHashSet actionGroup = new LinkedHashSet();
                        CustomizePerspectiveDialog.collectDescendantCommandGroups(actionGroup, item, this.filter);
                        if (actionGroup.size() == 1) {
                            ActionSet actionSet = (ActionSet)actionGroup.iterator().next();
                            text = NLS.bind((String)WorkbenchMessages.HideItems_unavailableChildCommandGroup, (Object)actionSet.descriptor.getId(), (Object)actionSet.descriptor.getLabel());
                        } else {
                            String commandGroupList = null;
                            Iterator i = actionGroup.iterator();
                            while (i.hasNext()) {
                                ActionSet actionSet = (ActionSet)i.next();
                                String commandGroupLink = MessageFormat.format("<a href=\"{0}\">{1}</a>", actionSet.descriptor.getId(), actionSet.descriptor.getLabel());
                                commandGroupList = commandGroupList == null ? commandGroupLink : Util.createList(commandGroupList, commandGroupLink);
                            }
                            commandGroupList = NLS.bind((String)"{0}{1}", (Object[])new Object[]{NEW_LINE, commandGroupList});
                            text = NLS.bind((String)WorkbenchMessages.HideItems_unavailableChildCommandGroups, (Object)commandGroupList);
                        }
                    }
                }
                if (text != null) {
                    Link link = this.createEntryWithLink(destination, image, text);
                    link.addSelectionListener(new SelectionListener(this, item){
                        final /* synthetic */ ItemDetailToolTip this$1;
                        private final /* synthetic */ DisplayItem val$item;
                        {
                            this.this$1 = itemDetailToolTip;
                            this.val$item = displayItem;
                        }

                        public void widgetDefaultSelected(SelectionEvent e) {
                            this.widgetSelected(e);
                        }

                        public void widgetSelected(SelectionEvent e) {
                            ActionSet actionSet = (ActionSet)CustomizePerspectiveDialog.access$13(ItemDetailToolTip.access$1(this.this$1)).get(e.text);
                            if (actionSet == null) {
                                this.this$1.hide();
                                CustomizePerspectiveDialog.access$14(ItemDetailToolTip.access$1(this.this$1), this.val$item);
                            } else {
                                this.this$1.hide();
                                CustomizePerspectiveDialog.access$15(ItemDetailToolTip.access$1(this.this$1), actionSet);
                            }
                        }
                    });
                }
            }
            if (this.showKeyBindings && CustomizePerspectiveDialog.getCommandID(item) != null) {
                ICommandService commandService;
                Command command;
                WorkbenchWindow workbenchWindow = CustomizePerspectiveDialog.this.window;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((command = (commandService = (ICommandService)workbenchWindow.getService(clazz)).getCommand(CustomizePerspectiveDialog.getCommandID(item))) != null && command.isDefined()) {
                    Binding highlight;
                    boolean available;
                    Binding[] bindings = CustomizePerspectiveDialog.this.getKeyBindings(item);
                    String keybindings = CustomizePerspectiveDialog.this.keyBindingsAsString(bindings);
                    String text = null;
                    boolean bl = available = item.getActionSet() == null || item.getActionSet().isActive();
                    text = bindings.length > 0 ? (available ? NLS.bind((String)WorkbenchMessages.HideItems_keyBindings, (Object)keybindings) : NLS.bind((String)WorkbenchMessages.HideItems_keyBindingsActionSetUnavailable, (Object)keybindings)) : (available ? WorkbenchMessages.HideItems_noKeyBindings : WorkbenchMessages.HideItems_noKeyBindingsActionSetUnavailable);
                    if (bindings.length == 0) {
                        HashMap<String, String> parameters = new HashMap<String, String>();
                        if (item instanceof ShortcutItem) {
                            if (CustomizePerspectiveDialog.isNewWizard(item)) {
                                parameters.put("newWizardId", CustomizePerspectiveDialog.getParamID(item));
                            } else if (CustomizePerspectiveDialog.isShowPerspective(item)) {
                                parameters.put("org.eclipse.ui.perspectives.showPerspective.perspectiveId", CustomizePerspectiveDialog.getParamID(item));
                            } else if (CustomizePerspectiveDialog.isShowView(item)) {
                                parameters.put("org.eclipse.ui.views.showView.viewId", CustomizePerspectiveDialog.getParamID(item));
                            }
                        }
                        ParameterizedCommand pc = ParameterizedCommand.generateCommand((Command)command, parameters);
                        highlight = pc;
                    } else {
                        highlight = bindings[0];
                    }
                    Link bindingLink = this.createEntryWithLink(destination, null, text);
                    bindingLink.addSelectionListener(new SelectionListener(this, highlight){
                        final /* synthetic */ ItemDetailToolTip this$1;
                        private final /* synthetic */ Object val$highlight;
                        {
                            this.this$1 = itemDetailToolTip;
                            this.val$highlight = object;
                        }

                        public void widgetDefaultSelected(SelectionEvent e) {
                            this.widgetDefaultSelected(e);
                        }

                        public void widgetSelected(SelectionEvent e) {
                            PreferenceDialog dialog = PreferencesUtil.createPreferenceDialogOn(ItemDetailToolTip.access$1(this.this$1).getShell(), "org.eclipse.ui.preferencePages.Keys", new String[0], this.val$highlight);
                            this.this$1.hide();
                            dialog.open();
                        }
                    });
                }
            }
            if (item instanceof DynamicContributionItem) {
                DynamicContributionItem dynamic = (DynamicContributionItem)item;
                StringBuffer text = new StringBuffer();
                List currentItems = dynamic.getCurrentItems();
                if (currentItems.size() > 0) {
                    text.append(WorkbenchMessages.HideItems_dynamicItemList);
                    Iterator i = currentItems.iterator();
                    while (i.hasNext()) {
                        MenuItem menuItem = (MenuItem)i.next();
                        text.append(NEW_LINE).append("- ").append(menuItem.getText());
                    }
                } else {
                    text.append(WorkbenchMessages.HideItems_dynamicItemEmptyList);
                }
                this.createEntry(destination, null, text.toString());
            }
        }

        protected Object getModelElement(Event event) {
            TreeItem treeItem = this.tree.getItem(new Point(event.x, event.y));
            if (treeItem == null) {
                return null;
            }
            return treeItem.getData();
        }

        static /* synthetic */ CustomizePerspectiveDialog access$1(ItemDetailToolTip itemDetailToolTip) {
            return itemDetailToolTip.CustomizePerspectiveDialog.this;
        }
    }

    private abstract class NameAndDescriptionToolTip
    extends ToolTip {
        public NameAndDescriptionToolTip(Control control, int style) {
            super(control, style, false);
        }

        protected abstract Object getModelElement(Event var1);

        protected boolean shouldCreateToolTip(Event event) {
            return super.shouldCreateToolTip(event) && this.getModelElement(event) != null;
        }

        protected Composite createToolTipContentArea(Event event, Composite parent) {
            Object modelElement = this.getModelElement(event);
            Image iconImage = null;
            String nameString = null;
            if (modelElement instanceof DisplayItem) {
                iconImage = ((DisplayItem)modelElement).getImage();
                nameString = ((DisplayItem)modelElement).getLabel();
            } else if (modelElement instanceof ActionSet) {
                nameString = ((ActionSet)modelElement).descriptor.getLabel();
            }
            Composite composite = new Composite(parent, 0);
            composite.setBackground(parent.getDisplay().getSystemColor(29));
            composite.setLayout((Layout)new GridLayout(2, false));
            Label title = this.createEntry(composite, iconImage, nameString);
            title.setFont(CustomizePerspectiveDialog.this.tooltipHeading);
            GridDataFactory.createFrom((GridData)((GridData)title.getLayoutData())).hint(-1, -1).minSize(160, 1).applyTo((Control)title);
            String descriptionString = CustomizePerspectiveDialog.getDescription(modelElement);
            if (descriptionString != null) {
                this.createEntry(composite, null, descriptionString);
            }
            this.addContent(composite, modelElement);
            return composite;
        }

        protected Label createEntry(Composite parent, Image icon, String text) {
            if (icon != null) {
                Label iconLabel = new Label(parent, 0);
                iconLabel.setImage(icon);
                iconLabel.setBackground(parent.getDisplay().getSystemColor(29));
                iconLabel.setData((Object)new GridData());
            }
            Label textLabel = new Label(parent, 64);
            if (icon == null) {
                GridDataFactory.generate((Control)textLabel, (int)2, (int)1);
            } else {
                GridDataFactory.generate((Control)textLabel, (int)1, (int)1);
            }
            textLabel.setText(text);
            textLabel.setBackground(parent.getDisplay().getSystemColor(29));
            return textLabel;
        }

        protected Link createEntryWithLink(Composite parent, Image icon, String text) {
            if (icon != null) {
                Label iconLabel = new Label(parent, 0);
                iconLabel.setImage(icon);
                iconLabel.setBackground(parent.getDisplay().getSystemColor(29));
                iconLabel.setData((Object)new GridData());
            }
            Link textLink = new Link(parent, 64);
            if (icon == null) {
                GridDataFactory.generate((Control)textLink, (int)2, (int)1);
            }
            textLink.setText(text);
            textLink.setBackground(parent.getDisplay().getSystemColor(29));
            return textLink;
        }

        protected void addContent(Composite destination, Object modelElement) {
        }
    }

    private class ShortcutItem
    extends DisplayItem {
        private String description;
        private Category category;
        private Object descriptor;

        public ShortcutItem(String label, IWizardDescriptor descriptor) {
            super(CustomizePerspectiveDialog.this, label, (IContributionItem)CustomizePerspectiveDialog.getIContributionItem(descriptor, CustomizePerspectiveDialog.this.window));
            this.descriptor = descriptor;
        }

        public ShortcutItem(String label, IPerspectiveDescriptor descriptor) {
            super(CustomizePerspectiveDialog.this, label, (IContributionItem)CustomizePerspectiveDialog.getIContributionItem(descriptor, CustomizePerspectiveDialog.this.window));
            this.descriptor = descriptor;
        }

        public ShortcutItem(String label, IViewDescriptor descriptor) {
            super(CustomizePerspectiveDialog.this, label, (IContributionItem)CustomizePerspectiveDialog.getIContributionItem(CustomizePerspectiveDialog.this.window));
            this.descriptor = descriptor;
        }

        public Object getDescriptor() {
            return this.descriptor;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public String getDescription() {
            return this.description;
        }

        public void setCategory(Category category) {
            this.category = category;
        }

        public Category getCategory() {
            return this.category;
        }
    }

    private class ShortcutLabelProvider
    extends TreeManager.TreeItemLabelProvider
    implements ITableLabelProvider {
        private ShortcutLabelProvider() {
        }

        public Image getColumnImage(Object element, int columnIndex) {
            if (columnIndex == 0) {
                return this.getImage(element);
            }
            return null;
        }

        public String getColumnText(Object element, int columnIndex) {
            if (columnIndex == 1) {
                return ((ShortcutItem)element).getDescription();
            }
            return this.getText(element);
        }

        public void addListener(ILabelProviderListener listener) {
        }

        public boolean isLabelProperty(Object element, String property) {
            return false;
        }

        public void removeListener(ILabelProviderListener listener) {
        }
    }

    private static final class ShowUsedActionSetsFilter
    extends ViewerFilter {
        private DisplayItem rootItem;

        public ShowUsedActionSetsFilter(DisplayItem rootItem) {
            this.rootItem = rootItem;
        }

        public boolean select(Viewer viewer, Object parentElement, Object element) {
            return CustomizePerspectiveDialog.includeInSetStructure(this.rootItem, (ActionSet)element);
        }
    }

    private class TableToolTip
    extends NameAndDescriptionToolTip {
        private Table table;

        public TableToolTip(Table table) {
            super((Control)table, 1);
            this.table = table;
        }

        protected Object getModelElement(Event event) {
            TableItem tableItem = this.table.getItem(new Point(event.x, event.y));
            if (tableItem == null) {
                return null;
            }
            return tableItem.getData();
        }
    }

    private class UnavailableContributionItemCheckListener
    implements ICheckStateListener {
        private CheckboxTreeViewer viewer;
        private ICheckStateListener originalListener;

        public UnavailableContributionItemCheckListener(CheckboxTreeViewer viewer, ICheckStateListener originalListener) {
            this.viewer = viewer;
            this.originalListener = originalListener;
        }

        public void checkStateChanged(CheckStateChangedEvent event) {
            ViewerFilter[] filters;
            DisplayItem item = (DisplayItem)event.getElement();
            boolean isEffectivelyAvailable = CustomizePerspectiveDialog.isEffectivelyAvailable(item, (filters = this.viewer.getFilters()).length > 0 ? filters[0] : null);
            if (isEffectivelyAvailable) {
                this.originalListener.checkStateChanged(event);
                return;
            }
            boolean isAvailable = CustomizePerspectiveDialog.isAvailable(item);
            this.viewer.update(event.getElement(), null);
            if (isAvailable) {
                if (this.viewer.getExpandedState((Object)item)) {
                    MessageBox mb = new MessageBox(this.viewer.getControl().getShell(), 268435496);
                    mb.setText(WorkbenchMessages.HideItemsCannotMakeVisible_dialogTitle);
                    mb.setMessage(NLS.bind((String)WorkbenchMessages.HideItemsCannotMakeVisible_unavailableChildrenText, (Object)item.getLabel()));
                    mb.open();
                } else {
                    MessageBox mb = new MessageBox(this.viewer.getControl().getShell(), 268435496);
                    mb.setText(WorkbenchMessages.HideItemsCannotMakeVisible_dialogTitle);
                    mb.setMessage(NLS.bind((String)WorkbenchMessages.HideItemsCannotMakeVisible_unavailableChildrenText, (Object)item.getLabel()));
                    mb.open();
                }
            } else {
                MessageBox mb = new MessageBox(this.viewer.getControl().getShell(), 268435656);
                mb.setText(WorkbenchMessages.HideItemsCannotMakeVisible_dialogTitle);
                String errorExplanation = NLS.bind((String)WorkbenchMessages.HideItemsCannotMakeVisible_unavailableCommandGroupText, (Object)item.getLabel(), (Object)item.getActionSet());
                String message = NLS.bind((String)"{0}{1}{1}{2}", (Object[])new Object[]{errorExplanation, NEW_LINE, WorkbenchMessages.HideItemsCannotMakeVisible_switchToCommandGroupTab});
                mb.setMessage(message);
                if (mb.open() == 64) {
                    CustomizePerspectiveDialog.this.viewActionSet(item);
                }
            }
        }
    }
}

