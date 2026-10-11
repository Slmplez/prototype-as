/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.misc;

import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.util.Util;

public class UIListenerLogging {
    private static final String LISTENER_EVENTS = "org.eclipse.ui/debug";
    public static final String PAGE_PARTLISTENER_EVENTS = "org.eclipse.ui/listeners/IWorkbenchPage.IPartListener";
    public static final String PAGE_PARTLISTENER2_EVENTS = "org.eclipse.ui/listeners/IWorkbenchPage.IPartListener2";
    private static final String PAGE_PROPERTY_EVENTS = "org.eclipse.ui/listeners/IWorkbenchPage.IPropertyChangeListener";
    private static final String WINDOW_PAGE_EVENTS = "org.eclipse.ui/listeners/IWorkbenchWindow.IPageListener";
    private static final String WINDOW_PERSPECTIVE_EVENTS = "org.eclipse.ui/listeners/IWorkbenchWindow.IPerspectiveListener";
    public static final String WINDOW_PARTLISTENER_EVENTS = "org.eclipse.ui/listeners/IWorkbenchWindow.IPartListener";
    public static final String WINDOW_PARTLISTENER2_EVENTS = "org.eclipse.ui/listeners/IWorkbenchWindow.IPartListener2";
    private static final String PARTREFERENCE_PROPERTY_EVENTS = "org.eclipse.ui/listeners/IWorkbenchPartReference";
    public static final boolean enabled = UIListenerLogging.internal_isEnabled("org.eclipse.ui/debug");
    public static final String PE_ACTIVATED = "partActivated";
    public static final String PE_PART_BROUGHT_TO_TOP = "partBroughtToTop";
    public static final String PE_PART_CLOSED = "partClosed";
    public static final String PE_PART_DEACTIVATED = "partDeactivated";
    public static final String PE_PART_OPENED = "partOpened";
    public static final String PE2_ACTIVATED = "partActivated";
    public static final String PE2_PART_VISIBLE = "partVisible";
    public static final String PE2_PART_HIDDEN = "partHidden";
    public static final String PE2_PART_BROUGHT_TO_TOP = "partBroughtToTop";
    public static final String PE2_PART_CLOSED = "partClosed";
    public static final String PE2_PART_DEACTIVATED = "partDectivated";
    public static final String PE2_PART_OPENED = "partOpened";
    public static final String PE2_PART_INPUT_CHANGED = "partInputChanged";
    public static final String WPE_PAGE_ACTIVATED = "pageActivated";
    public static final String WPE_PAGE_OPENED = "pageOpened";
    public static final String WPE_PAGE_CLOSED = "pageClosed";
    public static final String PLE_PERSP_PRE_DEACTIVATE = "perspectivePreDeactivate";
    public static final String PLE_PERSP_DEACTIVATED = "perspectiveDeactivated";
    public static final String PLE_PERSP_ACTIVATED = "perspectiveActivated";
    public static final String PLE_PERSP_OPENED = "perspectiveOpened";
    public static final String PLE_PERSP_CLOSED = "perspectiveClosed";
    public static final String PLE_PERSP_SAVED_AS = "perspectiveSavedAs";

    private static String getSourceId(Object source) {
        return Util.safeString(Integer.toString(source.hashCode() % 1000));
    }

    private static String getWindowId(IWorkbenchWindow source) {
        return "window " + Util.safeString(Integer.toString(source.hashCode() % 1000));
    }

    private static String getPageId(IWorkbenchPage page) {
        return "page " + Util.safeString(Integer.toString(page.hashCode() % 1000));
    }

    private static String getPerspectiveId(IPerspectiveDescriptor descriptor) {
        return Util.safeString(descriptor.getId());
    }

