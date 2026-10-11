/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.ui.IMemento
 */
package org.eclipse.ui.internal.views.log;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.action.Separator;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.views.log.LogFilesManager;
import org.eclipse.ui.internal.views.log.LogView;
import org.eclipse.ui.internal.views.log.Messages;

public class ImportLogAction
extends Action
implements IMenuCreator {
    private Menu toolbarMenu = null;
    private Menu popupMenu = null;
    private final LogView logView;
    private ImportConfigurationLogAction[] actions;
    private IMemento fMemento;

    public ImportLogAction(LogView logView, String text, IMemento memento) {
        super(text);
        this.logView = logView;
        this.fMemento = memento;
        this.setMenuCreator(this);
    }

    public void run() {
        this.logView.handleImport();
    }

    public Menu getMenu(Control parent) {
        if (this.menuUpdateNeeded(this.toolbarMenu)) {
            this.toolbarMenu = new Menu(parent);
            this.createMenuItems(this.toolbarMenu);
        }
        return this.toolbarMenu;
    }

    public Menu getMenu(Menu parent) {
        if (this.menuUpdateNeeded(this.popupMenu)) {
            this.popupMenu = new Menu(parent);
            this.createMenuItems(this.popupMenu);
        }
        return this.popupMenu;
    }

    private boolean menuUpdateNeeded(Menu menu) {
        boolean result = false;
        ImportConfigurationLogAction[] currActions = this.getLogActions();
        if (menu == null) {
            result = true;
        } else if (this.actions == null) {
            result = true;
        } else if (currActions.length != this.actions.length) {
            result = true;
        } else {
            int i = 0;
            while (i < currActions.length) {
                if (!currActions[i].equals((Object)this.actions[i])) {
                    result = true;
                }
                ++i;
            }
        }
        if (result) {
            this.actions = currActions;
            if (this.toolbarMenu != null) {
                this.toolbarMenu.dispose();
                this.toolbarMenu = null;
            }
            if (this.popupMenu != null) {
                this.popupMenu.dispose();
                this.popupMenu = null;
            }
        }
        return result;
    }

    private ImportConfigurationLogAction[] getLogActions() {
        ArrayList<ImportConfigurationLogAction> result = new ArrayList<ImportConfigurationLogAction>();
        Map sources = LogFilesManager.getLogSources();
        Iterator j = sources.keySet().iterator();
        while (j.hasNext()) {
            String name = (String)j.next();
            String location = (String)sources.get(name);
            result.add(new ImportConfigurationLogAction(name, location));
        }
        return result.toArray(new ImportConfigurationLogAction[result.size()]);
    }

    private void createMenuItems(Menu menu) {
        ActionContributionItem item;
        String previouslyCheckedActionId = this.fMemento.getString("importLog");
        if (this.actions.length == 0) {
            Action action = new Action(Messages.ImportLogAction_noLaunchHistory){};
            action.setEnabled(false);
            ActionContributionItem actionItem = new ActionContributionItem((IAction)action);
            actionItem.fill(menu, -1);
        } else {
            int i = 0;
            while (i < this.actions.length) {
                this.actions[i].setChecked(this.actions[i].getId().equals(previouslyCheckedActionId) && !this.logView.isPlatformLogOpen());
                item = new ActionContributionItem((IAction)this.actions[i]);
                item.fill(menu, -1);
                ++i;
            }
        }
        new Separator().fill(menu, -1);
        ImportConfigurationLogAction importWorkspaceLogAction = new ImportConfigurationLogAction(Messages.ImportLogAction_reloadWorkspaceLog, Platform.getLogFileLocation().toFile().getAbsolutePath()){

            public void doRun() {
                ImportLogAction.this.logView.setPlatformLog();
            }
        };
        importWorkspaceLogAction.setChecked(this.logView.isPlatformLogOpen());
        item = new ActionContributionItem((IAction)importWorkspaceLogAction);
        item.fill(menu, -1);
    }

    public void dispose() {
        if (this.toolbarMenu != null) {
            this.toolbarMenu.dispose();
            this.toolbarMenu = null;
        }
        if (this.popupMenu != null) {
            this.popupMenu.dispose();
            this.popupMenu = null;
        }
    }

    private class ImportConfigurationLogAction
    extends Action {
        private String name;
        private String location;

        public ImportConfigurationLogAction(String name, String location) {
            super(name, 8);
            this.name = name;
            this.location = location;
            this.setId(String.valueOf(name) + "#" + location);
        }

        protected void doRun() {
            ImportLogAction.this.logView.handleImportPath(this.location);
        }

        public void run() {
            this.doRun();
            if (this.isChecked()) {
                ImportLogAction.this.fMemento.putString("importLog", this.getId());
            }
        }

        public boolean equals(Object o) {
            if (o instanceof ImportConfigurationLogAction) {
                ImportConfigurationLogAction action = (ImportConfigurationLogAction)((Object)o);
                return this.name.equals(action.name) && this.location.equals(action.name);
            }
            return false;
        }
    }
}

