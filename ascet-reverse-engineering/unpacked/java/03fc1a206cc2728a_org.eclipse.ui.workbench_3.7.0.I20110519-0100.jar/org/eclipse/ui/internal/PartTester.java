/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IPersistableElement;
import org.eclipse.ui.IPropertyListener;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPart2;

public class PartTester {
    static /* synthetic */ Class class$0;

    private PartTester() {
    }

    public static void testEditor(IEditorPart part) throws Exception {
        PartTester.testWorkbenchPart(part);
        Assert.isTrue((part.getEditorSite() == part.getSite() ? 1 : 0) != 0, (String)"The part's editor site must be the same as the part's site");
        IEditorInput input = part.getEditorInput();
        Assert.isNotNull((Object)input, (String)"The editor input must be non-null");
        PartTester.testEditorInput(input);
        part.isDirty();
        part.isSaveAsAllowed();
        part.isSaveOnCloseNeeded();
    }

    public static void testEditorInput(IEditorInput input) throws Exception {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        input.getAdapter(clazz);
        Assert.isNotNull((Object)input.getName(), (String)"The editor input must have a non-null name");
        Assert.isNotNull((Object)input.getToolTipText(), (String)"The editor input must have a non-null tool tip");
        IPersistableElement persistableElement = input.getPersistable();
        if (persistableElement != null) {
            Assert.isNotNull((Object)persistableElement.getFactoryId(), (String)"The persistable element for the editor input must have a non-null factory id");
        }
    }

    private static void testWorkbenchPart(IWorkbenchPart part) throws Exception {
        IPropertyListener testListener = new IPropertyListener(){

            public void propertyChanged(Object source, int propId) {
            }
        };
        part.addPropertyListener(testListener);
        part.removePropertyListener(testListener);
        Assert.isTrue((boolean)part.equals(part), (String)"A part must be equal to itself");
        Assert.isTrue((!part.equals(new Integer(32)) ? 1 : 0) != 0, (String)"A part must have a meaningful equals method");
        Object partAdapter = part.getAdapter(part.getClass());
        Assert.isTrue((partAdapter == null || partAdapter == part ? 1 : 0) != 0, (String)"A part must adapter to itself or return null");
        Assert.isNotNull((Object)part.getTitle(), (String)"A part's title must be non-null");
        Assert.isNotNull((Object)part.getTitleImage(), (String)"A part's title image must be non-null");
        Assert.isNotNull((Object)part.getTitleToolTip(), (String)"A part's title tool tip must be non-null");
        Assert.isNotNull((Object)part.toString(), (String)"A part's toString method must return a non-null value");
        part.hashCode();
        if (part instanceof IWorkbenchPart2) {
            PartTester.testWorkbenchPart2((IWorkbenchPart2)part);
        }
    }

    private static void testWorkbenchPart2(IWorkbenchPart2 part) throws Exception {
        Assert.isNotNull((Object)part.getContentDescription(), (String)"A part must return a non-null content description");
        Assert.isNotNull((Object)part.getPartName(), (String)"A part must return a non-null part name");
    }

    public static void testView(IViewPart part) throws Exception {
        Assert.isTrue((part.getSite() == part.getViewSite() ? 1 : 0) != 0, (String)"A part's site must be the same as a part's view site");
        PartTester.testWorkbenchPart(part);
    }
}

