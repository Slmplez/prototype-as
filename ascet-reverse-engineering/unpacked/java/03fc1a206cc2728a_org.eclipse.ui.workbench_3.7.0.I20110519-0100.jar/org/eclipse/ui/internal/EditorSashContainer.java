/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.dnd.DropTarget
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.dnd.DropTarget;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.EditorPane;
import org.eclipse.ui.internal.EditorStack;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPane;
import org.eclipse.ui.internal.PartSashContainer;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchWindowConfigurer;
import org.eclipse.ui.internal.presentations.PresentationSerializer;

public class EditorSashContainer
extends PartSashContainer {
    static final String DEFAULT_WORKBOOK_ID = "DefaultEditorWorkbook";
    private ArrayList editorWorkbooks = new ArrayList(3);
    private EditorStack activeEditorWorkbook;
    private DropTarget dropTarget;

    public EditorSashContainer(String editorId, WorkbenchPage page, Composite parent) {
        super(editorId, page, parent);
        this.createDefaultWorkbook();
    }

    public void addEditor(EditorPane pane, EditorStack stack) {
        stack.add(pane);
    }

    protected void addChild(PartSashContainer.RelationshipInfo info) {
        super.addChild(info);
        this.updateStackButtons();
    }

    public void updateStackButtons() {
        Perspective persp = this.getPage().getActivePerspective();
        if (!Perspective.useNewMinMax(persp)) {
            return;
        }
        LayoutPart[] stacks = this.getChildren();
        EditorStack winner = this.getUpperRightEditorStack(stacks);
        int i = 0;
        while (i < stacks.length) {
            if (stacks[i] instanceof EditorStack) {
                ((EditorStack)stacks[i]).showMinMax(stacks[i] == winner);
            }
            ++i;
        }
        persp.refreshEditorAreaVisibility();
    }

    public EditorStack getUpperRightEditorStack(LayoutPart[] stacks) {
        if (stacks == null) {
            stacks = this.getChildren();
        }
        EditorStack winner = null;
        Rectangle winnerRect = null;
        int i = 0;
        while (i < stacks.length) {
            if (stacks[i] instanceof EditorStack) {
                EditorStack stack = (EditorStack)stacks[i];
                Rectangle bb = stack.getBounds();
                if (winnerRect == null || bb.y < winnerRect.y || bb.y == winnerRect.y && bb.x > winnerRect.x) {
                    winner = stack;
                    winnerRect = bb;
                }
            }
            ++i;
        }
        return winner;
    }

    protected void childAdded(LayoutPart child) {
        super.childAdded(child);
        if (child instanceof EditorStack) {
            this.editorWorkbooks.add(child);
        }
    }

    protected void childRemoved(LayoutPart child) {
        super.childRemoved(child);
        if (child instanceof EditorStack) {
            this.editorWorkbooks.remove(child);
            if (this.activeEditorWorkbook == child) {
                this.setActiveWorkbook(null, false);
            }
            this.updateStackButtons();
        }
    }

    protected EditorStack createDefaultWorkbook() {
        EditorStack newWorkbook = EditorStack.newEditorWorkbook(this, this.page);
        newWorkbook.setID(DEFAULT_WORKBOOK_ID);
        this.add(newWorkbook);
        return newWorkbook;
    }

    protected Composite createParent(Composite parentWidget) {
        return new Composite(parentWidget, 0);
    }

    public void dispose() {
        this.editorWorkbooks.clear();
        super.dispose();
    }

    protected void disposeParent() {
        this.parent.dispose();
    }

    public EditorStack getActiveWorkbook() {
        if (this.activeEditorWorkbook == null) {
            if (this.editorWorkbooks.size() < 1) {
                this.setActiveWorkbook(this.createDefaultWorkbook(), false);
            } else {
                this.setActiveWorkbook((EditorStack)this.editorWorkbooks.get(0), false);
            }
        }
        return this.activeEditorWorkbook;
    }

    public String getActiveWorkbookID() {
        return this.getActiveWorkbook().getID();
    }

    public ArrayList getEditorWorkbooks() {
        return (ArrayList)this.editorWorkbooks.clone();
    }

    public int getEditorWorkbookCount() {
        return this.editorWorkbooks.size();
    }

    protected boolean isActiveWorkbook(EditorStack workbook) {
        return this.activeEditorWorkbook == workbook;
    }

    public void findSashes(LayoutPart pane, PartPane.Sashes sashes) {
        super.findSashes(pane, sashes);
        ILayoutContainer container = this.getContainer();
        if (container != null) {
            container.findSashes(this, sashes);
        }
    }

    public void removeAllEditors() {
        EditorStack currentWorkbook = this.getActiveWorkbook();
        Iterator workbooks = ((ArrayList)this.editorWorkbooks.clone()).iterator();
        while (workbooks.hasNext()) {
            EditorStack workbook = (EditorStack)workbooks.next();
            workbook.removeAll();
            if (workbook == currentWorkbook) continue;
            this.remove(workbook);
            workbook.dispose();
        }
    }

    public void removeEditor(EditorPane pane) {
        EditorStack workbook = pane.getWorkbook();
        if (workbook == null) {
            return;
        }
        workbook.remove(pane);
        if (workbook.getItemCount() < 1) {
            Perspective persp = this.getPage().getActivePerspective();
            if (Perspective.useNewMinMax(persp) && persp.getPresentation().getMaximizedStack() instanceof EditorStack) {
                persp.getPresentation().getMaximizedStack().setState(2);
            }
            this.remove(workbook);
            workbook.dispose();
        }
    }

    public IStatus restoreState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.RootLayoutContainer_problemsRestoringPerspective, null);
        if (this.children != null) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    PartStack defaultWorkbook = null;
                    int i = 0;
                    while (i < EditorSashContainer.this.children.size()) {
                        LayoutPart child = (LayoutPart)EditorSashContainer.this.children.get(i);
                        if (child.getID() == EditorSashContainer.DEFAULT_WORKBOOK_ID && (defaultWorkbook = (EditorStack)child).getItemCount() > 0) {
                            defaultWorkbook = null;
                        }
                        ++i;
                    }
                    if (defaultWorkbook != null) {
                        EditorSashContainer.this.remove(defaultWorkbook);
                        defaultWorkbook.dispose();
                    }
                }
            });
        }
        IMemento[] infos = memento.getChildren("info");
        final HashMap<String, EditorStack> mapIDtoPart = new HashMap<String, EditorStack>(infos.length);
        int i = 0;
        while (i < infos.length) {
            IMemento childMem = infos[i];
            final String partID = childMem.getString("part");
            final String relativeID = childMem.getString("relative");
            int relationship = 0;
            int left = 0;
            int right = 0;
            float ratio = 0.5f;
            if (relativeID != null) {
                relationship = childMem.getInteger("relationship");
                Float ratioFloat = childMem.getFloat("ratio");
                Integer leftInt = childMem.getInteger("ratioLeft");
                Integer rightInt = childMem.getInteger("ratioRight");
                if (leftInt != null && rightInt != null) {
                    left = leftInt;
                    right = rightInt;
                } else if (ratioFloat != null) {
                    ratio = ratioFloat.floatValue();
                }
            }
            final EditorStack[] workbook = new EditorStack[1];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    workbook[0] = EditorStack.newEditorWorkbook(EditorSashContainer.this, EditorSashContainer.this.page);
                    workbook[0].setID(partID);
                    workbook[0].setContainer(EditorSashContainer.this);
                }
            });
            IMemento workbookMemento = childMem.getChild("folder");
            if (workbookMemento != null) {
                result.add(workbook[0].restoreState(workbookMemento));
            }
            final int myLeft = left;
            final int myRight = right;
            final int myRelationship = relationship;
            final float myRatio = ratio;
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    if (relativeID == null) {
                        EditorSashContainer.this.add(workbook[0]);
                    } else {
                        LayoutPart refPart = (LayoutPart)mapIDtoPart.get(relativeID);
                        if (refPart != null) {
                            if (myLeft == 0 || myRight == 0) {
                                EditorSashContainer.this.add(workbook[0], myRelationship, myRatio, refPart);
                            } else {
                                EditorSashContainer.this.add(workbook[0], myRelationship, myLeft, myRight, refPart);
                            }
                        } else {
                            WorkbenchPlugin.log("Unable to find part for ID: " + relativeID);
                        }
                    }
                }
            });
            mapIDtoPart.put(partID, workbook[0]);
            ++i;
        }
        return result;
    }

    public IStatus saveState(IMemento memento) {
        PartSashContainer.RelationshipInfo[] relationships = this.computeRelation();
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.RootLayoutContainer_problemsSavingPerspective, null);
        int i = 0;
        while (i < relationships.length) {
            PartSashContainer.RelationshipInfo info = relationships[i];
            IMemento childMem = memento.createChild("info");
            childMem.putString("part", info.part.getID());
            EditorStack stack = (EditorStack)info.part;
            if (stack != null) {
                IMemento folderMem = childMem.createChild("folder");
                result.add(stack.saveState(folderMem));
            }
            if (info.relative != null) {
                childMem.putString("relative", info.relative.getID());
                childMem.putInteger("relationship", info.relationship);
                childMem.putInteger("ratioLeft", info.left);
                childMem.putInteger("ratioRight", info.right);
                childMem.putFloat("ratio", info.getRatio());
            }
            ++i;
        }
        return result;
    }

    public void setActiveWorkbook(EditorStack newWorkbook, boolean hasFocus) {
        if (newWorkbook != null) {
            if (newWorkbook.isDisposed()) {
                return;
            }
            if (!this.editorWorkbooks.contains(newWorkbook)) {
                return;
            }
        }
        EditorStack oldWorkbook = this.activeEditorWorkbook;
        this.activeEditorWorkbook = newWorkbook;
        if (oldWorkbook != null && oldWorkbook != newWorkbook) {
            oldWorkbook.setActive(0);
        }
        if (newWorkbook != null) {
            if (hasFocus) {
                newWorkbook.setActive(1);
            } else {
                newWorkbook.setActive(2);
            }
        }
        this.updateTabList();
    }

    public void setActiveWorkbookFromID(String id) {
        int i = 0;
        while (i < this.editorWorkbooks.size()) {
            EditorStack workbook = (EditorStack)this.editorWorkbooks.get(i);
            if (workbook.getID().equals(id)) {
                this.setActiveWorkbook(workbook, false);
            }
            ++i;
        }
    }

    public EditorStack getWorkbookFromID(String id) {
        int i = 0;
        while (i < this.editorWorkbooks.size()) {
            EditorStack workbook = (EditorStack)this.editorWorkbooks.get(i);
            if (workbook.getID().equals(id)) {
                return workbook;
            }
            ++i;
        }
        return null;
    }

    public void updateTabList() {
        Composite parent = this.getParent();
        if (parent != null) {
            EditorStack wb = this.getActiveWorkbook();
            if (wb == null) {
                parent.setTabList(new Control[0]);
            } else {
                parent.setTabList(wb.getTabList());
            }
        }
    }

    public void createControl(Composite parent) {
        super.createControl(parent);
        this.addDropSupport();
    }

    private void addDropSupport() {
        if (this.dropTarget == null) {
            WorkbenchWindowConfigurer winConfigurer = ((WorkbenchWindow)this.page.getWorkbenchWindow()).getWindowConfigurer();
            this.dropTarget = new DropTarget(this.getControl(), 21);
            this.dropTarget.setTransfer(winConfigurer.getTransfers());
            if (winConfigurer.getDropTargetListener() != null) {
                this.dropTarget.addDropListener(winConfigurer.getDropTargetListener());
            }
        }
    }

    DropTarget getDropTarget() {
        return this.dropTarget;
    }

    public boolean isCompressible() {
        return true;
    }

    public boolean isStackType(LayoutPart toTest) {
        return toTest instanceof EditorStack;
    }

    public boolean isPaneType(LayoutPart toTest) {
        return toTest instanceof EditorPane;
    }

    protected PartStack createStack() {
        EditorStack newWorkbook = EditorStack.newEditorWorkbook(this, this.page);
        return newWorkbook;
    }

    protected void setVisiblePart(ILayoutContainer container, LayoutPart visiblePart) {
        EditorStack refPart = (EditorStack)container;
        refPart.becomeActiveWorkbook(true);
        refPart.setSelection(visiblePart);
    }

    protected LayoutPart getVisiblePart(ILayoutContainer container) {
        EditorStack refPart = (EditorStack)container;
        return refPart.getSelection();
    }

    public LayoutPart pickPartToZoom() {
        return this.getActiveWorkbook();
    }

    public IStatus restorePresentationState(IMemento areaMem) {
        Iterator i = this.getEditorWorkbooks().iterator();
        while (i.hasNext()) {
            final EditorStack workbook = (EditorStack)i.next();
            final IMemento memento = workbook.getSavedPresentationState();
            if (memento == null) continue;
            final PresentationSerializer serializer = new PresentationSerializer(workbook.getPresentableParts());
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    workbook.getPresentation().restoreState(serializer, memento);
                }
            });
        }
        return Status.OK_STATUS;
    }
}

