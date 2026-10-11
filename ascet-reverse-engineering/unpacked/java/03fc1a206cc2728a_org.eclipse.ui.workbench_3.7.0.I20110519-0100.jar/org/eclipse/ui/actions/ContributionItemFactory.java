/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.BaseNewWizardMenu;
import org.eclipse.ui.actions.ContributionItemFactory;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.ChangeToPerspectiveMenu;
import org.eclipse.ui.internal.ReopenEditorMenu;
import org.eclipse.ui.internal.ShowInMenu;
import org.eclipse.ui.internal.ShowViewMenu;
import org.eclipse.ui.internal.SwitchToWindowMenu;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.actions.HelpSearchContributionItem;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.menus.CommandContributionItem;
import org.eclipse.ui.menus.CommandContributionItemParameter;

public abstract class ContributionItemFactory {
    private final String contributionItemId;
    public static final ContributionItemFactory PIN_EDITOR = new ContributionItemFactory("pinEditor"){
        private static final String COMMAND_ID = "org.eclipse.ui.window.pinEditor";

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            CommandContributionItemParameter parameter = new CommandContributionItemParameter(window, COMMAND_ID, COMMAND_ID, null, WorkbenchImages.getImageDescriptor("IMG_ETOOL_PIN_EDITOR"), WorkbenchImages.getImageDescriptor("IMG_ETOOL_PIN_EDITOR_DISABLED"), null, null, null, null, 32, null, false);
            IPropertyChangeListener[] perfs = new IPropertyChangeListener[1];
            IPartListener partListener = new IPartListener(this, window){
                final /* synthetic */ 1 this$1;
                private final /* synthetic */ IWorkbenchWindow val$window;
                {
                    this.this$1 = var1_1;
                    this.val$window = iWorkbenchWindow;
                }

                public void partOpened(IWorkbenchPart part) {
                }

                public void partDeactivated(IWorkbenchPart part) {
                }

                public void partClosed(IWorkbenchPart part) {
                }

                public void partBroughtToTop(IWorkbenchPart part) {
                    if (!(part instanceof IEditorPart)) {
                        return;
                    }
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    ICommandService commandService = (ICommandService)this.val$window.getService(clazz);
                    commandService.refreshElements("org.eclipse.ui.window.pinEditor", null);
                }

                public void partActivated(IWorkbenchPart part) {
                }
            };
            window.getPartService().addPartListener(partListener);
            CommandContributionItem action = new CommandContributionItem(this, parameter, perfs, window, partListener){
                final /* synthetic */ 1 this$1;
                private final /* synthetic */ IPropertyChangeListener[] val$perfs;
                private final /* synthetic */ IWorkbenchWindow val$window;
                private final /* synthetic */ IPartListener val$partListener;
                {
                    this.this$1 = var1_1;
                    this.val$perfs = iPropertyChangeListenerArray;
                    this.val$window = iWorkbenchWindow;
                    this.val$partListener = iPartListener;
                }

                public void dispose() {
                    WorkbenchPlugin.getDefault().getPreferenceStore().removePropertyChangeListener(this.val$perfs[0]);
                    this.val$window.getPartService().removePartListener(this.val$partListener);
                    super.dispose();
                }
            };
            perfs[0] = new IPropertyChangeListener(this, action, window){
                final /* synthetic */ 1 this$1;
                private final /* synthetic */ CommandContributionItem val$action;
                private final /* synthetic */ IWorkbenchWindow val$window;
                {
                    this.this$1 = var1_1;
                    this.val$action = commandContributionItem;
                    this.val$window = iWorkbenchWindow;
                }

                public void propertyChange(PropertyChangeEvent event) {
                    if (event.getProperty().equals("REUSE_OPEN_EDITORS_BOOLEAN") && this.val$action.getParent() != null) {
                        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
                        boolean reuseEditors = store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction();
                        this.val$action.setVisible(reuseEditors);
                        this.val$action.getParent().markDirty();
                        if (this.val$window.getShell() != null && !this.val$window.getShell().isDisposed()) {
                            this.val$window.getShell().getDisplay().syncExec(new Runnable(this, this.val$action){
                                final /* synthetic */ 4 this$2;
                                private final /* synthetic */ CommandContributionItem val$action;
                                {
                                    this.this$2 = var1_1;
                                    this.val$action = commandContributionItem;
                                }

                                public void run() {
                                    this.val$action.getParent().update(false);
                                }
                            });
                        }
                    }
                }
            };
            WorkbenchPlugin.getDefault().getPreferenceStore().addPropertyChangeListener(perfs[0]);
            action.setVisible(WorkbenchPlugin.getDefault().getPreferenceStore().getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction());
            return action;
        }
    };
    public static final ContributionItemFactory OPEN_WINDOWS = new ContributionItemFactory("openWindows"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new SwitchToWindowMenu(window, this.getId(), true);
        }
    };
    public static final ContributionItemFactory VIEWS_SHORTLIST = new ContributionItemFactory("viewsShortlist"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new ShowViewMenu(window, this.getId());
        }
    };
    public static final ContributionItemFactory VIEWS_SHOW_IN = new ContributionItemFactory("viewsShowIn"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            ShowInMenu showInMenu = new ShowInMenu();
            showInMenu.setId(this.getId());
            showInMenu.initialize(window);
            return showInMenu;
        }
    };
    public static final ContributionItemFactory REOPEN_EDITORS = new ContributionItemFactory("reopenEditors"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new ReopenEditorMenu(window, this.getId(), true);
        }
    };
    public static final ContributionItemFactory PERSPECTIVES_SHORTLIST = new ContributionItemFactory("perspectivesShortlist"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new ChangeToPerspectiveMenu(window, this.getId());
        }
    };
    public static final ContributionItemFactory NEW_WIZARD_SHORTLIST = new ContributionItemFactory("newWizardShortlist"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new BaseNewWizardMenu(window, this.getId());
        }
    };
    public static final ContributionItemFactory HELP_SEARCH = new ContributionItemFactory("helpSearch"){

        public IContributionItem create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            return new HelpSearchContributionItem(window, this.getId());
        }
    };
    static /* synthetic */ Class class$0;

    protected ContributionItemFactory(String contributionItemId) {
        this.contributionItemId = contributionItemId;
    }

    public abstract IContributionItem create(IWorkbenchWindow var1);

    public String getId() {
        return this.contributionItemId;
    }
}