    public static final void logPageEvent(IWorkbenchWindow window, IWorkbenchPage page, String eventId) {
        if (UIListenerLogging.isEnabled(WINDOW_PAGE_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchWindow.IPageListener " + UIListenerLogging.getWindowId(window) + " " + eventId + " (" + UIListenerLogging.getPageId(page) + ")");
        }
    }

    public static final void logPerspectiveEvent(IWorkbenchWindow window, IWorkbenchPage page, IPerspectiveDescriptor descriptor, String eventId) {
        if (UIListenerLogging.isEnabled(WINDOW_PERSPECTIVE_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchWindow.IPerspectiveListener " + UIListenerLogging.getWindowId(window) + " " + eventId + " (" + UIListenerLogging.getPageId(page) + ", " + UIListenerLogging.getPerspectiveId(descriptor) + ")");
        }
    }

    public static final void logPerspectiveChangedEvent(IWorkbenchWindow window, IWorkbenchPage page, IPerspectiveDescriptor descriptor, IWorkbenchPartReference ref, String changeId) {
        if (UIListenerLogging.isEnabled(WINDOW_PERSPECTIVE_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchWindow.IPerspectiveListener " + UIListenerLogging.getWindowId(window) + " perspectiveChanged (" + UIListenerLogging.getPageId(page) + ", " + UIListenerLogging.getPerspectiveId(descriptor) + ", " + UIListenerLogging.getPartId(ref) + ", " + changeId + ")");
        }
    }

    public static final void logPerspectiveSavedAs(IWorkbenchWindow window, IWorkbenchPage page, IPerspectiveDescriptor oldDescriptor, IPerspectiveDescriptor newDescriptor) {
        if (UIListenerLogging.isEnabled(WINDOW_PERSPECTIVE_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchWindow.IPerspectiveListener " + UIListenerLogging.getWindowId(window) + " " + PLE_PERSP_SAVED_AS + " (" + UIListenerLogging.getPageId(page) + ", " + UIListenerLogging.getPerspectiveId(oldDescriptor) + ", " + UIListenerLogging.getPerspectiveId(newDescriptor) + ")");
        }
    }

    private static String getPartId(IWorkbenchPart part) {
        if (part == null) {
            return "null part";
        }
        return String.valueOf(Util.safeString(part.getTitle())) + " - " + Util.safeString(part.getSite().getId());
    }

    private static String getPartId(IWorkbenchPartReference ref) {
        if (ref == null) {
            return "null part";
        }
        return String.valueOf(Util.safeString(ref.getPartName())) + " - " + Util.safeString(ref.getId());
    }

    public static final void logPartListenerEvent(String sourceType, Object source, IWorkbenchPart part, String eventId) {
        if (UIListenerLogging.isEnabled(sourceType)) {
            System.out.println(String.valueOf(sourceType) + " " + UIListenerLogging.getSourceId(source) + ", " + eventId + "(" + UIListenerLogging.getPartId(part) + ")");
        }
    }

    public static final void logPartListener2Event(String sourceType, Object source, IWorkbenchPartReference part, String eventId) {
        if (UIListenerLogging.isEnabled(sourceType)) {
            System.out.println(String.valueOf(sourceType) + " " + UIListenerLogging.getSourceId(source) + ", " + eventId + "(" + UIListenerLogging.getPartId(part) + ")");
        }
    }

    public static final void logPartListenerEvent(IWorkbenchPage page, IWorkbenchPart part, String eventId) {
        if (UIListenerLogging.isEnabled(PAGE_PARTLISTENER_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchPage.IPartListener page " + Util.safeString(page.getLabel()) + ", " + eventId + "(" + UIListenerLogging.getPartId(part) + ")");
        }
    }

    public static final void logPartListener2Event(IWorkbenchPage page, IWorkbenchPartReference part, String eventId) {
        if (UIListenerLogging.isEnabled(PAGE_PARTLISTENER2_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchPage.IPartListener2 page " + Util.safeString(page.getLabel()) + ", " + eventId + "(" + UIListenerLogging.getPartId(part) + ")");
        }
    }

    public static final void logPagePropertyChanged(IWorkbenchPage page, String changeId, Object oldValue, Object newValue) {
        if (UIListenerLogging.isEnabled(PAGE_PROPERTY_EVENTS)) {
            System.out.println("org.eclipse.ui/listeners/IWorkbenchPage.IPropertyChangeListener page " + Util.safeString(page.getLabel()) + ", " + changeId + " = " + Util.safeString(newValue.toString()) + "( old value = " + newValue.toString() + " )");
        }
    }

    public static final void logPartReferencePropertyChange(IWorkbenchPartReference ref, int changeId) {
        if (UIListenerLogging.isEnabled(PARTREFERENCE_PROPERTY_EVENTS)) {
            String eventDescription;
            switch (changeId) {
                case 1: {
                    eventDescription = "title";
                    break;
                }
                case 257: {
                    eventDescription = "dirty";
                    break;
                }
                case 258: {
                    eventDescription = "input";
                    break;
                }
                case 260: {
                    eventDescription = "part_name";
                    break;
                }
                case 261: {
                    eventDescription = "content_description";
                    break;
                }
                default: {
                    eventDescription = "unknown event id = " + changeId;
                }
            }
            System.out.println("org.eclipse.ui/listeners/IWorkbenchPartReference " + UIListenerLogging.getPartId(ref) + ", property " + eventDescription);
        }
    }

    private static boolean isEnabled(String eventName) {
        return enabled && UIListenerLogging.internal_isEnabled(eventName);
    }

    private static boolean internal_isEnabled(String eventName) {
        String option = Platform.getDebugOption((String)eventName);
        return option != null && !option.equalsIgnoreCase("false") && !option.equalsIgnoreCase("-1");
    }
}

