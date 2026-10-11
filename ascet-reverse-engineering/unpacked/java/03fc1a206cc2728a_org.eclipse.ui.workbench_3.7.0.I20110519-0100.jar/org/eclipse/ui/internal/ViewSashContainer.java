/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.internal;

import java.util.HashMap;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.ContainerPlaceholder;
import org.eclipse.ui.internal.ILayoutContainer;
import org.eclipse.ui.internal.LayoutPart;
import org.eclipse.ui.internal.PartPlaceholder;
import org.eclipse.ui.internal.PartSashContainer;
import org.eclipse.ui.internal.PartStack;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.ViewStack;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class ViewSashContainer
extends PartSashContainer {
    public ViewSashContainer(WorkbenchPage page, Composite parent) {
        super("root layout container", page, parent);
    }

    public ViewSashContainer getRootContainer() {
        return this;
    }

    protected Composite createParent(Composite parentWidget) {
        return parentWidget;
    }

    protected void disposeParent() {
    }

    public Control getControl() {
        return this.parent;
    }

    public IStatus restoreState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.RootLayoutContainer_problemsRestoringPerspective, null);
        IMemento[] children = memento.getChildren("info");
        final HashMap<String, PartPlaceholder> mapIDtoPart = new HashMap<String, PartPlaceholder>(children.length);
        int i = 0;
        while (i < children.length) {
            IMemento childMem = children[i];
            String partID = childMem.getString("part");
            final String relativeID = childMem.getString("relative");
            int relationship = 0;
            float ratio = 0.0f;
            int left = 0;
            int right = 0;
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
            String strFolder = childMem.getString("folder");
            PartPlaceholder part = null;
            if (strFolder == null) {
                part = new PartPlaceholder(partID);
            } else {
                ViewStack folder = new ViewStack(this.page);
                folder.setID(partID);
                result.add(folder.restoreState(childMem.getChild("folder")));
                ContainerPlaceholder placeholder = new ContainerPlaceholder(partID);
                placeholder.setRealContainer(folder);
                part = placeholder;
            }
            part.setContainer(this);
            final int myLeft = left;
            final int myRight = right;
            final int myRelationship = relationship;
            final float myRatio = ratio;
            final PartPlaceholder myPart = part;
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    if (relativeID == null) {
                        ViewSashContainer.this.add(myPart);
                    } else {
                        LayoutPart refPart = (LayoutPart)mapIDtoPart.get(relativeID);
                        if (refPart != null) {
                            if (myLeft != 0) {
                                ViewSashContainer.this.add(myPart, myRelationship, myLeft, myRight, refPart);
                            } else {
                                ViewSashContainer.this.add(myPart, myRelationship, myRatio, refPart);
                            }
                        } else {
                            WorkbenchPlugin.log("Unable to find part for ID: " + relativeID);
                        }
                    }
                }
            });
            mapIDtoPart.put(partID, part);
            ++i;
        }
        return result;
    }

    public IStatus saveState(IMemento memento) {
        PartSashContainer.RelationshipInfo[] relationships = this.computeRelation();
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.RootLayoutContainer_problemsSavingPerspective, null);
        int i = 0;
        while (i < relationships.length) {
            LayoutPart part;
            PartSashContainer.RelationshipInfo info = relationships[i];
            IMemento childMem = memento.createChild("info");
            childMem.putString("part", info.part.getID());
            if (info.relative != null) {
                childMem.putString("relative", info.relative.getID());
                childMem.putInteger("relationship", info.relationship);
                childMem.putInteger("ratioLeft", info.left);
                childMem.putInteger("ratioRight", info.right);
                childMem.putFloat("ratio", info.getRatio());
            }
            ViewStack folder = null;
            if (info.part instanceof ViewStack) {
                folder = (ViewStack)info.part;
            } else if (info.part instanceof ContainerPlaceholder && (part = ((ContainerPlaceholder)info.part).getRealContainer()) instanceof ViewStack) {
                folder = (ViewStack)part;
            }
            if (folder != null) {
                childMem.putString("folder", "true");
                IMemento folderMem = childMem.createChild("folder");
                result.add(folder.saveState(folderMem));
            }
            ++i;
        }
        return result;
    }

    protected float getDockingRatio(LayoutPart dragged, LayoutPart target) {
        if (this.isStackType(target)) {
            return super.getDockingRatio(dragged, target);
        }
        return 0.25f;
    }

    public boolean isStackType(LayoutPart toTest) {
        return toTest instanceof ViewStack;
    }

    public boolean isPaneType(LayoutPart toTest) {
        return toTest instanceof ViewPane;
    }

    protected PartStack createStack() {
        ViewStack result = new ViewStack(this.page);
        return result;
    }

    protected void setVisiblePart(ILayoutContainer container, LayoutPart visiblePart) {
        if (container instanceof ViewStack) {
            ViewStack tabFolder = (ViewStack)container;
            tabFolder.setSelection(visiblePart);
        }
    }

    protected LayoutPart getVisiblePart(ILayoutContainer container) {
        return ((ViewStack)container).getSelection();
    }

    protected void derefPart(LayoutPart sourcePart) {
        this.page.getActivePerspective().getPresentation().derefPart(sourcePart);
    }

    protected void addChild(PartSashContainer.RelationshipInfo info) {
        LayoutPart child = info.part;
        if (child instanceof ViewPane) {
            ViewStack folder = new ViewStack(this.page);
            folder.add(child);
            info.part = folder;
        }
        super.addChild(info);
    }

    public void replace(LayoutPart oldChild, LayoutPart newChild) {
        if (!this.isChild(oldChild)) {
            return;
        }
        if (newChild instanceof ViewPane) {
            ViewStack folder = new ViewStack(this.page);
            folder.add(newChild);
            newChild = folder;
        }
        super.replace(oldChild, newChild);
    }
}

