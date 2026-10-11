/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.CoolItem
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IContributionManagerOverrides;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.internal.provisional.action.IToolBarManager2;
import org.eclipse.jface.util.Policy;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.CoolItem;
import org.eclipse.swt.widgets.Menu;

public class CoolBarManager
extends ContributionManager
implements ICoolBarManager {
    public static final String USER_SEPARATOR = "UserSeparator";
    private ArrayList cbItemsCreationOrder = new ArrayList();
    private MenuManager contextMenuManager = null;
    private CoolBar coolBar = null;
    private int itemStyle = 0;

    public CoolBarManager() {
    }

    public CoolBarManager(CoolBar coolBar) {
        this();
        Assert.isNotNull((Object)coolBar);
        this.coolBar = coolBar;
        this.itemStyle = coolBar.getStyle();
    }

    public CoolBarManager(int style) {
        this.itemStyle = style;
    }

    public void add(IToolBarManager toolBarManager) {
        Assert.isNotNull((Object)toolBarManager);
        super.add(new ToolBarContributionItem(toolBarManager));
    }

    private ArrayList adjustContributionList(ArrayList contributionList) {
        if (contributionList.size() != 0) {
            IContributionItem item = (IContributionItem)contributionList.get(0);
            if (item.isSeparator()) {
                contributionList.remove(0);
            }
            ListIterator iterator = contributionList.listIterator();
            block0: while (iterator.hasNext()) {
                item = (IContributionItem)iterator.next();
                if (!item.isSeparator()) continue;
                while (iterator.hasNext()) {
                    item = (IContributionItem)iterator.next();
                    if (!item.isSeparator()) continue block0;
                    iterator.remove();
                }
            }
            if (contributionList.size() != 0 && (item = (IContributionItem)contributionList.get(contributionList.size() - 1)).isSeparator()) {
                contributionList.remove(contributionList.size() - 1);
            }
        }
        return contributionList;
    }

    protected boolean allowItem(IContributionItem itemToAdd) {
        if (itemToAdd == null) {
            return true;
        }
        String firstId = itemToAdd.getId();
        if (firstId == null) {
            return true;
        }
        IContributionItem[] currentItems = this.getItems();
        int i = 0;
        while (i < currentItems.length) {
            String secondId;
            IContributionItem currentItem = currentItems[i];
            if (currentItem != null && firstId.equals(secondId = currentItem.getId())) {
                if (Policy.TRACE_TOOLBAR) {
                    System.out.println("Trying to add a duplicate item.");
                    new Exception().printStackTrace(System.out);
                    System.out.println("DONE --------------------------");
                }
                return false;
            }
            ++i;
        }
        return true;
    }

    private void collapseSeparators(ListIterator iterator) {
        while (iterator.hasNext()) {
            IContributionItem item = (IContributionItem)iterator.next();
            if (item.isSeparator()) continue;
            iterator.previous();
            return;
        }
    }

    private boolean coolBarExist() {
        return this.coolBar != null && !this.coolBar.isDisposed();
    }

    public CoolBar createControl(Composite parent) {
        Assert.isNotNull((Object)parent);
        if (!this.coolBarExist()) {
            this.coolBar = new CoolBar(parent, this.itemStyle);
            this.coolBar.setMenu(this.getContextMenuControl());
            this.coolBar.setLocked(false);
            this.update(false);
        }
        return this.coolBar;
    }

    public void dispose() {
        if (this.coolBarExist()) {
            this.coolBar.dispose();
            this.coolBar = null;
        }
        IContributionItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].dispose();
            ++i;
        }
        if (this.contextMenuManager != null) {
            this.contextMenuManager.dispose();
            this.contextMenuManager = null;
        }
    }

    private void dispose(CoolItem item) {
        if (item != null && !item.isDisposed()) {
            item.setData(null);
            Control control = item.getControl();
            if (control != null && !control.isDisposed()) {
                item.setControl(null);
                control.dispose();
            }
            item.dispose();
        }
    }

    private CoolItem findCoolItem(IContributionItem item) {
        CoolItem[] coolItems = this.coolBar == null ? null : this.coolBar.getItems();
        return this.findCoolItem(coolItems, item);
    }

    private CoolItem findCoolItem(CoolItem[] items, IContributionItem item) {
        if (items == null) {
            return null;
        }
        int i = 0;
        while (i < items.length) {
            CoolItem coolItem = items[i];
            IContributionItem data = (IContributionItem)coolItem.getData();
            if (data != null && data.equals(item)) {
                return coolItem;
            }
            ++i;
        }
        return null;
    }

    private int[] getAdjustedWrapIndices(int[] wraps) {
        int[] adjustedWrapIndices;
        if (wraps.length == 0) {
            adjustedWrapIndices = new int[1];
        } else if (wraps[0] != 0) {
            adjustedWrapIndices = new int[wraps.length + 1];
            adjustedWrapIndices[0] = 0;
            int i = 0;
            while (i < wraps.length) {
                adjustedWrapIndices[i + 1] = wraps[i];
                ++i;
            }
        } else {
            adjustedWrapIndices = wraps;
        }
        return adjustedWrapIndices;
    }

    private Menu getContextMenuControl() {
        if (this.contextMenuManager != null && this.coolBar != null) {
            Menu menuWidget = this.contextMenuManager.getMenu();
            if (menuWidget == null || menuWidget.isDisposed()) {
                menuWidget = this.contextMenuManager.createContextMenu((Control)this.coolBar);
            }
            return menuWidget;
        }
        return null;
    }

    public IMenuManager getContextMenuManager() {
        return this.contextMenuManager;
    }

    public CoolBar getControl() {
        return this.coolBar;
    }

    private ArrayList getItemList() {
        IContributionItem[] cbItems = this.getItems();
        ArrayList<IContributionItem> list = new ArrayList<IContributionItem>(cbItems.length);
        int i = 0;
        while (i < cbItems.length) {
            list.add(cbItems[i]);
            ++i;
        }
        return list;
    }

    public boolean getLockLayout() {
        if (!this.coolBarExist()) {
            return false;
        }
        return this.coolBar.getLocked();
    }

    private int getNumRows(IContributionItem[] items) {
        int numRows = 1;
        boolean separatorFound = false;
        int i = 0;
        while (i < items.length) {
            if (items[i].isSeparator()) {
                separatorFound = true;
            }
            if (separatorFound && this.isChildVisible(items[i]) && !items[i].isGroupMarker() && !items[i].isSeparator()) {
                ++numRows;
                separatorFound = false;
            }
            ++i;
        }
        return numRows;
    }

    public int getStyle() {
        return this.itemStyle;
    }

    protected void itemAdded(IContributionItem item) {
        Assert.isNotNull((Object)item);
        super.itemAdded(item);
        int insertedAt = this.indexOf(item);
        boolean replaced = false;
        int size = this.cbItemsCreationOrder.size();
        int i = 0;
        while (i < size) {
            IContributionItem created = (IContributionItem)this.cbItemsCreationOrder.get(i);
            if (created.getId() != null && created.getId().equals(item.getId())) {
                this.cbItemsCreationOrder.set(i, item);
                replaced = true;
                break;
            }
            ++i;
        }
        if (!replaced) {
            this.cbItemsCreationOrder.add(Math.min(Math.max(insertedAt, 0), this.cbItemsCreationOrder.size()), item);
        }
    }

    protected void itemRemoved(IContributionItem item) {
        Assert.isNotNull((Object)item);
        super.itemRemoved(item);
        CoolItem coolItem = this.findCoolItem(item);
        if (coolItem != null) {
            coolItem.setData(null);
        }
    }

    /*
     * Unable to fully structure code
     */
    private void nextRow(ListIterator iterator, boolean ignoreCurrentItem) {
        currentElement = null;
        if (!ignoreCurrentItem && iterator.hasPrevious()) {
            currentElement = (IContributionItem)iterator.previous();
            iterator.next();
        }
        if (currentElement == null || !currentElement.isSeparator()) ** GOTO lbl13
        this.collapseSeparators(iterator);
        return;
lbl-1000:
        // 1 sources

        {
            item = (IContributionItem)iterator.next();
            if (!item.isSeparator()) continue;
            this.collapseSeparators(iterator);
            return;
lbl13:
            // 2 sources

            ** while (iterator.hasNext())
        }
lbl14:
        // 1 sources

    }

    /*
     * Exception decompiling
     */
    public void refresh() {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: CONTINUE without a while class org.benf.cfr.reader.bytecode.analysis.parse.statement.AssignmentSimple
         *     at org.benf.cfr.reader.bytecode.analysis.parse.statement.GotoStatement.getTargetStartBlock(GotoStatement.java:102)
         *     at org.benf.cfr.reader.bytecode.analysis.parse.statement.IfStatement.getStructuredStatement(IfStatement.java:110)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.getStructuredStatementPlaceHolder(Op03SimpleStatement.java:550)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:727)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void relocate(IContributionItem cbItem, int index, ArrayList contributionList, HashMap itemLocation) {
        if (!(itemLocation.get(cbItem) instanceof Integer)) {
            return;
        }
        int targetRow = (Integer)itemLocation.get(cbItem);
        int cbInternalIndex = contributionList.indexOf(cbItem);
        int insertAt = contributionList.size();
        ListIterator iterator = contributionList.listIterator();
        this.collapseSeparators(iterator);
        int currentRow = -1;
        while (iterator.hasNext()) {
            if (++currentRow == targetRow) {
                int virtualIndex = 0;
                insertAt = iterator.nextIndex();
                while (iterator.hasNext()) {
                    IContributionItem item = (IContributionItem)iterator.next();
                    Integer itemRow = (Integer)itemLocation.get(item);
                    if (item.isSeparator()) break;
                    if (itemRow != null && itemRow == targetRow) {
                        if (virtualIndex >= index) break;
                        ++virtualIndex;
                    }
                    ++insertAt;
                }
                if (cbInternalIndex != insertAt) break;
                return;
            }
            this.nextRow(iterator, true);
        }
        contributionList.remove(cbItem);
        if (cbInternalIndex < insertAt) {
            --insertAt;
        }
        if (currentRow != targetRow) {
            contributionList.add(new Separator(USER_SEPARATOR));
            insertAt = contributionList.size();
        }
        insertAt = Math.min(insertAt, contributionList.size());
        contributionList.add(insertAt, cbItem);
    }

    public void resetItemOrder() {
        ListIterator iterator = this.cbItemsCreationOrder.listIterator();
        while (iterator.hasNext()) {
            IContributionItem item = (IContributionItem)iterator.next();
            if (item.getId() == null || !item.getId().equals(USER_SEPARATOR)) continue;
            iterator.remove();
        }
        IContributionItem[] itemsToSet = new IContributionItem[this.cbItemsCreationOrder.size()];
        this.cbItemsCreationOrder.toArray(itemsToSet);
        this.setItems(itemsToSet);
    }

    public void setContextMenuManager(IMenuManager contextMenuManager) {
        this.contextMenuManager = (MenuManager)contextMenuManager;
        if (this.coolBar != null) {
            this.coolBar.setMenu(this.getContextMenuControl());
        }
    }

    public void setItems(IContributionItem[] newItems) {
        if (this.coolBar != null) {
            CoolItem[] coolItems = this.coolBar.getItems();
            int i = 0;
            while (i < coolItems.length) {
                this.dispose(coolItems[i]);
                ++i;
            }
        }
        this.internalSetItems(newItems);
        this.update(true);
    }

    public void setLockLayout(boolean value) {
        if (!this.coolBarExist()) {
            return;
        }
        this.coolBar.setLocked(value);
    }

    public void update(boolean force) {
        if (!this.isDirty() && !force || !this.coolBarExist()) {
            return;
        }
        boolean relock = false;
        boolean changed = false;
        try {
            this.coolBar.setRedraw(false);
            this.refresh();
            if (this.coolBar.getLocked()) {
                this.coolBar.setLocked(false);
                relock = true;
            }
            IContributionItem[] items = this.getItems();
            ArrayList<IContributionItem> visibleItems = new ArrayList<IContributionItem>(items.length);
            int i = 0;
            while (i < items.length) {
                IContributionItem item = items[i];
                if (this.isChildVisible(item)) {
                    visibleItems.add(item);
                }
                ++i;
            }
            CoolItem[] coolItems = this.coolBar.getItems();
            ArrayList<CoolItem> coolItemsToRemove = new ArrayList<CoolItem>(coolItems.length);
            int i2 = 0;
            while (i2 < coolItems.length) {
                Object data = coolItems[i2].getData();
                if (data == null || !visibleItems.contains(data) || data instanceof IContributionItem && ((IContributionItem)data).isDynamic()) {
                    coolItemsToRemove.add(coolItems[i2]);
                }
                ++i2;
            }
            i2 = coolItemsToRemove.size() - 1;
            while (i2 >= 0) {
                CoolItem coolItem = (CoolItem)coolItemsToRemove.get(i2);
                if (!coolItem.isDisposed()) {
                    Control control = coolItem.getControl();
                    if (control != null) {
                        coolItem.setControl(null);
                        control.dispose();
                    }
                    coolItem.dispose();
                }
                --i2;
            }
            coolItems = this.coolBar.getItems();
            int sourceIndex = 0;
            int destinationIndex = 0;
            Iterator visibleItemItr = visibleItems.iterator();
            while (visibleItemItr.hasNext()) {
                IToolBarManager manager;
                IContributionItem sourceItem = (IContributionItem)visibleItemItr.next();
                IContributionItem destinationItem = sourceIndex < coolItems.length ? (IContributionItem)coolItems[sourceIndex].getData() : null;
                if (destinationItem != null) {
                    if (sourceItem.equals(destinationItem)) {
                        ++sourceIndex;
                        ++destinationIndex;
                        sourceItem.update();
                        continue;
                    }
                    if (destinationItem.isSeparator() && sourceItem.isSeparator()) {
                        coolItems[sourceIndex].setData((Object)sourceItem);
                        ++sourceIndex;
                        ++destinationIndex;
                        sourceItem.update();
                        continue;
                    }
                }
                int start = this.coolBar.getItemCount();
                if (sourceItem instanceof ToolBarContributionItem && (manager = ((ToolBarContributionItem)sourceItem).getToolBarManager()) instanceof IToolBarManager2) {
                    ((IToolBarManager2)manager).setOverrides(this.getOverrides());
                }
                sourceItem.fill(this.coolBar, destinationIndex);
                int newItems = this.coolBar.getItemCount() - start;
                int i3 = 0;
                while (i3 < newItems) {
                    this.coolBar.getItem(destinationIndex++).setData((Object)sourceItem);
                    ++i3;
                }
                changed = true;
            }
            int i4 = coolItems.length - 1;
            while (i4 >= sourceIndex) {
                CoolItem item = coolItems[i4];
                if (!item.isDisposed()) {
                    Control control = item.getControl();
                    if (control != null) {
                        item.setControl(null);
                        control.dispose();
                    }
                    item.dispose();
                    changed = true;
                }
                --i4;
            }
            this.updateWrapIndices();
            i4 = 0;
            while (i4 < items.length) {
                IContributionItem item = items[i4];
                item.update("size");
                ++i4;
            }
            if (relock) {
                this.coolBar.setLocked(true);
            }
            if (changed) {
                this.updateTabOrder();
            }
            this.setDirty(false);
        }
        finally {
            this.coolBar.setRedraw(true);
        }
    }

    void updateTabOrder() {
        CoolItem[] items;
        if (this.coolBar != null && (items = this.coolBar.getItems()) != null) {
            ArrayList<Control> children = new ArrayList<Control>(items.length);
            int i = 0;
            while (i < items.length) {
                if (items[i].getControl() != null && !items[i].getControl().isDisposed()) {
                    children.add(items[i].getControl());
                }
                ++i;
            }
            Control[] childrenArray = new Control[]{};
            if ((childrenArray = children.toArray(childrenArray)) != null) {
                this.coolBar.setTabList(childrenArray);
            }
        }
    }

    private void updateWrapIndices() {
        IContributionItem[] items = this.getItems();
        int numRows = this.getNumRows(items) - 1;
        int[] wrapIndices = new int[numRows];
        boolean foundSeparator = false;
        int j = 0;
        CoolItem[] coolItems = this.coolBar == null ? null : this.coolBar.getItems();
        int i = 0;
        while (i < items.length) {
            IContributionItem item = items[i];
            CoolItem coolItem = this.findCoolItem(coolItems, item);
            if (item.isSeparator()) {
                foundSeparator = true;
            }
            if (!item.isSeparator() && !item.isGroupMarker() && this.isChildVisible(item) && coolItem != null && foundSeparator) {
                wrapIndices[j] = this.coolBar.indexOf(coolItem);
                ++j;
                foundSeparator = false;
            }
            ++i;
        }
        int[] oldIndices = this.coolBar.getWrapIndices();
        boolean shouldUpdate = false;
        if (oldIndices.length == wrapIndices.length) {
            int i2 = 0;
            while (i2 < oldIndices.length) {
                if (oldIndices[i2] != wrapIndices[i2]) {
                    shouldUpdate = true;
                    break;
                }
                ++i2;
            }
        } else {
            shouldUpdate = true;
        }
        if (shouldUpdate) {
            this.coolBar.setWrapIndices(wrapIndices);
        }
    }

    private boolean isChildVisible(IContributionItem item) {
        IContributionManagerOverrides overrides = this.getOverrides();
        Boolean v = overrides == null ? null : this.getOverrides().getVisible(item);
        if (v != null) {
            return v;
        }
        return item.isVisible();
    }
}

