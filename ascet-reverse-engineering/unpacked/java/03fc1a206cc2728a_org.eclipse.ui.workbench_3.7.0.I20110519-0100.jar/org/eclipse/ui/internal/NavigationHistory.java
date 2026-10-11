/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.INavigationHistory;
import org.eclipse.ui.INavigationLocation;
import org.eclipse.ui.INavigationLocationProvider;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.internal.EditorReference;
import org.eclipse.ui.internal.EditorSite;
import org.eclipse.ui.internal.ErrorEditorPart;
import org.eclipse.ui.internal.NavigationHistoryAction;
import org.eclipse.ui.internal.NavigationHistoryEditorInfo;
import org.eclipse.ui.internal.NavigationHistoryEntry;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSite;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public class NavigationHistory
implements INavigationHistory {
    private static final boolean DEBUG = false;
    private static final int CAPACITY = 50;
    private NavigationHistoryAction backwardAction;
    private NavigationHistoryAction forwardAction;
    private int ignoreEntries;
    private ArrayList history = new ArrayList(50);
    Map perTabHistoryMap = new HashMap();
    private ArrayList editors = new ArrayList(50);
    private IWorkbenchPage page;
    private int activeEntry = 0;

    public NavigationHistory(final IWorkbenchPage page) {
        this.page = page;
        page.addPartListener(new IPartListener2(){

            public void partActivated(IWorkbenchPartReference partRef) {
            }

            public void partBroughtToTop(IWorkbenchPartReference partRef) {
            }

            public void partDeactivated(IWorkbenchPartReference partRef) {
            }

            public void partOpened(IWorkbenchPartReference partRef) {
            }

            public void partHidden(IWorkbenchPartReference partRef) {
            }

            public void partVisible(IWorkbenchPartReference partRef) {
            }

            public void partClosed(IWorkbenchPartReference partRef) {
                if (NavigationHistory.this.isPerTabHistoryEnabled() && partRef instanceof EditorReference && !((EditorReference)partRef).isDisposed()) {
                    PartPane editorTabCookie = ((EditorReference)partRef).getPane();
                    NavigationHistory.this.disposeHistoryForTab(editorTabCookie);
                    NavigationHistory.this.updateActions();
                }
                this.updateNavigationHistory(partRef, true);
            }

            public void partInputChanged(IWorkbenchPartReference partRef) {
                this.updateNavigationHistory(partRef, false);
            }

            private void updateNavigationHistory(IWorkbenchPartReference partRef, boolean partClosed) {
                if (partRef != null && partRef.getPart(false) instanceof IEditorPart) {
                    IEditorPart editor = (IEditorPart)partRef.getPart(false);
                    IEditorInput input = editor.getEditorInput();
                    String id = editor.getSite().getId();
                    Iterator e = NavigationHistory.this.editors.iterator();
                    NavigationHistoryEditorInfo info = null;
                    NavigationHistoryEditorInfo currentInfo = null;
                    NavigationHistoryEntry current = NavigationHistory.this.getEntry(NavigationHistory.this.activeEntry);
                    if (current != null) {
                        currentInfo = current.editorInfo;
                    }
                    while (e.hasNext()) {
                        info = (NavigationHistoryEditorInfo)e.next();
                        if (id.equals(info.editorID) && input.equals(info.editorInput)) {
                            if (!partClosed || info == currentInfo) break;
                            info.handlePartClosed();
                            break;
                        }
                        info = null;
                    }
                    if (info == null) {
                        return;
                    }
                    boolean isEntryDisposed = false;
                    e = NavigationHistory.this.history.iterator();
                    int i = 0;
                    while (e.hasNext()) {
                        NavigationHistoryEntry entry = (NavigationHistoryEntry)e.next();
                        if (entry.editorInfo != info) continue;
                        if (!entry.handlePartClosed()) {
                            if (i < NavigationHistory.this.activeEntry) {
                                NavigationHistory navigationHistory = NavigationHistory.this;
                                navigationHistory.activeEntry = navigationHistory.activeEntry - 1;
                            } else if (i == NavigationHistory.this.activeEntry) {
                                if (i != 0) {
                                    NavigationHistory navigationHistory = NavigationHistory.this;
                                    navigationHistory.activeEntry = navigationHistory.activeEntry - 1;
                                }
                            } else {
                                ++i;
                            }
                            isEntryDisposed = true;
                            e.remove();
                            NavigationHistory.this.disposeEntry(entry);
                            continue;
                        }
                        ++i;
                    }
                    if (!isEntryDisposed && page.getActiveEditor() == null && NavigationHistory.this.activeEntry < NavigationHistory.this.history.size()) {
                        NavigationHistory navigationHistory = NavigationHistory.this;
                        navigationHistory.activeEntry = navigationHistory.activeEntry + 1;
                    }
                    NavigationHistory.this.updateActions();
                }
            }
        });
    }

    private Display getDisplay() {
        return this.page.getWorkbenchWindow().getShell().getDisplay();
    }

    private boolean isPerTabHistoryEnabled() {
        return ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).isPerTabHistoryEnabled();
    }

    public void markEditor(final IEditorPart part) {
        if (this.ignoreEntries > 0 || part == null) {
            return;
        }
        ++this.ignoreEntries;
        this.getDisplay().asyncExec(new Runnable(){

            public void run() {
                NavigationHistory navigationHistory = NavigationHistory.this;
                int n = navigationHistory.ignoreEntries - 1;
                navigationHistory.ignoreEntries = n;
                if (n == 0 && part.getEditorSite() instanceof EditorSite) {
                    EditorSite site = (EditorSite)part.getEditorSite();
                    Control c = site.getPane().getControl();
                    if (c == null || c.isDisposed()) {
                        return;
                    }
                    NavigationHistoryEntry e = NavigationHistory.this.getEntry(NavigationHistory.this.activeEntry);
                    if (e != null && part.getEditorInput() != e.editorInfo.editorInput) {
                        NavigationHistory.this.updateEntry(e);
                    }
                    NavigationHistory.this.addEntry(part);
                }
            }
        });
    }

    public void markLocation(IEditorPart part) {
        this.addEntry(part);
    }

    NavigationHistoryEntry[] getBackwardEntries() {
        if (this.isPerTabHistoryEnabled()) {
            return this.getEntriesForTab(false);
        }
        int length = this.activeEntry;
        NavigationHistoryEntry[] entries = new NavigationHistoryEntry[length];
        int i = 0;
        while (i < this.activeEntry) {
            entries[this.activeEntry - 1 - i] = this.getEntry(i);
            ++i;
        }
        return entries;
    }

    NavigationHistoryEntry[] getForwardEntries() {
        if (this.isPerTabHistoryEnabled()) {
            return this.getEntriesForTab(true);
        }
        int length = this.history.size() - this.activeEntry - 1;
        length = Math.max(0, length);
        NavigationHistoryEntry[] entries = new NavigationHistoryEntry[length];
        int i = this.activeEntry + 1;
        while (i < this.history.size()) {
            entries[i - this.activeEntry - 1] = this.getEntry(i);
            ++i;
        }
        return entries;
    }

    public INavigationLocation[] getLocations() {
        INavigationLocation[] result = new INavigationLocation[this.history.size()];
        int i = 0;
        while (i < result.length) {
            NavigationHistoryEntry e = (NavigationHistoryEntry)this.history.get(i);
            result[i] = e.location;
            ++i;
        }
        return result;
    }

    public INavigationLocation getCurrentLocation() {
        NavigationHistoryEntry entry = this.getEntry(this.activeEntry);
        return entry == null ? null : entry.location;
    }

    public void dispose() {
        this.disposeHistoryForTabs();
        Iterator e = this.history.iterator();
        while (e.hasNext()) {
            NavigationHistoryEntry entry = (NavigationHistoryEntry)e.next();
            this.disposeEntry(entry);
        }
    }

    void setForwardAction(NavigationHistoryAction action) {
        this.forwardAction = action;
        this.updateActions();
    }

    void setBackwardAction(NavigationHistoryAction action) {
        this.backwardAction = action;
        this.updateActions();
    }

    private NavigationHistoryEntry getEntry(int index) {
        if (index >= 0 && index < this.history.size()) {
            return (NavigationHistoryEntry)this.history.get(index);
        }
        return null;
    }

    private void add(NavigationHistoryEntry entry) {
        this.removeForwardEntries();
        if (this.history.size() == 50) {
            NavigationHistoryEntry e = (NavigationHistoryEntry)this.history.remove(0);
            this.disposeEntry(e);
        }
        this.history.add(entry);
        this.activeEntry = this.history.size() - 1;
    }

    private void removeForwardEntries() {
        int length = this.history.size();
        int i = this.activeEntry + 1;
        while (i < length) {
            NavigationHistoryEntry e = (NavigationHistoryEntry)this.history.remove(this.activeEntry + 1);
            this.disposeEntry(e);
            ++i;
        }
    }

    private void addEntry(IEditorPart part) {
        NavigationHistoryEntry current;
        if (this.ignoreEntries > 0 || part == null) {
            return;
        }
        if (this.isPerTabHistoryEnabled()) {
            this.markLocationForTab(part);
        }
        INavigationLocation location = null;
        if (part instanceof INavigationLocationProvider) {
            location = ((INavigationLocationProvider)((Object)part)).createNavigationLocation();
        }
        if ((current = this.getEntry(this.activeEntry)) != null && current.editorInfo.memento != null) {
            current.editorInfo.restoreEditor();
            this.checkDuplicates(current.editorInfo);
        }
        NavigationHistoryEntry e = this.createEntry(this.page, part, location);
        if (current == null) {
            this.add(e);
        } else if (e.mergeInto(current)) {
            this.disposeEntry(e);
            this.removeForwardEntries();
        } else {
            this.add(e);
        }
        this.printEntries("added entry");
        this.updateActions();
    }

    private void printEntries(String label) {
    }

    boolean canForward() {
        if (this.isPerTabHistoryEnabled()) {
            return this.hasEntriesForTab(true);
        }
        return this.activeEntry + 1 >= 0 && this.activeEntry + 1 < this.history.size();
    }

    boolean canBackward() {
        if (this.isPerTabHistoryEnabled()) {
            return this.hasEntriesForTab(false);
        }
        return this.activeEntry - 1 >= 0 && this.activeEntry - 1 < this.history.size();
    }

    private void updateActions() {
        if (this.backwardAction != null) {
            this.backwardAction.update();
        }
        if (this.forwardAction != null) {
            this.forwardAction.update();
        }
    }

    private void gotoEntry(NavigationHistoryEntry entry) {
        if (entry == null) {
            return;
        }
        try {
            ++this.ignoreEntries;
            if (entry.editorInfo.memento != null) {
                entry.editorInfo.restoreEditor();
                this.checkDuplicates(entry.editorInfo);
            }
            entry.restoreLocation();
            this.updateActions();
            this.printEntries("goto entry");
        }
        finally {
            --this.ignoreEntries;
        }
    }

    private void updateEntry(NavigationHistoryEntry activeEntry) {
        if (activeEntry == null || activeEntry.location == null) {
            return;
        }
        activeEntry.location.update();
        this.printEntries("updateEntry");
    }

    void forward() {
        if (this.isPerTabHistoryEnabled()) {
            this.forwardForTab();
            return;
        }
        if (this.canForward()) {
            this.shiftEntry(true);
        }
    }

    void backward() {
        if (this.isPerTabHistoryEnabled()) {
            this.backwardForTab();
            return;
        }
        if (this.canBackward()) {
            this.shiftEntry(false);
        }
    }

    private void shiftEntry(boolean forward) {
        this.updateEntry(this.getEntry(this.activeEntry));
        this.activeEntry = forward ? ++this.activeEntry : --this.activeEntry;
        NavigationHistoryEntry entry = this.getEntry(this.activeEntry);
        if (entry != null) {
            this.gotoEntry(entry);
        }
    }

    void shiftCurrentEntry(NavigationHistoryEntry entry, boolean forward) {
        if (this.isPerTabHistoryEnabled()) {
            this.gotoEntryForTab(entry, forward);
            return;
        }
        this.updateEntry(this.getEntry(this.activeEntry));
        this.activeEntry = this.history.indexOf(entry);
        this.gotoEntry(entry);
    }

    void saveState(IMemento memento) {
        NavigationHistoryEntry entry;
        NavigationHistoryEntry cEntry = this.getEntry(this.activeEntry);
        if (cEntry == null || !cEntry.editorInfo.isPersistable()) {
            return;
        }
        ArrayList editors = (ArrayList)this.editors.clone();
        Iterator iter = editors.iterator();
        while (iter.hasNext()) {
            NavigationHistoryEditorInfo info = (NavigationHistoryEditorInfo)iter.next();
            if (info.isPersistable()) continue;
            iter.remove();
        }
        IMemento editorsMem = memento.createChild("editors");
        Iterator iter2 = editors.iterator();
        while (iter2.hasNext()) {
            NavigationHistoryEditorInfo info = (NavigationHistoryEditorInfo)iter2.next();
            info.saveState(editorsMem.createChild("editor"));
        }
        ArrayList<NavigationHistoryEntry> list = new ArrayList<NavigationHistoryEntry>(this.history.size());
        int size = this.history.size();
        int i = 0;
        while (i < size) {
            entry = (NavigationHistoryEntry)this.history.get(i);
            if (entry.editorInfo.isPersistable()) {
                list.add(entry);
            }
            ++i;
        }
        size = list.size();
        i = 0;
        while (i < size) {
            entry = (NavigationHistoryEntry)list.get(i);
            IMemento childMem = memento.createChild("item");
            if (entry == cEntry) {
                childMem.putString("active", "true");
            }
            entry.saveState(childMem, list);
            childMem.putInteger("index", editors.indexOf(entry.editorInfo));
            ++i;
        }
    }

    void restoreState(IMemento memento) {
        IMemento editorsMem = memento.getChild("editors");
        IMemento[] items = memento.getChildren("item");
        if (items.length == 0 || editorsMem == null) {
            if (this.page.getActiveEditor() != null) {
                this.markLocation(this.page.getActiveEditor());
            }
            return;
        }
        IMemento[] children = editorsMem.getChildren("editor");
        NavigationHistoryEditorInfo[] editorsInfo = new NavigationHistoryEditorInfo[children.length];
        int i = 0;
        while (i < editorsInfo.length) {
            editorsInfo[i] = new NavigationHistoryEditorInfo(children[i]);
            this.editors.add(editorsInfo[i]);
            ++i;
        }
        i = 0;
        while (i < items.length) {
            IMemento item = items[i];
            int index = item.getInteger("index");
            NavigationHistoryEditorInfo info = editorsInfo[index];
            ++info.refCount;
            NavigationHistoryEntry entry = new NavigationHistoryEntry(info, this.page, null, null);
            this.history.add(entry);
            entry.restoreState(item);
            if (item.getString("active") != null) {
                this.activeEntry = i;
            }
            ++i;
        }
        final NavigationHistoryEntry entry = this.getEntry(this.activeEntry);
        if (entry != null && entry.editorInfo.editorInput != null && this.page.getActiveEditor() == this.page.findEditor(entry.editorInfo.editorInput)) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    NavigationHistory.this.gotoEntry(entry);
                }
            });
        }
    }

    public NavigationHistoryEntry createEntry(IWorkbenchPage page, IEditorPart part, INavigationLocation location) {
        String editorID = part.getSite().getId();
        IEditorInput editorInput = part.getEditorInput();
        NavigationHistoryEditorInfo info = null;
        Iterator iter = this.editors.iterator();
        while (iter.hasNext()) {
            info = (NavigationHistoryEditorInfo)iter.next();
            if (editorID.equals(info.editorID) && editorInput.equals(info.editorInput)) {
                ++info.refCount;
                break;
            }
            info = null;
        }
        if (info == null) {
            info = new NavigationHistoryEditorInfo(part);
            ++info.refCount;
            this.editors.add(info);
        }
        return new NavigationHistoryEntry(info, page, part, location);
    }

    public void disposeEntry(NavigationHistoryEntry entry) {
        if (entry.editorInfo == null) {
            return;
        }
        --entry.editorInfo.refCount;
        if (entry.editorInfo.refCount == 0) {
            this.editors.remove(entry.editorInfo);
        }
        entry.dispose();
    }

    void checkDuplicates(NavigationHistoryEditorInfo info) {
        NavigationHistoryEditorInfo dup = null;
        if (info.editorInput == null) {
            return;
        }
        Iterator iter = this.editors.iterator();
        while (iter.hasNext()) {
            dup = (NavigationHistoryEditorInfo)iter.next();
            if (info != dup && info.editorID.equals(dup.editorID) && info.editorInput.equals(dup.editorInput)) break;
            dup = null;
        }
        if (dup == null) {
            return;
        }
        iter = this.history.iterator();
        while (iter.hasNext()) {
            NavigationHistoryEntry entry = (NavigationHistoryEntry)iter.next();
            if (entry.editorInfo != dup) continue;
            entry.editorInfo = info;
            ++info.refCount;
        }
        this.editors.remove(dup);
    }

    private void setNewCurrentEntryForTab(PerTabHistory perTabHistory, NavigationHistoryEntry entry) {
        if (perTabHistory.currentEntry != null) {
            perTabHistory.backwardEntries.addFirst(perTabHistory.currentEntry);
        }
        perTabHistory.currentEntry = entry;
        this.removeEntriesForTab(perTabHistory.forwardEntries);
    }

    private Object getCookieForTab(IEditorPart part) {
        PartSite partSite;
        WorkbenchPartReference ref;
        IWorkbenchPartSite site;
        if (part != null && (site = part.getSite()) instanceof PartSite && !(ref = (WorkbenchPartReference)(partSite = (PartSite)site).getPartReference()).isDisposed()) {
            return partSite.getPane();
        }
        return null;
    }

    private void markLocationForTab(IEditorPart part) {
        if (part instanceof ErrorEditorPart) {
            this.updateActions();
            return;
        }
        Object tabCookie = this.getCookieForTab(part);
        if (tabCookie != null) {
            NavigationHistoryEntry current;
            PerTabHistory perTabHistory;
            INavigationLocation location = null;
            if (part instanceof INavigationLocationProvider) {
                location = ((INavigationLocationProvider)((Object)part)).createNavigationLocation();
            }
            if ((perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(tabCookie)) == null) {
                perTabHistory = new PerTabHistory();
                this.perTabHistoryMap.put(tabCookie, perTabHistory);
            }
            if ((current = perTabHistory.currentEntry) != null && current.editorInfo.memento != null) {
                current.editorInfo.restoreEditor();
                this.checkDuplicates(current.editorInfo);
            }
            NavigationHistoryEntry entry = this.createEntry(this.page, part, location);
            if (current != null && entry.mergeInto(current)) {
                this.disposeEntry(entry);
                this.removeEntriesForTab(perTabHistory.forwardEntries);
            } else {
                this.setNewCurrentEntryForTab(perTabHistory, entry);
            }
        }
        this.updateActions();
    }

    public void updateCookieForTab(Object oldCookie, Object newCookie) {
        if (newCookie.equals(oldCookie)) {
            return;
        }
        PerTabHistory perTabHistory = (PerTabHistory)this.perTabHistoryMap.remove(oldCookie);
        if (perTabHistory != null) {
            this.perTabHistoryMap.put(newCookie, perTabHistory);
        }
    }

    private void gotoEntryForTab(NavigationHistoryEntry target, boolean forward) {
        PerTabHistory perTabHistory;
        Object editorTabCookie = this.getCookieForTab(this.page.getActiveEditor());
        if (editorTabCookie != null && (perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(editorTabCookie)) != null) {
            LinkedList destination;
            LinkedList source = forward ? perTabHistory.forwardEntries : perTabHistory.backwardEntries;
            LinkedList linkedList = destination = forward ? perTabHistory.backwardEntries : perTabHistory.forwardEntries;
            if (perTabHistory.currentEntry != null) {
                if (perTabHistory.currentEntry.location != null) {
                    perTabHistory.currentEntry.location.update();
                }
                destination.addFirst(perTabHistory.currentEntry);
            }
            NavigationHistoryEntry newCurrent = null;
            while (!source.isEmpty() && newCurrent == null) {
                NavigationHistoryEntry entry = (NavigationHistoryEntry)source.removeFirst();
                if (entry.equals(target)) {
                    newCurrent = entry;
                    continue;
                }
                destination.addFirst(entry);
            }
            Assert.isTrue((newCurrent != null ? 1 : 0) != 0);
            perTabHistory.currentEntry = newCurrent;
            try {
                ++this.ignoreEntries;
                if (newCurrent.editorInfo.memento != null) {
                    newCurrent.editorInfo.restoreEditor();
                    this.checkDuplicates(newCurrent.editorInfo);
                }
                newCurrent.restoreLocation();
                this.updateActions();
            }
            finally {
                --this.ignoreEntries;
            }
        }
    }

    private void forwardForTab() {
        PerTabHistory perTabHistory;
        Object editorTabCookie = this.getCookieForTab(this.page.getActiveEditor());
        if (editorTabCookie != null && (perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(editorTabCookie)) != null && !perTabHistory.forwardEntries.isEmpty()) {
            NavigationHistoryEntry newCurrent = (NavigationHistoryEntry)perTabHistory.forwardEntries.removeFirst();
            if (perTabHistory.currentEntry != null) {
                INavigationLocation location = perTabHistory.currentEntry.location;
                if (location != null) {
                    location.update();
                }
                perTabHistory.backwardEntries.addFirst(perTabHistory.currentEntry);
            }
            perTabHistory.currentEntry = newCurrent;
            try {
                ++this.ignoreEntries;
                if (newCurrent.editorInfo.memento != null) {
                    newCurrent.editorInfo.restoreEditor();
                    this.checkDuplicates(newCurrent.editorInfo);
                }
                newCurrent.restoreLocation();
                this.updateActions();
            }
            finally {
                --this.ignoreEntries;
            }
        }
    }

    private void backwardForTab() {
        PerTabHistory perTabHistory;
        Object editorTabCookie = this.getCookieForTab(this.page.getActiveEditor());
        if (editorTabCookie != null && (perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(editorTabCookie)) != null && !perTabHistory.backwardEntries.isEmpty()) {
            NavigationHistoryEntry newCurrent = (NavigationHistoryEntry)perTabHistory.backwardEntries.removeFirst();
            if (perTabHistory.currentEntry != null) {
                perTabHistory.currentEntry.location.update();
                perTabHistory.forwardEntries.addFirst(perTabHistory.currentEntry);
            }
            perTabHistory.currentEntry = newCurrent;
            try {
                ++this.ignoreEntries;
                if (newCurrent.editorInfo.memento != null) {
                    newCurrent.editorInfo.restoreEditor();
                    this.checkDuplicates(newCurrent.editorInfo);
                }
                newCurrent.restoreLocation();
                this.updateActions();
            }
            finally {
                --this.ignoreEntries;
            }
        }
    }

    private boolean hasEntriesForTab(boolean forward) {
        PerTabHistory perTabHistory;
        Object editorTabCookie = this.getCookieForTab(this.page.getActiveEditor());
        if (editorTabCookie != null && (perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(editorTabCookie)) != null) {
            LinkedList entries = forward ? perTabHistory.forwardEntries : perTabHistory.backwardEntries;
            return !entries.isEmpty();
        }
        return false;
    }

    private NavigationHistoryEntry[] getEntriesForTab(boolean forward) {
        PerTabHistory perTabHistory;
        Object editorTabCookie = this.getCookieForTab(this.page.getActiveEditor());
        if (editorTabCookie != null && (perTabHistory = (PerTabHistory)this.perTabHistoryMap.get(editorTabCookie)) != null) {
            LinkedList entries = forward ? perTabHistory.forwardEntries : perTabHistory.backwardEntries;
            return entries.toArray(new NavigationHistoryEntry[entries.size()]);
        }
        return new NavigationHistoryEntry[0];
    }

    private void disposeHistoryForTabs() {
        Object[] keys = this.perTabHistoryMap.keySet().toArray();
        int i = 0;
        while (i < keys.length) {
            this.disposeHistoryForTab(keys[i]);
            ++i;
        }
    }

    void disposeHistoryForTab(Object editorTabCookie) {
        PerTabHistory perTabHistory = (PerTabHistory)this.perTabHistoryMap.remove(editorTabCookie);
        if (perTabHistory != null) {
            if (perTabHistory.currentEntry != null) {
                this.disposeEntry(perTabHistory.currentEntry);
                perTabHistory.currentEntry = null;
            }
            this.removeEntriesForTab(perTabHistory.backwardEntries);
            this.removeEntriesForTab(perTabHistory.forwardEntries);
        }
    }

    private void removeEntriesForTab(LinkedList entries) {
        Iterator it = entries.iterator();
        while (it.hasNext()) {
            NavigationHistoryEntry entry = (NavigationHistoryEntry)it.next();
            this.disposeEntry(entry);
            it.remove();
        }
    }

    public boolean updateActive(IEditorPart editor) {
        NavigationHistoryEntry e = this.getEntry(this.activeEntry);
        if (e == null) {
            return false;
        }
        IWorkbenchPartSite site = editor.getSite();
        if (site == null) {
            return false;
        }
        String editorID = site.getId();
        if (editorID == null) {
            return false;
        }
        if (!editorID.equals(e.editorInfo.editorID)) {
            return false;
        }
        IEditorInput input = editor.getEditorInput();
        if (input == null) {
            return false;
        }
        if (!input.equals(e.editorInfo.editorInput)) {
            return false;
        }
        this.updateEntry(e);
        return true;
    }

    private static class PerTabHistory {
        LinkedList backwardEntries = new LinkedList();
        NavigationHistoryEntry currentEntry = null;
        LinkedList forwardEntries = new LinkedList();

        private PerTabHistory() {
        }
    }
}

