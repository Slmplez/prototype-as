/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.actions;

import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.osgi.util.NLS;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.LabelRetargetAction;
import org.eclipse.ui.actions.NewWizardDropDownAction;
import org.eclipse.ui.actions.RetargetAction;
import org.eclipse.ui.internal.CloseAllSavedAction;
import org.eclipse.ui.internal.NavigationHistoryAction;
import org.eclipse.ui.internal.ToggleEditorsVisibilityAction;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.internal.intro.IntroMessages;
import org.eclipse.ui.internal.util.PrefUtil;

public abstract class ActionFactory {
    public static final ActionFactory ABOUT = new ActionFactory("about", "org.eclipse.ui.help.aboutAction"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            IProduct product = Platform.getProduct();
            String productName = null;
            if (product != null) {
                productName = product.getName();
            }
            if (productName == null) {
                productName = "";
            }
            action.setText(NLS.bind((String)WorkbenchMessages.AboutAction_text, (Object)productName));
            action.setToolTipText(NLS.bind((String)WorkbenchMessages.AboutAction_toolTip, (Object)productName));
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.about_action_context");
            return action;
        }
    };
    public static final ActionFactory ACTIVATE_EDITOR = new ActionFactory("activateEditor", "org.eclipse.ui.window.activateEditor"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ActivateEditorAction_text);
            action.setToolTipText(WorkbenchMessages.ActivateEditorAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory BACK = new ActionFactory("back", "org.eclipse.ui.navigate.back"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_back);
            action.setToolTipText(WorkbenchMessages.Workbench_backToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory BACKWARD_HISTORY = new ActionFactory("backardHistory", "org.eclipse.ui.navigate.backwardHistory"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            NavigationHistoryAction action = new NavigationHistoryAction(window, false);
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory CLOSE = new ActionFactory("close", "org.eclipse.ui.file.close"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CloseEditorAction_text);
            action.setToolTipText(WorkbenchMessages.CloseEditorAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory CLOSE_ALL = new ActionFactory("closeAll", "org.eclipse.ui.file.closeAll"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CloseAllAction_text);
            action.setToolTipText(WorkbenchMessages.CloseAllAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory CLOSE_OTHERS = new ActionFactory("closeOthers", "org.eclipse.ui.file.closeOthers"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CloseOthersAction_text);
            action.setToolTipText(WorkbenchMessages.CloseOthersAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory CLOSE_ALL_PERSPECTIVES = new ActionFactory("closeAllPerspectives", "org.eclipse.ui.window.closeAllPerspectives"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CloseAllPerspectivesAction_text);
            action.setToolTipText(WorkbenchMessages.CloseAllPerspectivesAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.close_all_pages_action_context");
            return action;
        }
    };
    public static final ActionFactory CLOSE_ALL_SAVED = new ActionFactory("closeAllSaved"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            CloseAllSavedAction action = new CloseAllSavedAction(window);
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory CLOSE_PERSPECTIVE = new ActionFactory("closePerspective", "org.eclipse.ui.window.closePerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ClosePerspectiveAction_text);
            action.setToolTipText(WorkbenchMessages.ClosePerspectiveAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.close_page_action_context");
            return action;
        }
    };
    public static final ActionFactory INTRO = new ActionFactory("intro", "org.eclipse.ui.help.quickStartAction"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(IntroMessages.Intro_action_text);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.intro_action_context");
            IntroDescriptor introDescriptor = ((Workbench)window.getWorkbench()).getIntroDescriptor();
            if (introDescriptor != null) {
                action.setImageDescriptor(introDescriptor.getImageDescriptor());
            }
            return action;
        }
    };
    public static final ActionFactory COPY = new ActionFactory("copy", "org.eclipse.ui.edit.copy"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_copy);
            action.setToolTipText(WorkbenchMessages.Workbench_copyToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_COPY"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_COPY_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory CUT = new ActionFactory("cut", "org.eclipse.ui.edit.cut"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_cut);
            action.setToolTipText(WorkbenchMessages.Workbench_cutToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_CUT"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_CUT_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory DELETE = new ActionFactory("delete", "org.eclipse.ui.edit.delete"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_delete);
            action.setToolTipText(WorkbenchMessages.Workbench_deleteToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            action.enableAccelerator(false);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.delete_retarget_action_context");
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_DELETE"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_DELETE_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory EDIT_ACTION_SETS = new ActionFactory("editActionSets", "org.eclipse.ui.window.customizePerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.EditActionSetsAction_text);
            action.setToolTipText(WorkbenchMessages.EditActionSetsAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.edit_action_sets_action_context");
            return action;
        }
    };
    public static final ActionFactory EXPORT = new ActionFactory("export", "org.eclipse.ui.file.export"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ExportResourcesAction_fileMenuText);
            action.setToolTipText(WorkbenchMessages.ExportResourcesAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.export_action_context");
            action.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_EXPORT_WIZ"));
            return action;
        }
    };
    public static final ActionFactory FIND = new ActionFactory("find", "org.eclipse.ui.edit.findReplace"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_findReplace);
            action.setToolTipText(WorkbenchMessages.Workbench_findReplaceToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory FORWARD = new ActionFactory("forward", "org.eclipse.ui.navigate.forward"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_forward);
            action.setToolTipText(WorkbenchMessages.Workbench_forwardToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory FORWARD_HISTORY = new ActionFactory("forwardHistory", "org.eclipse.ui.navigate.forwardHistory"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            NavigationHistoryAction action = new NavigationHistoryAction(window, true);
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory GO_INTO = new ActionFactory("goInto", "org.eclipse.ui.navigate.goInto"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_goInto);
            action.setToolTipText(WorkbenchMessages.Workbench_goIntoToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory IMPORT = new ActionFactory("import", "org.eclipse.ui.file.import"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ImportResourcesAction_text);
            action.setToolTipText(WorkbenchMessages.ImportResourcesAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.import_action_context");
            action.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_IMPORT_WIZ"));
            return action;
        }
    };
    public static final ActionFactory LOCK_TOOL_BAR = new ActionFactory("lockToolBar", "org.eclipse.ui.window.lockToolBar"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.LockToolBarAction_text);
            action.setToolTipText(WorkbenchMessages.LockToolBarAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.lock_toolbar_action_context");
            return action;
        }
    };
    public static final ActionFactory MAXIMIZE = new ActionFactory("maximize", "org.eclipse.ui.window.maximizePart"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setToolTipText(WorkbenchMessages.MaximizePartAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.maximize_part_action_context");
            return action;
        }
    };
    public static final ActionFactory MINIMIZE = new ActionFactory("minimize", "org.eclipse.ui.window.minimizePart"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setToolTipText(WorkbenchMessages.MinimizePartAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.minimize_part_action_context");
            return action;
        }
    };
    public static final ActionFactory MOVE = new ActionFactory("move", "org.eclipse.ui.edit.move"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_move);
            action.setToolTipText(WorkbenchMessages.Workbench_moveToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory NEW = new ActionFactory("new", "org.eclipse.ui.newWizard"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            ISharedImages images = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(images.getImageDescriptor("IMG_TOOL_NEW_WIZARD"));
            action.setDisabledImageDescriptor(images.getImageDescriptor("IMG_TOOL_NEW_WIZARD_DISABLED"));
            action.setText(WorkbenchMessages.NewWizardAction_text);
            action.setToolTipText(WorkbenchMessages.NewWizardAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.new_action_context");
            return action;
        }
    };
    public static final ActionFactory NEW_WIZARD_DROP_DOWN = new ActionFactory("newWizardDropDown"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            NewWizardDropDownAction action = new NewWizardDropDownAction(window);
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory NEXT = new ActionFactory("next", "org.eclipse.ui.navigate.next"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_next);
            action.setToolTipText(WorkbenchMessages.Workbench_nextToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory NEXT_EDITOR = new ActionFactory("nextEditor", "org.eclipse.ui.window.nextEditor"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CycleEditorAction_next_text);
            action.setToolTipText(WorkbenchMessages.CycleEditorAction_next_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_editor_forward_action_context");
            return action;
        }
    };
    public static final ActionFactory NEXT_PART = new ActionFactory("nextPart", "org.eclipse.ui.window.nextView"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CyclePartAction_next_text);
            action.setToolTipText(WorkbenchMessages.CyclePartAction_next_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_part_forward_action_context");
            return action;
        }
    };
    public static final ActionFactory NEXT_PERSPECTIVE = new ActionFactory("nextPerspective", "org.eclipse.ui.window.nextPerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CyclePerspectiveAction_next_text);
            action.setToolTipText(WorkbenchMessages.CyclePerspectiveAction_next_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_perspective_forward_action_context");
            return action;
        }
    };
    public static final ActionFactory OPEN_NEW_WINDOW = new ActionFactory("openNewWindow", "org.eclipse.ui.window.newWindow"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.OpenInNewWindowAction_text);
            action.setToolTipText(WorkbenchMessages.OpenInNewWindowAction_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.open_new_window_action_context");
            return action;
        }
    };
    public static final ActionFactory PASTE = new ActionFactory("paste", "org.eclipse.ui.edit.paste"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_paste);
            action.setToolTipText(WorkbenchMessages.Workbench_pasteToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_PASTE"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_PASTE_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory PREFERENCES = new ActionFactory("preferences", "org.eclipse.ui.window.preferences"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.OpenPreferences_text);
            action.setToolTipText(WorkbenchMessages.OpenPreferences_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.open_preferences_action_context");
            return action;
        }
    };
    public static final ActionFactory PREVIOUS = new ActionFactory("previous", "org.eclipse.ui.navigate.previous"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_previous);
            action.setToolTipText(WorkbenchMessages.Workbench_previousToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory PREVIOUS_EDITOR = new ActionFactory("previousEditor", "org.eclipse.ui.window.previousEditor"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CycleEditorAction_prev_text);
            action.setToolTipText(WorkbenchMessages.CycleEditorAction_prev_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_editor_backward_action_context");
            return action;
        }
    };
    public static final ActionFactory PREVIOUS_PART = new ActionFactory("previousPart", "org.eclipse.ui.window.previousView"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CyclePartAction_prev_text);
            action.setToolTipText(WorkbenchMessages.CyclePartAction_prev_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_part_backward_action_context");
            return action;
        }
    };
    public static final ActionFactory PREVIOUS_PERSPECTIVE = new ActionFactory("previousPerspective", "org.eclipse.ui.window.previousPerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.CyclePerspectiveAction_prev_text);
            action.setToolTipText(WorkbenchMessages.CyclePerspectiveAction_prev_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.cycle_perspective_backward_action_context");
            return action;
        }
    };
    public static final ActionFactory PRINT = new ActionFactory("print", "org.eclipse.ui.file.print"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_print);
            action.setToolTipText(WorkbenchMessages.Workbench_printToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            action.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_PRINT_EDIT"));
            action.setDisabledImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_PRINT_EDIT_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory PROPERTIES = new ActionFactory("properties", "org.eclipse.ui.file.properties"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_properties);
            action.setToolTipText(WorkbenchMessages.Workbench_propertiesToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory QUIT = new ActionFactory("quit", "org.eclipse.ui.file.exit"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.Exit_text);
            action.setToolTipText(WorkbenchMessages.Exit_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.quit_action_context");
            return action;
        }
    };
    public static final ActionFactory REDO = new ActionFactory("redo", "org.eclipse.ui.edit.redo"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_redo);
            action.setToolTipText(WorkbenchMessages.Workbench_redoToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_REDO"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_REDO_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory REFRESH = new ActionFactory("refresh", "org.eclipse.ui.file.refresh"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_refresh);
            action.setToolTipText(WorkbenchMessages.Workbench_refreshToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory RENAME = new ActionFactory("rename", "org.eclipse.ui.edit.rename"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_rename);
            action.setToolTipText(WorkbenchMessages.Workbench_renameToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory RESET_PERSPECTIVE = new ActionFactory("resetPerspective", "org.eclipse.ui.window.resetPerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ResetPerspective_text);
            action.setToolTipText(WorkbenchMessages.ResetPerspective_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.reset_perspective_action_context");
            return action;
        }
    };
    public static final ActionFactory REVERT = new ActionFactory("revert", "org.eclipse.ui.file.revert"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_revert);
            action.setToolTipText(WorkbenchMessages.Workbench_revertToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory SAVE = new ActionFactory("save", "org.eclipse.ui.file.save"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setText(WorkbenchMessages.SaveAction_text);
            action.setToolTipText(WorkbenchMessages.SaveAction_toolTip);
            action.setId(this.getId());
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.save_action_context");
            return action;
        }
    };
    public static final ActionFactory SAVE_ALL = new ActionFactory("saveAll", "org.eclipse.ui.file.saveAll"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setText(WorkbenchMessages.SaveAll_text);
            action.setToolTipText(WorkbenchMessages.SaveAll_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.save_all_action_context");
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory SAVE_AS = new ActionFactory("saveAs", "org.eclipse.ui.file.saveAs"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setText(WorkbenchMessages.SaveAs_text);
            action.setToolTipText(WorkbenchMessages.SaveAs_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.save_as_action_context");
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory SAVE_PERSPECTIVE = new ActionFactory("savePerspective", "org.eclipse.ui.window.savePerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.SavePerspective_text);
            action.setToolTipText(WorkbenchMessages.SavePerspective_toolTip);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.save_perspective_action_context");
            return action;
        }
    };
    public static final ActionFactory SELECT_ALL = new ActionFactory("selectAll", "org.eclipse.ui.edit.selectAll"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            RetargetAction action = new RetargetAction(this.getId(), WorkbenchMessages.Workbench_selectAll);
            action.setToolTipText(WorkbenchMessages.Workbench_selectAllToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory SHOW_EDITOR = new ActionFactory("showEditor"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            ToggleEditorsVisibilityAction action = new ToggleEditorsVisibilityAction(window);
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory SHOW_OPEN_EDITORS = new ActionFactory("showOpenEditors"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction("org.eclipse.ui.window.switchToEditor", window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.WorkbenchEditorsAction_label);
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.workbench_editors_action_context");
            return action;
        }
    };
    public static final ActionFactory SHOW_WORKBOOK_EDITORS = new ActionFactory("showWorkBookEditors"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction("org.eclipse.ui.window.openEditorDropDown", window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.WorkbookEditorsAction_label);
            return action;
        }
    };
    public static final ActionFactory SHOW_QUICK_ACCESS = new ActionFactory("showQuickAccess"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            WorkbenchCommandAction action = new WorkbenchCommandAction("org.eclipse.ui.window.quickAccess", window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.QuickAccessAction_text);
            action.setToolTipText(WorkbenchMessages.QuickAccessAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory SHOW_PART_PANE_MENU = new ActionFactory("showPartPaneMenu"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction("org.eclipse.ui.window.showSystemMenu", window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ShowPartPaneMenuAction_text);
            action.setToolTipText(WorkbenchMessages.ShowPartPaneMenuAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory SHOW_VIEW_MENU = new ActionFactory("showViewMenu", "org.eclipse.ui.window.showViewMenu"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ShowViewMenuAction_text);
            action.setToolTipText(WorkbenchMessages.ShowViewMenuAction_toolTip);
            return action;
        }
    };
    public static final ActionFactory UNDO = new ActionFactory("undo", "org.eclipse.ui.edit.undo"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_undo);
            action.setToolTipText(WorkbenchMessages.Workbench_undoToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            ISharedImages sharedImages = window.getWorkbench().getSharedImages();
            action.setImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_UNDO"));
            action.setDisabledImageDescriptor(sharedImages.getImageDescriptor("IMG_TOOL_UNDO_DISABLED"));
            return action;
        }
    };
    public static final ActionFactory UP = new ActionFactory("up", "org.eclipse.ui.navigate.up"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            LabelRetargetAction action = new LabelRetargetAction(this.getId(), WorkbenchMessages.Workbench_up);
            action.setToolTipText(WorkbenchMessages.Workbench_upToolTip);
            window.getPartService().addPartListener(action);
            action.setActionDefinitionId(this.getCommandId());
            return action;
        }
    };
    public static final ActionFactory HELP_CONTENTS = new ActionFactory("helpContents", "org.eclipse.ui.help.helpContents"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            String overrideText = PrefUtil.getAPIPreferenceStore().getString("helpContentsActionText");
            if ("".equals(overrideText)) {
                action.setText(WorkbenchMessages.HelpContentsAction_text);
                action.setToolTipText(WorkbenchMessages.HelpContentsAction_toolTip);
            } else {
                action.setText(overrideText);
                action.setToolTipText(Action.removeMnemonics((String)overrideText));
            }
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.help_contents_action_context");
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory HELP_SEARCH = new ActionFactory("helpSearch", "org.eclipse.ui.help.helpSearch"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            String overrideText = PrefUtil.getAPIPreferenceStore().getString("helpSearchActionText");
            if ("".equals(overrideText)) {
                action.setText(WorkbenchMessages.HelpSearchAction_text);
                action.setToolTipText(WorkbenchMessages.HelpSearchAction_toolTip);
            } else {
                action.setText(overrideText);
                action.setToolTipText(Action.removeMnemonics((String)overrideText));
            }
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.help_search_action_context");
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory DYNAMIC_HELP = new ActionFactory("dynamicHelp", "org.eclipse.ui.help.dynamicHelp"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            String overrideText = PrefUtil.getAPIPreferenceStore().getString("dynamicHelpActionText");
            if ("".equals(overrideText)) {
                action.setText(WorkbenchMessages.DynamicHelpAction_text);
                action.setToolTipText(WorkbenchMessages.DynamicHelpAction_toolTip);
            } else {
                action.setText(overrideText);
                action.setToolTipText(Action.removeMnemonics((String)overrideText));
            }
            window.getWorkbench().getHelpSystem().setHelp(action, "org.eclipse.ui.dynamic_help_action_context");
            action.setId(this.getId());
            return action;
        }
    };
    public static final ActionFactory OPEN_PERSPECTIVE_DIALOG = new ActionFactory("openPerspectiveDialog", "org.eclipse.ui.perspectives.showPerspective"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.OpenPerspectiveDialogAction_text);
            action.setToolTipText(WorkbenchMessages.OpenPerspectiveDialogAction_tooltip);
            action.setImageDescriptor(WorkbenchImages.getImageDescriptor("IMG_ETOOL_NEW_PAGE"));
            return action;
        }
    };
    public static final ActionFactory NEW_EDITOR = new ActionFactory("newEditor", "org.eclipse.ui.window.newEditor"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction(this.getCommandId(), window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.NewEditorAction_text);
            action.setToolTipText(WorkbenchMessages.NewEditorAction_tooltip);
            return action;
        }
    };
    public static final ActionFactory TOGGLE_COOLBAR = new ActionFactory("toggleCoolbar"){

        public IWorkbenchAction create(IWorkbenchWindow window) {
            if (window == null) {
                throw new IllegalArgumentException();
            }
            WorkbenchCommandAction action = new WorkbenchCommandAction("org.eclipse.ui.ToggleCoolbarAction", window);
            action.setId(this.getId());
            action.setText(WorkbenchMessages.ToggleCoolbarVisibilityAction_hide_text);
            action.setToolTipText(WorkbenchMessages.ToggleCoolbarVisibilityAction_toolTip);
            return action;
        }
    };
    private final String actionId;
    private final String commandId;

    public static void linkCycleActionPair(IWorkbenchAction next, IWorkbenchAction previous) {
    }

    protected ActionFactory(String actionId) {
        this(actionId, null);
    }

    protected ActionFactory(String actionId, String commandId) {
        this.actionId = actionId;
        this.commandId = commandId;
    }

    public abstract IWorkbenchAction create(IWorkbenchWindow var1);

    public String getId() {
        return this.actionId;
    }

    public String getCommandId() {
        return this.commandId;
    }

    public static interface IWorkbenchAction
    extends IAction {
        public void dispose();
    }

    private static class WorkbenchCommandAction
    extends CommandAction
    implements IWorkbenchAction {
        public WorkbenchCommandAction(String commandIdIn, IWorkbenchWindow window) {
            super(window, commandIdIn);
        }
    }
}

