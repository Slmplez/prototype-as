/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.IIdentifierListener;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.activities.IdentifierEvent;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.PageLayout;
import org.eclipse.ui.internal.ViewFactory;
import org.eclipse.ui.internal.ViewPane;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPartReference;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.views.IViewDescriptor;

class LayoutHelper {
    private LayoutHelper() {
    }

    public static final void addViewActivator(PageLayout pageLayout, final String viewId) {
        if (viewId == null) {
            return;
        }
        ViewFactory viewFactory = pageLayout.getViewFactory();
        final WorkbenchPage partPage = viewFactory.getWorkbenchPage();
        if (partPage == null) {
            return;
        }
        final IPerspectiveDescriptor partPerspective = pageLayout.getDescriptor();
        IWorkbenchActivitySupport support = PlatformUI.getWorkbench().getActivitySupport();
        IViewDescriptor descriptor = viewFactory.getViewRegistry().find(viewId);
        if (!(descriptor instanceof IPluginContribution)) {
            return;
        }
        IIdentifier identifier = support.getActivityManager().getIdentifier(WorkbenchActivityHelper.createUnifiedId((IPluginContribution)((Object)descriptor)));
        identifier.addIdentifierListener(new IIdentifierListener(){

            public void identifierChanged(IdentifierEvent identifierEvent) {
                IIdentifier thisIdentifier;
                if (identifierEvent.hasEnabledChanged() && (thisIdentifier = identifierEvent.getIdentifier()).isEnabled()) {
                    thisIdentifier.removeIdentifierListener(this);
                    IWorkbenchPage activePage = partPage.getWorkbenchWindow().getActivePage();
                    if (partPage == activePage && partPerspective == activePage.getPerspective()) {
                        try {
                            partPage.showView(viewId);
                        }
                        catch (PartInitException e) {
                            WorkbenchPlugin.log(this.getClass(), "identifierChanged", (Throwable)((Object)e));
                        }
                    } else {
                        partPage.getWorkbenchWindow().addPerspectiveListener(new IPerspectiveListener(this, partPerspective, partPage, viewId){
                            final /* synthetic */ 1 this$1;
                            private final /* synthetic */ IPerspectiveDescriptor val$partPerspective;
                            private final /* synthetic */ IWorkbenchPage val$partPage;
                            private final /* synthetic */ String val$viewId;
                            {
                                this.this$1 = var1_1;
                                this.val$partPerspective = iPerspectiveDescriptor;
                                this.val$partPage = iWorkbenchPage;
                                this.val$viewId = string;
                            }

                            public void perspectiveActivated(IWorkbenchPage page, IPerspectiveDescriptor newPerspective) {
                                if (this.val$partPerspective == newPerspective) {
                                    this.val$partPage.getWorkbenchWindow().removePerspectiveListener(this);
                                    try {
                                        page.showView(this.val$viewId);
                                    }
                                    catch (PartInitException e) {
                                        WorkbenchPlugin.log(this.getClass(), "perspectiveActivated", (Throwable)((Object)e));
                                    }
                                }
                            }

                            public void perspectiveChanged(IWorkbenchPage page, IPerspectiveDescriptor perspective, String changeId) {
                            }
                        });
                    }
                }
            }
        });
    }

    public static final ViewPane createView(ViewFactory factory, String viewId) throws PartInitException {
        WorkbenchPartReference ref = (WorkbenchPartReference)((Object)factory.createView(ViewFactory.extractPrimaryId(viewId), ViewFactory.extractSecondaryId(viewId)));
        ViewPane newPart = (ViewPane)ref.getPane();
        return newPart;
    }
}

