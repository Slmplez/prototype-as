/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.action.ControlContribution
 *  org.eclipse.swt.events.KeyAdapter
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal.actions;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ControlContribution;
import org.eclipse.swt.events.KeyAdapter;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class HelpSearchContributionItem
extends ControlContribution {
    private static final String ID = "org.eclipse.ui.helpSearch";
    private IWorkbenchWindow window;
    private Combo combo;
    private int MAX_ITEM_COUNT = 10;

    public HelpSearchContributionItem(IWorkbenchWindow window) {
        this(window, ID);
    }

    public HelpSearchContributionItem(IWorkbenchWindow window, String id) {
        super(id);
        Assert.isNotNull((Object)window);
        this.window = window;
    }

    protected Control createControl(Composite parent) {
        this.combo = new Combo(parent, 0);
        this.combo.setToolTipText(WorkbenchMessages.WorkbenchWindow_searchCombo_toolTip);
        String[] items = WorkbenchPlugin.getDefault().getDialogSettings().getArray(ID);
        if (items != null) {
            this.combo.setItems(items);
        }
        this.combo.setText(WorkbenchMessages.WorkbenchWindow_searchCombo_text);
        this.combo.addKeyListener((KeyListener)new KeyAdapter(){

            public void keyReleased(KeyEvent e) {
                if (e.character == '\r') {
                    HelpSearchContributionItem.this.doSearch(HelpSearchContributionItem.this.combo.getText(), true);
                }
            }
        });
        this.combo.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                int index = HelpSearchContributionItem.this.combo.getSelectionIndex();
                if (index != -1) {
                    HelpSearchContributionItem.this.doSearch(HelpSearchContributionItem.this.combo.getItem(index), false);
                }
            }
        });
        return this.combo;
    }

    protected int computeWidth(Control control) {
        return control.computeSize((int)-1, (int)-1, (boolean)true).x;
    }

    private void doSearch(String phrase, boolean updateList) {
        if (phrase.length() == 0) {
            this.window.getWorkbench().getHelpSystem().displaySearch();
            return;
        }
        if (updateList) {
            boolean exists = false;
            int i = 0;
            while (i < this.combo.getItemCount()) {
                String item = this.combo.getItem(i);
                if (item.equalsIgnoreCase(phrase)) {
                    exists = true;
                    break;
                }
                ++i;
            }
            if (!exists) {
                this.combo.add(phrase, 0);
                if (this.combo.getItemCount() > this.MAX_ITEM_COUNT) {
                    this.combo.remove(this.combo.getItemCount() - 1);
                }
                WorkbenchPlugin.getDefault().getDialogSettings().put(ID, this.combo.getItems());
            }
        }
        this.window.getWorkbench().getHelpSystem().search(phrase);
    }
}

