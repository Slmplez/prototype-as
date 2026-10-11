/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.ui.IViewReference
 *  org.eclipse.ui.IWorkbenchPage
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.handlers.HandlerUtil
 *  org.eclipse.ui.part.IShowInSource
 *  org.eclipse.ui.part.ShowInContext
 */
package org.eclipse.ui.views.properties;

import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.part.IShowInSource;
import org.eclipse.ui.part.ShowInContext;
import org.eclipse.ui.views.properties.PropertySheet;
import org.eclipse.ui.views.properties.PropertyShowInContext;

public class NewPropertySheetHandler
extends AbstractHandler {
    public static final String ID = "org.eclipse.ui.views.properties.NewPropertySheetCommand";
    private static final boolean PIN_NEW_PROPERTY_VIEW = Boolean.valueOf(System.getProperty("org.eclipse.ui.views.properties.pinNewPV", Boolean.FALSE.toString()));
    static /* synthetic */ Class class$0;

    public Object execute(ExecutionEvent event) throws ExecutionException {
        IWorkbenchPart activePart = HandlerUtil.getActivePartChecked((ExecutionEvent)event);
        PropertyShowInContext context = this.getShowInContext(event);
        try {
            PropertySheet sheet = this.findPropertySheet(event, context);
            sheet.show(context);
            if (activePart instanceof PropertySheet) {
                PropertySheet parent = (PropertySheet)activePart;
                parent.setPinned(true);
            } else if (!sheet.isPinned()) {
                sheet.setPinned(PIN_NEW_PROPERTY_VIEW);
            }
        }
        catch (PartInitException e) {
            throw new ExecutionException("Part could not be initialized", (Throwable)e);
        }
        return null;
    }

    protected PropertyShowInContext getShowInContext(ExecutionEvent event) throws ExecutionException {
        IShowInSource adapter;
        IWorkbenchPart activePart = HandlerUtil.getActivePartChecked((ExecutionEvent)event);
        if (activePart instanceof PropertySheet) {
            PropertySheet sheet = (PropertySheet)activePart;
            return (PropertyShowInContext)sheet.getShowInContext();
        }
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.part.IShowInSource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((adapter = (IShowInSource)activePart.getAdapter((Class)clazz)) != null) {
            ShowInContext showInContext = adapter.getShowInContext();
            return new PropertyShowInContext(activePart, showInContext);
        }
        return new PropertyShowInContext(activePart, HandlerUtil.getShowInSelection((ExecutionEvent)event));
    }

    protected PropertySheet findPropertySheet(ExecutionEvent event, PropertyShowInContext context) throws PartInitException, ExecutionException {
        IWorkbenchPage page = HandlerUtil.getActivePartChecked((ExecutionEvent)event).getSite().getPage();
        String secondaryId = null;
        if (HandlerUtil.getActivePart((ExecutionEvent)event) instanceof PropertySheet) {
            secondaryId = Long.toString(System.currentTimeMillis());
        } else {
            IViewReference[] refs = page.getViewReferences();
            int i = 0;
            while (i < refs.length) {
                IViewReference viewReference = refs[i];
                if ("org.eclipse.ui.views.PropertySheet".equals(viewReference.getId())) {
                    secondaryId = Long.toString(System.currentTimeMillis());
                    PropertySheet sheet = (PropertySheet)viewReference.getView(true);
                    if (!sheet.isPinned() || sheet.isPinned() && sheet.getShowInContext().equals((Object)context)) {
                        secondaryId = sheet.getViewSite().getSecondaryId();
                        break;
                    }
                }
                ++i;
            }
        }
        return (PropertySheet)page.showView("org.eclipse.ui.views.PropertySheet", secondaryId, 1);
    }
}

